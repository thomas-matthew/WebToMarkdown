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
- `reference/`, `release-notes/`, `output/` - generated or curated documentation artifacts.
- `tests/` - pytest coverage for the core extraction behavior.

## Setup

```bash
uv sync
uv run playwright install chromium
```

The browser install is required only for live page fetching through `web2llms.py`.

## Usage

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
