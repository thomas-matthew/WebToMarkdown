import asyncio
import argparse
from playwright.async_api import async_playwright
from bs4 import BeautifulSoup
from markdownify import markdownify as md

async def fetch_page_content(url: str) -> str:
    """
    Fetches the given URL using a headless browser, waits for the
    JavaScript to render, and returns the full HTML content.
    """
    print(f"-> Fetching {url}...")
    async with async_playwright() as p:
        browser = await p.chromium.launch()
        page = await browser.new_page()
        try:
            await page.goto(url, wait_until="networkidle", timeout=15000)
            # Wait for the main content to be loaded, just in case
            await page.wait_for_selector("main", timeout=10000)
            content = await page.content()
            return content
        except Exception as e:
            print(f"Error fetching page {url}: {e}")
            return ""
        finally:
            await browser.close()

def extract_and_convert(html: str, selector: str = "main") -> str:
    """
    Parses the HTML, finds the main content element,
    and converts it to Markdown.
    """
    if not html:
        return ""
        
    print(f"-> Parsing content and finding '{selector}'...")
    soup = BeautifulSoup(html, "html.parser")
    
    # Find the main content area
    main_content = soup.find(selector)
    
    if not main_content:
        print(f"Warning: Could not find '{selector}' element.")
        # Fallback to body if main isn't found
        main_content = soup.find("body")
        if not main_content:
            return "Error: Could not find content."

    # Convert the selected HTML to Markdown
    # heading_style="ATX" uses '#' for headers
    print("-> Converting HTML to Markdown...")
    markdown_content = md(str(main_content), heading_style="ATX")
    
    return markdown_content

def save_markdown(content: str, output_file: str):
    """Saves the markdown content to a file."""
    try:
        with open(output_file, "w", encoding="utf-8") as f:
            f.write(content)
        print(f"\nSuccess! Content saved to {output_file}")
    except IOError as e:
        print(f"Error saving file {output_file}: {e}")

async def main():
    """
    Main entry point for the script.
    Parses arguments, fetches content, converts, and saves.
    """
    parser = argparse.ArgumentParser(description="Convert a web page to Markdown.")
    parser.add_argument("url", help="The URL of the web page to convert.")
    parser.add_argument("-o", "--output", dest="output_file",
                        required=True, help="The path to the output Markdown file.")
    
    args = parser.parse_args()
    
    html_content = await fetch_page_content(args.url)
    
    if html_content:
        markdown_text = extract_and_convert(html_content)
        save_markdown(markdown_text, args.output_file)
    else:
        print(f"Failed to retrieve content for {args.url}")

def cli():
    """Console script entry point."""
    asyncio.run(main())

if __name__ == "__main__":
    cli()
