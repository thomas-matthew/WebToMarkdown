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

OPENAI_AGENTS_SDK = {
    "https://developers.openai.com/api/docs/guides/agents.md": "docs/openai/agents-sdk/overview.md",
    "https://developers.openai.com/api/docs/guides/agents/quickstart.md": "docs/openai/agents-sdk/quickstart.md",
    "https://developers.openai.com/api/docs/guides/agents/define-agents.md": "docs/openai/agents-sdk/define-agents.md",
    "https://developers.openai.com/api/docs/guides/agents/models.md": "docs/openai/agents-sdk/models.md",
    "https://developers.openai.com/api/docs/guides/agents/running-agents.md": "docs/openai/agents-sdk/running-agents.md",
    "https://developers.openai.com/api/docs/guides/agents/sandboxes.md": "docs/openai/agents-sdk/sandboxes.md",
    "https://developers.openai.com/api/docs/guides/agents/orchestration.md": "docs/openai/agents-sdk/orchestration.md",
    "https://developers.openai.com/api/docs/guides/agents/guardrails-approvals.md": "docs/openai/agents-sdk/guardrails-approvals.md",
    "https://developers.openai.com/api/docs/guides/agents/results.md": "docs/openai/agents-sdk/results.md",
    "https://developers.openai.com/api/docs/guides/agents/integrations-observability.md": "docs/openai/agents-sdk/integrations-observability.md",
    "https://developers.openai.com/api/docs/guides/agent-evals.md": "docs/openai/agents-sdk/agent-evals.md",
    "https://developers.openai.com/api/docs/guides/voice-agents.md": "docs/openai/agents-sdk/voice-agents.md",
}


def test_openai_core_concepts_use_direct_markdown_downloads() -> None:
    script = SCRIPT_PATH.read_text(encoding="utf-8")

    for source_url, output_path in OPENAI_CORE_CONCEPTS.items():
        assert source_url.endswith(".md")
        assert output_path.startswith("docs/openai/core-concepts/")
        assert f'"{source_url} | {output_path}"' in script


def test_openai_agents_sdk_uses_direct_markdown_downloads() -> None:
    script = SCRIPT_PATH.read_text(encoding="utf-8")

    for source_url, output_path in OPENAI_AGENTS_SDK.items():
        assert source_url.endswith(".md")
        assert output_path.startswith("docs/openai/agents-sdk/")
        assert f'"{source_url} | {output_path}"' in script


def test_reference_docs_script_processes_urls_in_parallel_batches() -> None:
    script = SCRIPT_PATH.read_text(encoding="utf-8")

    assert 'CONCURRENCY="${CONCURRENCY:-4}"' in script
    assert "process_url() {" in script
    assert "wait_for_pending_jobs() {" in script
    assert 'process_url "$item" &' in script
    assert 'pending_pids+=("$!")' in script
    assert 'if [ "${#pending_pids[@]}" -ge "$CONCURRENCY" ]; then' in script
