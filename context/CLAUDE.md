# Offline docs

Markdown snapshots of public docs. Links (even relative ones) point to the original websites, not to files here: to follow one, search this folder for the linked page's name or topic.

- `docs/` — guides and how-tos. `reference/` — APIs, signatures, config keys. `release-notes/` — what changed per version.
- Most topics are split: check both `docs/<vendor>/<topic>` and `reference/<vendor>/<topic>`.
- Three different SDKs: Claude Agent SDK (`anthropic/agent-sdk`), OpenAI Agents SDK (`openai/agents-sdk`), OpenAI Codex SDK (`openai/codex-sdk`). Confirm which one is meant.
- Codex SDK: settings explained in `docs/openai/codex-sdk/agent-config/`, worked examples in `docs/openai/codex-sdk/guides/`.
- LangChain / LangGraph: `reference/` only; class pages sit in subfolders matching the import path.
- Model prompting: look for a file named after the model first.
- Start with `grep -ril "<term>" .`; try synonyms if nothing matches.
