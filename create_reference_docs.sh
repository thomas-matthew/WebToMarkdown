#!/bin/bash

# Exit immediately if any command returns a non-zero status
set -e

# --- CONFIGURATION ---

PROJECT_DIR="/Users/thomasmathew/Dev/WebToMarkdown"
OUTPUT_DIR="."
COMMIT_MSG="Auto-update: Generated new artifacts via web2llms"

# --- URL MAPPING (Bash 3.2 Compatible) ---
# Syntax: "URL | reference|docs/SUBDIRECTORY/FILENAME"
# Note: Use the pipe character '|' to separate the URL and the Filepath
# Paths are split into:
#   reference/  -- API references, SQL/Python function refs, REST endpoint specs
#   docs/       -- Conceptual guides, overviews, prompt engineering, model docs

URL_LIST=(
    # === REFERENCE: LangChain Python API ===
    "https://reference.langchain.com/python/deepagents/ | reference/deepagents.md"

    # LangChain Integrations
    "https://reference.langchain.com/python/integrations/langchain_openai/ChatOpenAI/ | reference/integrations/ChatOpenAI.md"
    "https://reference.langchain.com/python/integrations/langchain_openai/BaseChatOpenAI/ | reference/integrations/BaseChatOpenAI.md"
    "https://reference.langchain.com/python/integrations/langchain_aws/ | reference/integrations/langchain_aws.md"

    # LangChain (Library)
    "https://reference.langchain.com/python/langchain/agents/ | reference/langchain/agents.md"
    "https://reference.langchain.com/python/langchain/middleware/ | reference/langchain/middleware.md"
    "https://reference.langchain.com/python/langchain/messages/#langchain.messages | reference/langchain/messages.md"
    "https://reference.langchain.com/python/langchain/tools/ | reference/langchain/tools.md"

    # LangChain Core
    "https://reference.langchain.com/python/langchain_core/caches/ | reference/langchain_core/caches.md"
    "https://reference.langchain.com/python/langchain_core/callbacks/ | reference/langchain_core/callbacks.md"
    "https://reference.langchain.com/python/langchain_core/documents/ | reference/langchain_core/documents.md"
    "https://reference.langchain.com/python/langchain_core/prompts/ | reference/langchain_core/prompts.md"
    "https://reference.langchain.com/python/langchain_core/retrievers/ | reference/langchain_core/retrievers.md"

    # LangGraph
    "https://reference.langchain.com/python/langgraph/graphs/ | reference/langgraph/graphs.md"
    "https://reference.langchain.com/python/langgraph/func/ | reference/langgraph/func.md"
    "https://reference.langchain.com/python/langgraph/pregel/ | reference/langgraph/pregel.md"
    "https://reference.langchain.com/python/langgraph/checkpoints/ | reference/langgraph/checkpoints.md"
    "https://reference.langchain.com/python/langgraph/store/ | reference/langgraph/store.md"
    "https://reference.langchain.com/python/langgraph/cache/ | reference/langgraph/cache.md"
    "https://reference.langchain.com/python/langgraph/types/ | reference/langgraph/types.md"
    "https://reference.langchain.com/python/langgraph/runtime/ | reference/langgraph/runtime.md"
    "https://reference.langchain.com/python/langgraph/config/ | reference/langgraph/config.md"
    "https://reference.langchain.com/python/langgraph/errors/ | reference/langgraph/errors.md"
    "https://reference.langchain.com/python/langgraph/constants/ | reference/langgraph/constants.md"
    "https://reference.langchain.com/python/langgraph/channels/ | reference/langgraph/channels.md"
    "https://reference.langchain.com/python/langgraph/agents/ | reference/langgraph/agents.md"
    "https://reference.langchain.com/python/langgraph/supervisor/ | reference/langgraph/supervisor.md"

    # === REFERENCE: Snowflake Cortex AI SQL Functions ===
    "https://docs.snowflake.com/en/sql-reference/functions/ai_complete | reference/snowflake/cortex/ai_complete.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_classify | reference/snowflake/cortex/ai_classify.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_filter | reference/snowflake/cortex/ai_filter.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_extract | reference/snowflake/cortex/ai_extract.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_sentiment | reference/snowflake/cortex/ai_sentiment.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_redact | reference/snowflake/cortex/ai_redact.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_translate | reference/snowflake/cortex/ai_translate.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_agg | reference/snowflake/cortex/ai_agg.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_summarize_agg | reference/snowflake/cortex/ai_summarize_agg.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_embed | reference/snowflake/cortex/ai_embed.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_similarity | reference/snowflake/cortex/ai_similarity.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_transcribe | reference/snowflake/cortex/ai_transcribe.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_parse_document | reference/snowflake/cortex/ai_parse_document.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens | reference/snowflake/cortex/ai_count_tokens.md"
    "https://docs.snowflake.com/en/sql-reference/functions/prompt | reference/snowflake/cortex/prompt.md"
    "https://docs.snowflake.com/en/sql-reference/functions/to_file | reference/snowflake/cortex/to_file.md"

    # === REFERENCE: Snowflake Cortex REST API endpoints ===
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-rest-api/embed-api | reference/snowflake/cortex/rest-api/embed-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api | reference/snowflake/cortex/rest-api/cortex-agents-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-run | reference/snowflake/cortex/rest-api/cortex-agents-run.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-threads-rest-api | reference/snowflake/cortex/rest-api/cortex-agents-threads-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-feedback-rest-api | reference/snowflake/cortex/rest-api/cortex-agents-feedback-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/rest-api | reference/snowflake/cortex/rest-api/cortex-analyst-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-search/query-cortex-search-service | reference/snowflake/cortex/rest-api/query-cortex-search-service.md"

    # === DOCS: Snowflake Cortex user guides ===
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/aisql | docs/snowflake/cortex/aisql-overview.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents | docs/snowflake/cortex/cortex-agents.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-mcp | docs/snowflake/cortex/cortex-agents-mcp.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst | docs/snowflake/cortex/cortex-analyst.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-search/cortex-search-overview | docs/snowflake/cortex/cortex-search-overview.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-overview | docs/snowflake/cortex/cke-overview.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-rest-api | docs/snowflake/cortex/cortex-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-ai-guardrails | docs/snowflake/cortex/cortex-ai-guardrails.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/ai-observability | docs/snowflake/cortex/ai-observability.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/snowflake-intelligence | docs/snowflake/cortex/snowflake-intelligence.md"

    # === DOCS: OpenAI prompt guidance (per-model tabs) ===
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-5.5 | docs/openai/prompt-guidance/gpt-5.5.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-5.4 | docs/openai/prompt-guidance/gpt-5.4.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-5.3-codex | docs/openai/prompt-guidance/gpt-5.3-codex.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-5.2 | docs/openai/prompt-guidance/gpt-5.2.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-5.1 | docs/openai/prompt-guidance/gpt-5.1.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-5 | docs/openai/prompt-guidance/gpt-5.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance?model=gpt-4.1 | docs/openai/prompt-guidance/gpt-4.1.md"

    # === DOCS: Anthropic Claude prompt engineering and model context ===
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/overview | docs/anthropic/prompt-engineering/overview.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices | docs/anthropic/prompt-engineering/claude-prompting-best-practices.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-tools | docs/anthropic/prompt-engineering/prompting-tools.md"
    "https://platform.claude.com/docs/en/about-claude/models/overview | docs/anthropic/models/overview.md"
    "https://platform.claude.com/docs/en/about-claude/models/migration-guide | docs/anthropic/models/migration-guide.md"
    "https://platform.claude.com/docs/en/about-claude/models/whats-new-claude-4-7 | docs/anthropic/models/whats-new-claude-4-7.md"
)

# --- EXECUTION START ---

echo ">>> Starting Workflow..."

# 1. Change Directory
echo ">>> Moving to project directory: $PROJECT_DIR"
cd "$PROJECT_DIR"

# 2. Activate Venv
echo ">>> Activating Python virtual environment..."
source venv/bin/activate

# 3. Loop through the list and run the Python command
echo ">>> Processing ${#URL_LIST[@]} URLs..."

for item in "${URL_LIST[@]}"; do
    # Split the string by " | "
    # ${item%% | *} gets everything BEFORE the separator (The URL)
    # ${item##* | } gets everything AFTER the separator (The Path)
    
    url="${item%% | *}"
    relative_path="${item##* | }"
    
    # Combine with the main output directory
    full_output_path="$OUTPUT_DIR/$relative_path"
    
    # Get the directory part of the path
    target_dir=$(dirname "$full_output_path")
    
    # Ensure the specific subdirectory exists
    if [ ! -d "$target_dir" ]; then
        mkdir -p "$target_dir"
    fi
    
    echo " -> Processing: $url"
    echo "    Target: $full_output_path"
    
    # Run the python command
    python web2llms.py "$url" -o "$full_output_path"
done

# 4. Git Operations
echo ">>> Performing Git operations..."

# Add all changes
git add .

# Check if there are actually changes to commit
if ! git diff-index --quiet HEAD; then
    git commit -m "$COMMIT_MSG"
    
    echo ">>> Pushing to remote..."
    git push
    
    echo ">>> Success! Changes pushed."
else
    echo ">>> No changes detected. Skipping commit and push."
fi

echo ">>> Workflow complete."
