import asyncio
import sys
from pathlib import Path

import pytest

import web2llms
from web2llms import ContentError, extract_and_convert


def test_extract_and_convert_uses_main_content() -> None:
    html = """
    <html>
      <body>
        <nav>Ignore navigation</nav>
        <main><h1>Guide</h1><p>Use this content.</p></main>
      </body>
    </html>
    """

    markdown = extract_and_convert(html)

    assert "# Guide" in markdown
    assert "Use this content." in markdown
    assert "Ignore navigation" not in markdown


def test_extract_and_convert_falls_back_to_body() -> None:
    html = "<html><body><h1>Fallback</h1><p>No main element.</p></body></html>"

    markdown = extract_and_convert(html)

    assert "# Fallback" in markdown
    assert "No main element." in markdown


@pytest.mark.parametrize("html", ["", "<html><body><main><nav>Only nav</nav></main></body></html>"])
def test_extract_and_convert_rejects_empty_content(html: str) -> None:
    with pytest.raises(ContentError):
        extract_and_convert(html)


def test_extract_and_convert_removes_page_chrome_inside_main() -> None:
    html = """<main>
      <nav class="breadcrumbs"><a href="/python">Python</a> Graphs</nav>
      <h1>Graphs<a class="headerlink" href="#graphs">¶</a></h1>
      <button aria-label="Copy page as markdown">Copy page</button>
      <button>v1.0 (latest)</button>
      <svg><text>icon</text></svg>
      <p>Real content.</p>
      <div><button>Copy code</button><pre><code>x = 1</code></pre></div>
      <aside>On this page</aside>
      <footer>Was this page helpful?</footer>
    </main>"""

    markdown = extract_and_convert(html, "https://docs.example.com/en/graphs/")

    assert markdown.startswith("# Graphs\n")
    assert "Real content." in markdown
    assert "v1.0 (latest)" in markdown
    assert "x = 1" in markdown
    for noise in ["Python", "¶", "Copy", "icon", "On this page", "helpful"]:
        assert noise not in markdown


def test_callouts_inside_article_are_kept_but_sidebars_removed() -> None:
    html = """<main>
      <aside class="toc">On this page</aside>
      <article>
        <h1>REST API</h1>
        <aside class="sidebar newfeat"><p>Transition to Cortex Agents.</p></aside>
        <p>Body.</p>
        <button>Scroll to top</button>
      </article>
    </main>"""

    markdown = extract_and_convert(html)

    assert "Transition to Cortex Agents." in markdown
    assert "Body." in markdown
    assert "On this page" not in markdown
    assert "Scroll to top" not in markdown


def test_card_links_move_onto_headings_and_become_absolute() -> None:
    html = """<main><h1>Graphs</h1>
      <a href="/python/langgraph/StateGraph"><span>Class</span>
        <h3>StateGraph</h3><p>A graph with shared state.</p></a>
      <p>See <a href="../store/">the store</a>.</p>
      <img src="/img/a.png" alt="diagram">
    </main>"""

    markdown = extract_and_convert(html, "https://reference.example.com/python/langgraph/graphs/")

    assert "### [StateGraph](https://reference.example.com/python/langgraph/StateGraph)" in markdown
    assert "A graph with shared state." in markdown
    assert "[the store](https://reference.example.com/python/langgraph/store/)" in markdown
    assert "![diagram](https://reference.example.com/img/a.png)" in markdown
    assert "[Class" not in markdown


def test_fetch_retries_then_raises(monkeypatch: pytest.MonkeyPatch) -> None:
    calls: list[str] = []

    async def failing_fetch(url: str) -> str:
        calls.append(url)
        raise TimeoutError("timed out")

    async def no_sleep(seconds: float) -> None:
        return None

    monkeypatch.setattr(web2llms, "_fetch_once", failing_fetch)
    monkeypatch.setattr(asyncio, "sleep", no_sleep)

    with pytest.raises(web2llms.FetchError):
        asyncio.run(web2llms.fetch_page_content("https://example.com", attempts=3))
    assert calls == ["https://example.com"] * 3


def test_fetch_succeeds_after_a_retry(monkeypatch: pytest.MonkeyPatch) -> None:
    results: list[str | Exception] = [TimeoutError("timed out"), "<main>ok</main>"]

    async def flaky_fetch(url: str) -> str:
        result = results.pop(0)
        if isinstance(result, Exception):
            raise result
        return result

    async def no_sleep(seconds: float) -> None:
        return None

    monkeypatch.setattr(web2llms, "_fetch_once", flaky_fetch)
    monkeypatch.setattr(asyncio, "sleep", no_sleep)

    assert asyncio.run(web2llms.fetch_page_content("https://example.com")) == "<main>ok</main>"


@pytest.mark.parametrize("html", [None, "<main></main>"])
def test_cli_exits_non_zero_and_writes_nothing_on_failure(
    html: str | None, tmp_path: Path, monkeypatch: pytest.MonkeyPatch,
) -> None:
    async def fake_fetch(url: str) -> str:
        if html is None:
            raise web2llms.FetchError("Could not fetch")
        return html

    output: Path = tmp_path / "page.md"
    monkeypatch.setattr(web2llms, "fetch_page_content", fake_fetch)
    monkeypatch.setattr(sys, "argv", ["web2llms.py", "https://example.com", "-o", str(output)])

    with pytest.raises(SystemExit) as exit_info:
        web2llms.cli()
    assert exit_info.value.code == 1
    assert not output.exists()


def test_cli_writes_markdown_on_success(tmp_path: Path, monkeypatch: pytest.MonkeyPatch) -> None:
    async def fake_fetch(url: str) -> str:
        return "<main><h1>Done</h1></main>"

    output: Path = tmp_path / "page.md"
    monkeypatch.setattr(web2llms, "fetch_page_content", fake_fetch)
    monkeypatch.setattr(sys, "argv", ["web2llms.py", "https://example.com", "-o", str(output)])

    with pytest.raises(SystemExit) as exit_info:
        web2llms.cli()
    assert exit_info.value.code == 0
    assert output.read_text() == "# Done\n"
