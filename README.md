# WebToMarkdown

WebToMarkdown is a small Python toolkit for converting rendered web pages and Markdown files into documentation artifacts that are easier to review, archive, and use in LLM/RAG workflows.

## What It Does

- Fetches JavaScript-rendered pages with Playwright.
- Extracts the main page content and converts it to Markdown.
- Converts Markdown files to styled HTML for sharing or review.
- Includes reference-output examples for public documentation sources.

## Project Structure

- `web2llms.py` - fetch a web page and save selected content as Markdown.
- `md2html.py` - convert Markdown to styled HTML and extract embedded images.
- `release_notes.py` - collect feature-focused release notes from selected GitHub projects.
- `context/` - all generated documentation: `reference/`, `docs/`, and
  `release-notes/`, plus a hand-written `CLAUDE.md` that tells an LLM where
  each topic lives. Point an offline LLM at this folder.
- `output/` - one-off pages converted by hand with `web2llms.py`.
- `tests/` - pytest coverage for the core extraction behavior.

## Setup

```bash
uv sync
uv run playwright install chromium
```

The browser install is required for live page fetching.

## Usage

Regenerate the configured documentation with the existing workflow:

```bash
./create_reference_docs.sh
```

This remains the entrypoint for reference generation. For ChatAnthropic,
ChatBedrock, and ChatBedrockConverse, it automatically calls an internal
Python helper to remove navigation clutter, resolve source links, preserve
docstring examples, and include documentation for the class's own methods.
Every page is built into a git-ignored `context/.staging/` folder first.
Up to 8 pages are fetched at a time; set `CONCURRENCY` to change that. Pages
fetched by the browser are retried up to 3 times, and `.md` downloads are
retried by `curl`. When everything has run, the staged folders replace
`context/reference/`, `context/docs/`, and `context/release-notes/`, so
entries removed from the list don't leave stale files. `context/CLAUDE.md` is
never touched, so update it by hand when you add a new source or topic. If a
page still fails, its previous version is kept, the failure is listed at the
end, and the script exits with status 1 after committing. The separate
`output/` folder is preserved. The workflow also generates release notes,
commits changes, and pushes them.

To regenerate without committing or pushing:

```bash
NO_PUSH=1 ./create_reference_docs.sh
```

To use more parallel fetches:

```bash
CONCURRENCY=12 ./create_reference_docs.sh
```

Convert a rendered web page to Markdown:

```bash
uv run python web2llms.py https://example.com -o output/example.md
```

Convert Markdown to HTML:

```bash
uv run python md2html.py output/example.md -o output/example.html
```

Run tests:

```bash
uv run python -m pytest
```

## Notes

This repository is intended for public, portfolio-friendly examples. Do not commit private source material, proprietary documentation, credentials, or generated content from non-public systems.
