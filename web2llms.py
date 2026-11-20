"""Fetch a JavaScript-rendered page and save its main content as Markdown."""

import argparse
import asyncio
import re
import sys
from pathlib import Path
from urllib.parse import urljoin

from bs4 import BeautifulSoup, Tag
from markdownify import markdownify as md
from playwright.async_api import TimeoutError as PlaywrightTimeoutError
from playwright.async_api import async_playwright

DEFAULT_ATTEMPTS: int = 3
PAGE_TIMEOUT_MS: int = 45_000
# Doc sites with analytics may never go fully idle, so this wait is best-effort.
IDLE_TIMEOUT_MS: int = 10_000

# Page chrome that sits inside <main> on the documentation sites we convert.
CLUTTER_SELECTORS: str = ", ".join([
    "nav", "footer", "script", "style", "noscript", "svg", "form",
    "[role='navigation']", "[aria-hidden='true']", "a.headerlink",
])
CONTROL_LABEL: re.Pattern[str] = re.compile(
    r"^(copy|expand|collapse|show (more|less)|see more|more actions|scroll to top)\b",
    re.IGNORECASE,
)
BLOCK_TAGS: list[str] = ["div", "p", "section", "ul", "ol", "table", "pre",
                         "h1", "h2", "h3", "h4", "h5", "h6"]


class FetchError(RuntimeError):
    """Raised when a page cannot be fetched after all retries."""


class ContentError(RuntimeError):
    """Raised when a fetched page has no content worth saving."""


async def _fetch_once(url: str) -> str:
    async with async_playwright() as playwright:
        browser = await playwright.chromium.launch()
        try:
            page = await browser.new_page()
            await page.goto(url, wait_until="domcontentloaded", timeout=PAGE_TIMEOUT_MS)
            await page.wait_for_selector("main", state="attached", timeout=PAGE_TIMEOUT_MS)
            try:
                await page.wait_for_load_state("networkidle", timeout=IDLE_TIMEOUT_MS)
            except PlaywrightTimeoutError:
                pass
            return await page.content()
        finally:
            await browser.close()


async def fetch_page_content(url: str, attempts: int = DEFAULT_ATTEMPTS) -> str:
    """Return the rendered HTML of ``url``, retrying with backoff.

    Raises FetchError if every attempt fails.
    """
    last_error: Exception | None = None
    for attempt in range(1, attempts + 1):
        print(f"-> Fetching {url} (attempt {attempt}/{attempts})...")
        try:
            return await _fetch_once(url)
        except Exception as exc:  # Playwright raises several unrelated types.
            last_error = exc
            print(f"   Attempt {attempt} failed for {url}: {exc}", file=sys.stderr)
            if attempt < attempts:
                await asyncio.sleep(2 ** attempt)
    raise FetchError(f"Could not fetch {url} after {attempts} attempts") from last_error


def _remove_clutter(content: Tag) -> None:
    for unwanted in content.select(CLUTTER_SELECTORS):
        unwanted.decompose()
    # Sidebars are <aside> elements next to the article. Snowflake also uses
    # <aside> for callouts (notes, deprecations) inside the article: keep those.
    for aside in content.find_all("aside"):
        if aside.find_parent("article") is None:
            aside.decompose()
    for button in content.find_all("button"):
        label: str = str(button.get("aria-label") or button.get_text(" ", strip=True))
        if CONTROL_LABEL.match(label):
            button.decompose()
        else:
            button.unwrap()


def _resolve_links(content: Tag, base_url: str) -> None:
    for anchor in content.find_all("a", href=True):
        anchor["href"] = urljoin(base_url, str(anchor["href"]))
    for image in content.find_all("img", src=True):
        image["src"] = urljoin(base_url, str(image["src"]))


def _unwrap_card_links(soup: BeautifulSoup, content: Tag) -> None:
    """Move links that wrap whole cards onto the card's heading.

    Otherwise Markdown gets one giant link spanning headings and paragraphs.
    """
    for anchor in content.find_all("a", href=True):
        if anchor.find(BLOCK_TAGS) is None:
            continue
        heading: Tag | None = anchor.find(["h1", "h2", "h3", "h4", "h5", "h6"])
        if heading is not None:
            link: Tag = soup.new_tag("a", href=str(anchor["href"]))
            link.string = heading.get_text(" ", strip=True)
            heading.clear()
            heading.append(link)
        anchor.name = "div"
        del anchor["href"]


def extract_and_convert(html: str, url: str | None = None, selector: str = "main") -> str:
    """Convert the page's main content to Markdown, without site chrome.

    Raises ContentError if the page yields no text.
    """
    if not html.strip():
        raise ContentError("Empty HTML")

    soup: BeautifulSoup = BeautifulSoup(html, "html.parser")
    content: Tag | None = soup.find(selector)
    if content is None:
        print(f"Warning: Could not find '{selector}' element; using <body>.")
        content = soup.find("body")
    if content is None:
        raise ContentError("Page has no <main> or <body> element")

    _remove_clutter(content)
    _unwrap_card_links(soup, content)
    if url:
        _resolve_links(content, url)

    markdown: str = md(str(content), heading_style="ATX")
    markdown = re.sub(r"\n{3,}", "\n\n", markdown).strip()
    if not markdown:
        raise ContentError("Page content converted to empty Markdown")
    return markdown + "\n"


async def main() -> int:
    parser = argparse.ArgumentParser(description="Convert a web page to Markdown.")
    parser.add_argument("url", help="The URL of the web page to convert.")
    parser.add_argument("-o", "--output", dest="output_file", type=Path,
                        required=True, help="The path to the output Markdown file.")
    args = parser.parse_args()
    url: str = args.url
    output_file: Path = args.output_file

    try:
        html: str = await fetch_page_content(url)
        markdown: str = extract_and_convert(html, url)
    except (FetchError, ContentError) as exc:
        print(f"Error: {exc}", file=sys.stderr)
        return 1

    output_file.write_text(markdown, encoding="utf-8")
    print(f"Saved {output_file}")
    return 0


def cli() -> None:
    """Console script entry point."""
    raise SystemExit(asyncio.run(main()))


if __name__ == "__main__":
    cli()
