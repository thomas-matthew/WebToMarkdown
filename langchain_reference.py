"""Generate clean LangChain references with optional class method details."""

import argparse
import asyncio
import re
import textwrap
from pathlib import Path
from urllib.parse import urljoin, urlsplit

import httpx
from bs4 import BeautifulSoup, Tag
from markdown import markdown  # type: ignore[import-untyped]
from markdownify import markdownify

from web2llms import fetch_page_content


def normalize_docstrings(content: str) -> str:
    """Turn reStructuredText code directives into fenced Markdown code."""
    lines: list[str] = content.splitlines()
    result: list[str] = []
    index: int = 0
    in_fence: bool = False
    while index < len(lines):
        line: str = lines[index]
        if line.startswith("```"):
            in_fence = not in_fence
        directive: re.Match[str] | None = re.fullmatch(
            r"\s*\.\. code-block::\s*(\w+)\s*", line
        )
        if directive and not in_fence:
            index += 1
            block: list[str] = []
            while index < len(lines):
                next_line: str = lines[index]
                if next_line and not next_line.startswith((" ", "\t")) and (
                    next_line.startswith(("**", "##", ".. code-block::", "See ", "Key init args"))
                    or (block and block[-1] == "" and not next_line.startswith(("from ", "import "))
                        and not any(char in next_line for char in "=()[]{}"))
                ):
                    break
                block.append(next_line)
                index += 1
            result.extend([
                f"```{directive.group(1)}",
                textwrap.dedent("\n".join(block)).strip("\n"),
                "```", "",
            ])
            continue
        if not in_fence and line.startswith("Key init args"):
            result.extend([line, "", "```text"])
            index += 1
            block = []
            while index < len(lines) and (not lines[index] or lines[index].startswith((" ", "\t"))):
                block.append(lines[index])
                index += 1
            result.extend([textwrap.dedent("\n".join(block)).strip("\n"), "```", ""])
            continue
        result.append(line)
        index += 1
    return "\n".join(result).strip() + "\n"


def description_from_markdown(content: str) -> str | None:
    """Extract the original docstring, preserving indentation lost by HTML."""
    match: re.Match[str] | None = re.search(
        r"^## Description\s*\n(.*?)(?=^## (?:Extends|Properties|Methods)\s*$|^---\s*$|\Z)",
        content, re.MULTILINE | re.DOTALL,
    )
    return normalize_docstrings(match.group(1)) if match else None


def clean_reference_html(html: str, native_markdown: str, url: str) -> str:
    """Keep reference content, repair its docstring, and resolve online links."""
    soup: BeautifulSoup = BeautifulSoup(html, "html.parser")
    main: Tag | None = soup.find("main")
    if main is None or main.find("h1") is None:
        raise ValueError(f"No rendered reference content found for {url}")
    content: Tag = main.select_one(".flex-1.min-w-0.space-y-8") or main
    for unwanted in content.select(
        "nav, aside, script, style, .copy-tooltip, [role='navigation'], [aria-hidden='true']"
    ):
        unwanted.decompose()
    for button in content.find_all("button"):
        if "copy" in str(button.get("aria-label", "")).lower():
            button.decompose()
        else:
            button.unwrap()
    description: str | None = description_from_markdown(native_markdown)
    # The first markdown-content is the short summary; the second is the docstring.
    description_nodes: list[Tag] = list(content.select(".markdown-content"))
    if description and len(description_nodes) > 1:
        description_node = description_nodes[1]
        replacement: BeautifulSoup = BeautifulSoup(
            markdown(description, extensions=["fenced_code", "tables"]), "html.parser"
        )
        description_node.clear()
        for child in list(replacement.contents):
            description_node.append(child.extract())
    for span in content.find_all("span"):
        if span.get_text(strip=True) in {"A", "M"}:
            span.decompose()
    # Attribute cards can contain code examples: link only their headings,
    # rather than wrapping paragraphs and fenced code in one Markdown link.
    for card in content.select("a[id^='member-']"):
        body: Tag | None = card.find("div", recursive=False)
        title: Tag | None = body.find("div", recursive=False) if body else None
        if title is None:
            continue
        heading: Tag = soup.new_tag("h3")
        link: Tag = soup.new_tag("a", href=str(card.get("href", "")))
        link.string = title.get_text()
        heading.append(link)
        title.replace_with(heading)
        badge: Tag | None = card.find("span", recursive=False)
        if badge:
            badge.decompose()
        card.name = "div"
        del card["href"]
    for paragraph in content.find_all("p"):
        if re.fullmatch(r"\.\. code-block::\s*\w+", paragraph.get_text(strip=True)):
            paragraph.decompose()
    for anchor in content.find_all("a", href=True):
        anchor["href"] = urljoin(url, str(anchor["href"]))
        # Inherited member badges otherwise become a single concatenated line.
        if anchor.get_text(strip=True) and not anchor.find(["p", "div"]):
            anchor.insert_after(soup.new_string(" "))
    for image in content.find_all("img", src=True):
        image["src"] = urljoin(url, str(image["src"]))
    result: str = markdownify(
        str(content), heading_style="ATX", code_language_callback=code_language
    )
    return f"{result.strip()}\n\nSource: [{url}]({url})\n"


def code_language(element: Tag) -> str:
    code: Tag | None = element.find("code")
    if code is not None:
        classes = code.get("class")
        for class_name in classes if isinstance(classes, list) else []:
            if str(class_name).startswith("language-"):
                return str(class_name).removeprefix("language-")
    return "python"


def method_urls(content: str, url: str) -> list[str]:
    """Only expand methods belonging to this class, not inherited members."""
    match: re.Match[str] | None = re.search(
        r"^## Methods\s*\n(.*?)(?=^## |^---\s*$|\Z)",
        content, re.MULTILINE | re.DOTALL,
    )
    if not match:
        return []
    prefix: str = url.split("#", 1)[0].rstrip("/") + "/"
    links: list[str] = re.findall(r"\]\(([^)]+)\)", match.group(1))
    return list(dict.fromkeys(
        resolved for link in links
        if (resolved := urljoin(url, link)).startswith(prefix)
        and "/" not in resolved[len(prefix):]
    ))


async def fetch_markdown(client: httpx.AsyncClient, url: str) -> str:
    response: httpx.Response = await client.get(url, headers={"Accept": "text/markdown"})
    response.raise_for_status()
    if "text/markdown" not in response.headers.get("content-type", ""):
        raise ValueError(f"Expected native Markdown from {url}")
    if not response.text.lstrip().startswith("# "):
        raise ValueError(f"Invalid native reference document from {url}")
    return response.text


async def generate_reference(url: str, include_methods: bool = False) -> str:
    if urlsplit(url).hostname != "reference.langchain.com":
        raise ValueError("This generator supports reference.langchain.com only")
    async with httpx.AsyncClient(follow_redirects=True, timeout=60.0) as client:
        native: str = await fetch_markdown(client, url)
        html: str = await fetch_page_content(url)
        result: str = clean_reference_html(html, native, url)
        if include_methods:
            # Sequential requests keep the overall shell concurrency bounded.
            for method_url in method_urls(native, url):
                method: str = normalize_docstrings(await fetch_markdown(client, method_url))
                # Nest method sections under the class document, leaving code untouched.
                nested: list[str] = []
                in_fence: bool = False
                for line in method.splitlines():
                    if line.startswith("```"):
                        in_fence = not in_fence
                    if not in_fence and re.match(r"^#{1,5} ", line):
                        line = "#" + line
                    nested.append(line)
                result += "\n---\n\n" + "\n".join(nested) + "\n"
        return result


async def main() -> None:
    parser: argparse.ArgumentParser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("url")
    parser.add_argument("-o", "--output", type=Path, required=True)
    parser.add_argument("--include-methods", action="store_true")
    args: argparse.Namespace = parser.parse_args()
    result: str = await generate_reference(args.url, args.include_methods)
    args.output.write_text(result, encoding="utf-8")


if __name__ == "__main__":
    asyncio.run(main())
