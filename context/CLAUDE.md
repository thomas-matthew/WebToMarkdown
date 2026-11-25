# Offline docs

Markdown snapshots of public docs. Links (even relative ones) point to the original websites, not to files here: to follow one, search this folder for the linked page's name or topic.

- `docs/` — guides and how-tos. `reference/` — APIs, signatures, config keys. `release-notes/` — what changed per version.
- Most topics are split: check both `docs/<vendor>/<topic>` and `reference/<vendor>/<topic>`.
- Four different agent SDKs: Claude Agent SDK (`anthropic/agent-sdk`), OpenAI Agents SDK (`openai/agents-sdk`), OpenAI Codex SDK (`openai/codex-sdk`), Snowflake Cortex Agent SDK (`snowflake/cortex/agent-sdk`). Confirm which one is meant.
- Codex SDK: settings explained in `docs/openai/codex-sdk/agent-config/`, worked examples in `docs/openai/codex-sdk/guides/`.
- Snowflake Cortex Agents: guides in `docs/snowflake/cortex/agents/`, REST endpoints in `reference/snowflake/cortex/rest-api/`, SQL (`CREATE AGENT` etc.) in `reference/snowflake/cortex/sql/`, worked patterns in `docs/snowflake/cortex/cookbook/`.
- Snowflake non-AI: Python connector in `docs/snowflake/python-connector/` (API in `reference/snowflake/python-connector/api.md`); SQL REST API in `docs/snowflake/sql-api/` (endpoints in `reference/snowflake/sql-api/reference.md`).
- LangChain / LangGraph: `reference/` only; class pages sit in subfolders matching the import path. Model integrations (ChatOpenAI, ChatAnthropic, …) are in `reference/integrations/`, Deep Agents in `reference/deepagents.md`.
- Model prompting: look for a file named after the model first.
- Start with `grep -ril "<term>" .`; try synonyms if nothing matches.
