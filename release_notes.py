#!/usr/bin/env python3
"""Fetch feature-focused GitHub release notes for selected LangChain-ecosystem
packages and persist them as markdown artifacts under ``reference/release-notes/``.

Designed to run as a step inside ``create_reference_docs.sh``. It is re-runnable:
each run re-fetches every release and overwrites the artifacts, so newly released
versions are picked up automatically with no manual edits. The output contains
only release publish dates (no volatile "generated at" timestamp), so a package
with no new release produces no git diff.

Release notes are filtered to *features only* -- conventional-commit ``feat:``
entries and breaking changes -- dropping bug-fix / chore / docs / test noise.

Requires the GitHub CLI (``gh``) installed and authenticated. No third-party
Python dependencies.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path

GITHUB = "https://github.com"
OUTPUT_ROOT = Path("release-notes")

Version = tuple[int, ...]


@dataclass(frozen=True)
class PackageSpec:
    """A package whose GitHub releases we harvest."""

    name: str               # output artifact name
    repo: str               # "owner/repo"
    group: str              # output subdirectory under reference/release-notes/
    tag_mode: str           # "equals" -> tag is "<tag_key>==<version>"
    #                         "bare"   -> tag is a bare "<version>" (no "==")
    tag_key: str            # left-hand side of the "==" tag (unused for "bare")
    min_version: Version | None  # inclusive cutoff; None means "all releases"


# Scope confirmed with the user. See plan file for rationale on each cutoff.
PACKAGES: list[PackageSpec] = [
    PackageSpec("langchain", "langchain-ai/langchain", "langchain",
                "equals", "langchain", (1, 0, 0)),
    PackageSpec("langchain-core", "langchain-ai/langchain", "langchain",
                "equals", "langchain-core", (1, 0, 0)),
    PackageSpec("langchain-tests", "langchain-ai/langchain", "langchain",
                "equals", "langchain-tests", (1, 0, 0)),
    PackageSpec("langchain-openai", "langchain-ai/langchain", "langchain",
                "equals", "langchain-openai", (1, 0, 0)),
    PackageSpec("langchain-anthropic", "langchain-ai/langchain", "langchain",
                "equals", "langchain-anthropic", (1, 0, 0)),
    PackageSpec("langchain-xai", "langchain-ai/langchain", "langchain",
                "equals", "langchain-xai", (1, 0, 0)),
    PackageSpec("langgraph", "langchain-ai/langgraph", "langgraph",
                "bare", "", (1, 0, 0)),
    PackageSpec("langgraph-prebuilt", "langchain-ai/langgraph", "langgraph",
                "equals", "prebuilt", (1, 0, 0)),
    PackageSpec("langgraph-checkpoint", "langchain-ai/langgraph", "langgraph",
                "equals", "checkpoint", (4, 0, 0)),
    PackageSpec("langgraph-checkpoint-postgres", "langchain-ai/langgraph", "langgraph",
                "equals", "checkpointpostgres", (3, 0, 0)),
    PackageSpec("deepagents", "langchain-ai/deepagents", "deepagents",
                "equals", "deepagents", (0, 3, 0)),
    PackageSpec("langchain-runloop", "langchain-ai/deepagents", "deepagents",
                "equals", "langchain-runloop", None),
    PackageSpec("langchain-modal", "langchain-ai/deepagents", "deepagents",
                "equals", "langchain-modal", None),
    PackageSpec("langchain-daytona", "langchain-ai/deepagents", "deepagents",
                "equals", "langchain-daytona", None),
    PackageSpec("langchain-aws", "langchain-ai/langchain-aws", "langchain-aws",
                "equals", "langchain-aws", (1, 0, 0)),
    PackageSpec("langgraph-checkpoint-aws", "langchain-ai/langchain-aws", "langchain-aws",
                "equals", "langgraph-checkpoint-aws", (1, 0, 0)),
]

# A conventional-commit prefix: "type(scope)!: ..." -- scope and "!" optional.
_COMMIT_TYPE_RE = re.compile(r"^(?P<type>[a-z]+)(?:\([^)]*\))?(?P<bang>!)?:", re.IGNORECASE)
_PR_RE = re.compile(r"\(#(\d+)\)")
_BULLET_RE = re.compile(r"^[*\-+]\s+")
# A digit immediately followed by an alpha/beta/rc/dev marker => prerelease.
_PRERELEASE_RE = re.compile(r"\d(?:a|b|rc|\.?dev)\d*", re.IGNORECASE)


def parse_version(raw: str) -> Version:
    """Parse the leading numeric core of a version string into an int tuple.

    Strips a leading ``v``; pads to at least three components so comparisons
    against three-part cutoffs behave (e.g. ``1.0`` -> ``(1, 0, 0)``).
    """
    match = re.match(r"[0-9]+(?:\.[0-9]+)*", raw.strip().lstrip("vV"))
    if not match:
        return ()
    parts = tuple(int(x) for x in match.group(0).split("."))
    while len(parts) < 3:
        parts += (0,)
    return parts


def is_prerelease(version_str: str, api_flag: bool) -> bool:
    """True if GitHub flags the release as a prerelease, or the version string
    carries an alpha/beta/rc/dev marker (e.g. ``1.2.0a7``, ``1.0.10rc1``)."""
    return bool(api_flag) or bool(_PRERELEASE_RE.search(version_str.lstrip("vV")))


def meets_cutoff(ver: Version, minv: Version | None) -> bool:
    """True if ``ver`` is at or above the inclusive cutoff (None => no cutoff)."""
    return minv is None or ver >= minv


def match_tag(spec: PackageSpec, tag: str) -> str | None:
    """Return the version substring of ``tag`` if it belongs to ``spec``, else None."""
    if spec.tag_mode == "equals":
        if "==" not in tag:
            return None
        key, _, version = tag.partition("==")
        return version if key == spec.tag_key else None
    # "bare" mode: a plain version tag with no "==" (langgraph core releases).
    if "==" in tag:
        return None
    return tag if re.match(r"^v?[0-9]+\.[0-9]+", tag) else None


def extract_features(body: str, seen_prs: set[str]) -> list[str]:
    """Pull feature / breaking-change entries out of a release body.

    Keeps only conventional-commit lines whose type is ``feat`` or that carry a
    breaking ``!`` marker. De-duplicates by PR number against ``seen_prs`` so a
    feature is attributed to the earliest release that mentions it.
    """
    features: list[str] = []
    for raw_line in (body or "").splitlines():
        line = _BULLET_RE.sub("", raw_line.strip()).strip()
        if not line:
            continue
        prefix_match = _COMMIT_TYPE_RE.match(line)
        if not prefix_match:
            continue  # prose, headings, contributor lists -- not a feature entry
        ctype = prefix_match.group("type").lower()
        breaking = prefix_match.group("bang") == "!"
        if ctype != "feat" and not breaking:
            continue
        pr_match = _PR_RE.search(line)
        if pr_match:
            if pr_match.group(1) in seen_prs:
                continue
            seen_prs.add(pr_match.group(1))
        marker = "**[breaking]** " if breaking else ""
        features.append(f"- {marker}{line}")
    return features


def _parse_json_stream(text: str) -> list[dict]:
    """Parse one or more concatenated JSON arrays (what ``gh api --paginate``
    emits) into a single flat list of objects."""
    decoder = json.JSONDecoder()
    items: list[dict] = []
    idx, length = 0, len(text)
    while idx < length:
        while idx < length and text[idx].isspace():
            idx += 1
        if idx >= length:
            break
        obj, idx = decoder.raw_decode(text, idx)
        if isinstance(obj, list):
            items.extend(obj)
        else:
            items.append(obj)
    return items


def fetch_releases(repo: str) -> list[dict]:
    """Fetch every release for ``repo`` via the authenticated GitHub CLI."""
    result = subprocess.run(
        ["gh", "api", f"repos/{repo}/releases", "--paginate",
         "-X", "GET", "-f", "per_page=100"],
        capture_output=True,
        text=True,
        check=True,
    )
    return _parse_json_stream(result.stdout)


def build_artifact(spec: PackageSpec, raw_releases: list[dict]) -> tuple[str, int, int]:
    """Build the markdown artifact for ``spec``. Returns (content, versions, features)."""
    selected: list[tuple[Version, str, dict]] = []
    for release in raw_releases:
        version_str = match_tag(spec, release.get("tag_name") or "")
        if version_str is None:
            continue
        if is_prerelease(version_str, bool(release.get("prerelease"))):
            continue
        version = parse_version(version_str)
        if not version or not meets_cutoff(version, spec.min_version):
            continue
        selected.append((version, version_str, release))

    # Process oldest -> newest so PR de-duplication attributes a feature to the
    # earliest release that ships it (langchain release bodies overlap heavily).
    selected.sort(key=lambda item: item[0])
    seen_prs: set[str] = set()
    rendered: list[tuple[Version, str]] = []
    feature_total = 0
    for version, version_str, release in selected:
        features = extract_features(release.get("body") or "", seen_prs)
        feature_total += len(features)
        date = (release.get("published_at") or "")[:10]
        url = release.get("html_url") or ""
        block = [f"## {version_str}" + (f" — {date}" if date else ""), ""]
        if url:
            block += [f"[Release on GitHub]({url})", ""]
        block += features if features else [
            "_Maintenance / bug-fix release — no feature changes._"
        ]
        block.append("")
        rendered.append((version, "\n".join(block)))

    # Newest first in the output.
    rendered.sort(key=lambda item: item[0], reverse=True)
    lines = [
        f"# {spec.name} release notes",
        "",
        "Feature-focused release notes — new features and breaking changes only.",
        f"Source: {GITHUB}/{spec.repo}/releases",
        "",
    ]
    if rendered:
        lines += [block for _, block in rendered]
    else:
        lines += ["_No releases match the configured version range yet._", ""]
    return "\n".join(lines).rstrip() + "\n", len(selected), feature_total


def write_artifact(spec: PackageSpec, content: str) -> Path:
    """Write ``content`` to the package's artifact path, creating parent dirs."""
    path = OUTPUT_ROOT / spec.group / f"{spec.name}.md"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    return path


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--package",
        action="append",
        metavar="NAME",
        help="only process the given package name(s); may be repeated",
    )
    args = parser.parse_args()

    specs = PACKAGES
    if args.package:
        wanted = set(args.package)
        specs = [s for s in PACKAGES if s.name in wanted]
        if not specs:
            print(f"No packages match {sorted(wanted)}", file=sys.stderr)
            return 1

    cache: dict[str, list[dict]] = {}
    for repo in sorted({s.repo for s in specs}):
        print(f"-> Fetching releases for {repo} ...")
        try:
            cache[repo] = fetch_releases(repo)
        except FileNotFoundError:
            print("Error: 'gh' CLI not found. Install and authenticate GitHub CLI.",
                  file=sys.stderr)
            return 1
        except subprocess.CalledProcessError as exc:
            print(f"Error: 'gh api' failed for {repo}:\n{exc.stderr}", file=sys.stderr)
            return 1
        print(f"   {len(cache[repo])} releases fetched")

    rows: list[tuple[str, int, int, str]] = []
    for spec in specs:
        content, version_count, feature_count = build_artifact(spec, cache[spec.repo])
        path = write_artifact(spec, content)
        rows.append((spec.name, version_count, feature_count, str(path)))

    name_width = max(len(row[0]) for row in rows)
    print("\nRelease notes generated:")
    print(f"  {'package'.ljust(name_width)}  versions  features  path")
    for name, version_count, feature_count, path in rows:
        print(f"  {name.ljust(name_width)}  {version_count:>8}  {feature_count:>8}  {path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
