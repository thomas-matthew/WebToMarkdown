from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parents[1]
SCRIPT_PATH = PROJECT_ROOT / "create_reference_docs.sh"

OPENAI_CORE_CONCEPTS = {
    "https://developers.openai.com/api/docs/guides/text.md": "docs/openai/core-concepts/text.md",
    "https://developers.openai.com/api/docs/guides/code-generation.md": "docs/openai/core-concepts/code-generation.md",
    "https://developers.openai.com/api/docs/guides/images-vision.md": "docs/openai/core-concepts/images-vision.md",
    "https://developers.openai.com/api/docs/guides/audio.md": "docs/openai/core-concepts/audio.md",
    "https://developers.openai.com/api/docs/guides/structured-outputs.md": "docs/openai/core-concepts/structured-outputs.md",
    "https://developers.openai.com/api/docs/guides/function-calling.md": "docs/openai/core-concepts/function-calling.md",
    "https://developers.openai.com/api/docs/guides/migrate-to-responses.md": "docs/openai/core-concepts/migrate-to-responses.md",
    "https://developers.openai.com/api/docs/guides/tools.md": "docs/openai/core-concepts/tools.md",
}


def test_openai_core_concepts_use_direct_markdown_downloads() -> None:
    script = SCRIPT_PATH.read_text(encoding="utf-8")

    for source_url, output_path in OPENAI_CORE_CONCEPTS.items():
        assert source_url.endswith(".md")
        assert output_path.startswith("docs/openai/core-concepts/")
        assert f'"{source_url} | {output_path}"' in script
