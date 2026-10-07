import asyncio
import shlex
import subprocess
from pathlib import Path

import httpx
import pytest

import langchain_reference as reference


URL: str = "https://reference.langchain.com/python/example/ChatExample"
NATIVE: str = """# ChatExample

## Description

**Instantiate:**

.. code-block:: python

from example import ChatExample

model = ChatExample(
    max_tokens=None,
)

**Invoke:**

.. code-block:: python

    model.invoke("hello")

See `invoke` for more.

## Properties

- `max_tokens`

## Methods

- [`bind_tools()`](/python/example/ChatExample/bind_tools)
- [`bind_tools()`](/python/example/ChatExample/bind_tools)
- [`invoke()`](/python/core/BaseChatModel/invoke)

---
"""
HTML: str = """<main>
<div class="flex-1 min-w-0 space-y-8">
  <button>v1.0 (latest)</button><h1>ChatExample</h1>
  <div class="markdown-content"><p>Summary.</p></div>
  <div aria-hidden="true">Copy</div>
  <div class="copy-tooltip">Copy</div>
  <button aria-label="Copy code">Copy</button>
  <div class="markdown-content"><p>model = ChatExample(max_tokens=None)</p></div>
  <h2>Attributes</h2>
  <p>Maximum tokens to generate.</p>
  <a id="member-options" href="/python/example/ChatExample/options">
    <span>attribute</span><div><div><span>options</span><span>: dict</span></div>
    <div><p>.. code-block:: python</p><pre><code>options = {"key": "value"}</code></pre></div></div>
  </a>
  <a href="/python/example/ChatExample/max_tokens"><span>A</span>max_tokens</a>
  <a href="/python/core/BaseChatModel/invoke"><span>M</span>invoke</a>
  <aside>Duplicate navigation</aside>
</div>
<aside>On This Page</aside>
</main>"""


def test_clean_reference_preserves_descriptions_and_repairs_examples() -> None:
    result = reference.clean_reference_html(HTML, NATIVE, URL)
    assert "Summary." in result
    assert "Maximum tokens to generate." in result
    assert "v1.0 (latest)" in result
    assert "```python\nfrom example import ChatExample" in result
    assert "    max_tokens=None," in result
    assert "```python\nmodel.invoke" in result
    assert "See `invoke` for more." in result
    assert '```python\noptions = {"key": "value"}\n```' in result
    assert "### [options: dict]" in result
    assert "https://reference.langchain.com/python/core/BaseChatModel/invoke" in result
    for noise in ["Copy", "On This Page", "Duplicate navigation", ".. code-block::", "](/"]:
        assert noise not in result


def test_native_code_and_comments_are_preserved() -> None:
    content = '```python\n# Example\n    .. code-block:: text\nprint("Copy")\n```\n'
    assert reference.normalize_docstrings(content) == content


def test_init_arguments_keep_their_structure() -> None:
    content = """Key init args — client params:
    region_name: str
        AWS region.

See full list.
"""
    result = reference.normalize_docstrings(content)
    assert "```text\nregion_name: str\n    AWS region.\n```" in result
    assert "```\n\nSee full list." in result


def test_expand_only_unique_direct_class_methods() -> None:
    assert reference.method_urls(NATIVE, URL) == [URL + "/bind_tools"]


def test_missing_rendered_content_fails() -> None:
    with pytest.raises(ValueError, match="No rendered reference content"):
        reference.clean_reference_html("<main>Loading...</main>", NATIVE, URL)


def test_generate_reference_includes_method_signature_and_parameters(
    monkeypatch: pytest.MonkeyPatch,
) -> None:
    requested: list[str] = []

    def handler(request: httpx.Request) -> httpx.Response:
        requested.append(str(request.url))
        body = NATIVE if str(request.url) == URL else """# bind_tools

## Signature

```python
bind_tools(tools: list) -> Runnable
```

## Parameters

| Name | Description |
|------|-------------|
| tools | Tools to bind. |
"""
        return httpx.Response(200, text=body, headers={"content-type": "text/markdown"})

    client = httpx.AsyncClient(transport=httpx.MockTransport(handler))
    monkeypatch.setattr(httpx, "AsyncClient", lambda **kwargs: client)

    async def fetch_html(url: str) -> str:
        assert url == URL
        return HTML

    monkeypatch.setattr(reference, "fetch_page_content", fetch_html)
    result = asyncio.run(reference.generate_reference(URL, include_methods=True))
    assert requested == [URL, URL + "/bind_tools"]
    assert "## bind_tools" in result
    assert "### Parameters" in result
    assert "bind_tools(tools: list) -> Runnable" in result
    assert "| tools | Tools to bind. |" in result


@pytest.mark.parametrize("status,content_type,body", [
    (404, "text/markdown", "# Not found"),
    (200, "text/html", "<html>Error</html>"),
    (200, "text/markdown", "Unexpected response"),
])
def test_fetch_rejects_failed_or_invalid_sources(
    status: int, content_type: str, body: str,
) -> None:
    async def check() -> None:
        transport = httpx.MockTransport(lambda request: httpx.Response(
            status, text=body, headers={"content-type": content_type}
        ))
        async with httpx.AsyncClient(transport=transport) as client:
            with pytest.raises((httpx.HTTPStatusError, ValueError)):
                await reference.fetch_markdown(client, URL)

    asyncio.run(check())


def test_shell_entrypoint_routes_reference_jobs(tmp_path: Path) -> None:
    script: Path = Path(__file__).resolve().parents[1] / "create_reference_docs.sh"
    definitions: str = script.read_text().split("# --- EXECUTION START ---", 1)[0]
    log: Path = tmp_path / "calls.txt"
    commands: list[str] = [
        definitions,
        f"OUTPUT_DIR={shlex.quote(str(tmp_path))}",
        'python() { printf "%s\\n" "$*" >> ' + shlex.quote(str(log)) + '; }',
    ]
    for name in ["ChatAnthropic", "ChatBedrock", "ChatBedrockConverse"]:
        item: str = f"{URL} | reference/integrations/{name}.md"
        commands.append(f"process_url {shlex.quote(item)}")
    commands.append(f"process_url {shlex.quote('https://example.com | reference/example.md')}")
    subprocess.run(["bash", "-c", "\n".join(commands)], check=True, capture_output=True)
    calls: list[str] = log.read_text().splitlines()
    assert len(calls) == 4
    assert all(call.startswith("langchain_reference.py ") and call.endswith("--include-methods")
               for call in calls[:3])
    assert calls[3].startswith("web2llms.py https://example.com ")
