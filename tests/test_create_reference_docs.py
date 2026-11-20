from pathlib import Path
import shlex
import subprocess


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


def test_reference_docs_script_runs_urls_in_a_bounded_pool() -> None:
    script = SCRIPT_PATH.read_text(encoding="utf-8")

    assert 'CONCURRENCY="${CONCURRENCY:-8}"' in script
    assert "process_url() {" in script
    assert "wait_for_free_slot() {" in script
    assert 'process_url "$item" &' in script
    assert 'pending_pids+=("$!")' in script
    assert "\nrun_url_jobs\n" in script.split("# --- EXECUTION START ---", 1)[1]


def run_pool(tmp_path: Path, concurrency: int, process_url: str, items: list[str]) -> str:
    log: Path = tmp_path / "jobs.log"
    output: str = run_script_functions(tmp_path, ".", [
        f"LOG={shlex.quote(str(log))}",
        f"CONCURRENCY={concurrency}",
        process_url,
        "URL_LIST=(" + " ".join(shlex.quote(item) for item in items) + ")",
        "run_url_jobs",
        'echo "pool finished"',
    ])
    return output + (log.read_text() if log.exists() else "")


# Logs start/end of each job; "slow" jobs take 1.5s, others 0.1s.
TIMED_JOB: str = '''process_url() {
    echo "start $1" >> "$LOG"
    case "$1" in slow*) sleep 1.5 ;; *) sleep 0.1 ;; esac
    echo "end $1" >> "$LOG"
}'''


def test_pool_starts_next_job_without_waiting_for_slow_one(tmp_path: Path) -> None:
    items: list[str] = ["slow", "fast1", "fast2", "fast3", "fast4"]
    output: str = run_pool(tmp_path, 2, TIMED_JOB, items)

    assert output.startswith("exit=0") and "pool finished" in output, output
    events: list[str] = [line for line in output.splitlines() if line.startswith(("start", "end"))]
    # With fixed batches, fast2..fast4 would wait for "slow" to finish.
    assert events[-1] == "end slow", events
    assert sorted(e for e in events if e.startswith("start")) == sorted(f"start {i}" for i in items)


def test_pool_never_exceeds_concurrency(tmp_path: Path) -> None:
    counter_job: str = '''process_url() {
        echo "start" >> "$LOG"; sleep 0.3; echo "end" >> "$LOG"
    }'''
    output: str = run_pool(tmp_path, 3, counter_job, [f"job{i}" for i in range(9)])

    assert output.startswith("exit=0"), output
    running: int = 0
    peak: int = 0
    for line in output.splitlines():
        if line in {"start", "end"}:
            running += 1 if line == "start" else -1
            peak = max(peak, running)
    assert peak == 3


def test_pool_stops_when_a_job_crashes(tmp_path: Path) -> None:
    crashing_job: str = '''process_url() {
        case "$1" in crash) return 1 ;; *) sleep 0.1 ;; esac
    }'''
    output: str = run_pool(tmp_path, 2, crashing_job, ["a", "crash", "b", "c", "d"])

    assert output.startswith("exit=1"), output
    assert "jobs crashed" in output
    assert "pool finished" not in output


def run_script_functions(project_dir: Path, output_dir: str, body: list[str]) -> str:
    """Source the script's functions (without running it) and run ``body``."""
    definitions: str = SCRIPT_PATH.read_text().split("# --- EXECUTION START ---", 1)[0]
    commands: str = "\n".join([
        definitions,
        f"PROJECT_DIR={shlex.quote(str(project_dir))}",
        f"OUTPUT_DIR={shlex.quote(output_dir)}",
        *body,
    ])
    result = subprocess.run(["bash", "-c", commands], cwd=project_dir,
                            capture_output=True, text=True)
    return f"exit={result.returncode}\n{result.stdout}{result.stderr}"


def write(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text)


# Stubs: python writes "new <path>", except for URLs containing "broken";
# curl writes a partial file and fails for "broken" URLs.
STUBS: list[str] = [
    '''python() {
        local out=""; local url=""
        while [ $# -gt 0 ]; do
            case "$1" in -o) out="$2"; shift ;; http*) url="$1" ;; esac; shift
        done
        case "$url" in *broken*) return 1 ;; esac
        echo "new $url" > "$out"
    }''',
    '''curl() {
        local out=""; local url=""
        while [ $# -gt 0 ]; do
            case "$1" in -o) out="$2"; shift ;; http*) url="$1" ;; esac; shift
        done
        case "$url" in *broken*) echo partial > "$out"; return 22 ;; esac
        echo "new $url" > "$out"
    }''',
]


def test_failed_pages_keep_previous_version_and_others_are_replaced(tmp_path: Path) -> None:
    write(tmp_path / "reference" / "good.md", "old good")
    write(tmp_path / "reference" / "kept.md", "old kept")
    write(tmp_path / "docs" / "kept.md", "old raw")
    write(tmp_path / "reference" / "removed-from-list.md", "stale")
    write(tmp_path / "release-notes" / "langchain" / "langchain.md", "old notes")
    items: list[str] = [
        "https://example.com/good | reference/good.md",
        "https://example.com/broken | reference/kept.md",
        "https://example.com/broken.md | docs/kept.md",
        "https://example.com/broken-new | reference/never-existed.md",
    ]

    output: str = run_script_functions(tmp_path, ".", [
        *STUBS,
        "prepare_staging",
        *[f"process_url {shlex.quote(item)}" for item in items],
        "generate_release_notes",
        "publish_staging",
        "finish_staging",
    ])

    assert output.startswith("exit=1"), output
    assert (tmp_path / "reference" / "good.md").read_text() == "new https://example.com/good\n"
    assert (tmp_path / "reference" / "kept.md").read_text() == "old kept"
    assert (tmp_path / "docs" / "kept.md").read_text() == "old raw"
    assert not (tmp_path / "reference" / "never-existed.md").exists()
    assert not (tmp_path / "reference" / "removed-from-list.md").exists()
    # The python stub writes nothing for release notes, so the old notes are kept.
    assert (tmp_path / "release-notes" / "langchain" / "langchain.md").read_text() == "old notes"
    assert not (tmp_path / ".staging").exists()
    for failed in items[1:] + ["release-notes"]:
        assert f"    {failed}" in output
    assert "    https://example.com/good" not in output


def test_successful_run_reports_no_failures(tmp_path: Path) -> None:
    output: str = run_script_functions(tmp_path, ".", [
        *STUBS,
        "prepare_staging",
        f"process_url {shlex.quote('https://example.com/a.md | docs/a.md')}",
        "publish_staging",
        "finish_staging",
    ])

    assert output.startswith("exit=0"), output
    assert (tmp_path / "docs" / "a.md").read_text() == "new https://example.com/a.md\n"
    assert not (tmp_path / ".staging").exists()


def test_publish_does_not_follow_symlinks(tmp_path: Path) -> None:
    output_dir: Path = tmp_path / "custom output"
    output_dir.mkdir()
    outside: Path = tmp_path / "outside"
    write(outside / "keep.md", "keep")
    (output_dir / "docs").symlink_to(outside, target_is_directory=True)
    write(output_dir / "release-notes" / "old.md", "obsolete")

    output: str = run_script_functions(tmp_path, str(output_dir), [
        "prepare_staging", "publish_staging", "finish_staging",
    ])

    assert output.startswith("exit=0"), output
    assert (outside / "keep.md").read_text() == "keep"
    assert not (output_dir / "docs").is_symlink()
    assert (output_dir / "docs").is_dir() and not list((output_dir / "docs").iterdir())
    assert (output_dir / "release-notes").is_dir()
    assert not list((output_dir / "release-notes").iterdir())


def test_everything_is_generated_under_context_folder() -> None:
    script = SCRIPT_PATH.read_text(encoding="utf-8")

    assert '\nOUTPUT_DIR="context"\n' in script
    assert (PROJECT_ROOT / "context" / "CLAUDE.md").is_file()


def test_regeneration_keeps_hand_written_files_in_output_folder(tmp_path: Path) -> None:
    write(tmp_path / "context" / "CLAUDE.md", "guide")
    write(tmp_path / "context" / "docs" / "old.md", "stale")

    output: str = run_script_functions(tmp_path, "context", [
        "prepare_staging", "publish_staging", "finish_staging",
    ])

    assert output.startswith("exit=0"), output
    assert (tmp_path / "context" / "CLAUDE.md").read_text() == "guide"
    assert not (tmp_path / "context" / "docs" / "old.md").exists()
    assert sorted(p.name for p in (tmp_path / "context").iterdir()) == [
        "CLAUDE.md", "docs", "reference", "release-notes",
    ]


def test_staging_directory_is_git_ignored() -> None:
    assert ".staging/" in (PROJECT_ROOT / ".gitignore").read_text().splitlines()
