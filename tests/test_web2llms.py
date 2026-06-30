from web2llms import extract_and_convert


def test_extract_and_convert_uses_main_content():
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


def test_extract_and_convert_falls_back_to_body():
    html = "<html><body><h1>Fallback</h1><p>No main element.</p></body></html>"

    markdown = extract_and_convert(html)

    assert "# Fallback" in markdown
    assert "No main element." in markdown


def test_extract_and_convert_returns_empty_for_empty_html():
    assert extract_and_convert("") == ""
