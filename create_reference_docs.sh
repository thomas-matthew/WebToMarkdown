#!/bin/bash

# Exit immediately if any command returns a non-zero status
set -e

# --- CONFIGURATION ---

PROJECT_DIR="/Users/thomasmathew/Dev/WebToMarkdown"
OUTPUT_DIR="reference"
COMMIT_MSG="Auto-update: Generated new artifacts via web2llms"

# --- URL MAPPING (Bash 3.2 Compatible) ---
# Syntax: "URL | SUBDIRECTORY/FILENAME"
# Note: Use the pipe character '|' to separate the URL and the Filepath

URL_LIST=(
    # Top level
    "https://reference.langchain.com/python/deepagents/ | deepagents.md"

    # Integrations
    "https://reference.langchain.com/python/integrations/langchain_openai/ChatOpenAI/ | integrations/ChatOpenAI.md"
    "https://reference.langchain.com/python/integrations/langchain_openai/BaseChatOpenAI/ | integrations/BaseChatOpenAI.md"
    "https://reference.langchain.com/python/integrations/langchain_aws/ | integrations/langchain_aws.md"
    
    # LangChain (Library)
    "https://reference.langchain.com/python/langchain/agents/ | langchain/agents.md"
    "https://reference.langchain.com/python/langchain/middleware/ | langchain/middleware.md"
    "https://reference.langchain.com/python/langchain/messages/#langchain.messages | langchain/messages.md"
    "https://reference.langchain.com/python/langchain/tools/ | langchain/tools.md"
    
    # LangChain Core
    "https://reference.langchain.com/python/langchain_core/caches/ | langchain_core/caches.md"
    "https://reference.langchain.com/python/langchain_core/callbacks/ | langchain_core/callbacks.md"
    "https://reference.langchain.com/python/langchain_core/documents/ | langchain_core/documents.md"
    "https://reference.langchain.com/python/langchain_core/prompts/ | langchain_core/prompts.md"
    "https://reference.langchain.com/python/langchain_core/retrievers/ | langchain_core/retrievers.md"
    
    # LangGraph
    "https://reference.langchain.com/python/langgraph/graphs/ | langgraph/graphs.md"
    "https://reference.langchain.com/python/langgraph/func/ | langgraph/func.md"
    "https://reference.langchain.com/python/langgraph/pregel/ | langgraph/pregel.md"
    "https://reference.langchain.com/python/langgraph/checkpoints/ | langgraph/checkpoints.md"
    "https://reference.langchain.com/python/langgraph/store/ | langgraph/store.md"
    "https://reference.langchain.com/python/langgraph/cache/ | langgraph/cache.md"
    "https://reference.langchain.com/python/langgraph/types/ | langgraph/types.md"
    "https://reference.langchain.com/python/langgraph/runtime/ | langgraph/runtime.md"
    "https://reference.langchain.com/python/langgraph/config/ | langgraph/config.md"
    "https://reference.langchain.com/python/langgraph/errors/ | langgraph/errors.md"
    "https://reference.langchain.com/python/langgraph/constants/ | langgraph/constants.md"
    "https://reference.langchain.com/python/langgraph/channels/ | langgraph/channels.md"
    "https://reference.langchain.com/python/langgraph/agents/ | langgraph/agents.md"
    "https://reference.langchain.com/python/langgraph/supervisor/ | langgraph/supervisor.md"

    # Snowflake Cortex - AISQL overview
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/aisql | snowflake/cortex/aisql-overview.md"

    # Snowflake Cortex - Core AI SQL Functions
    "https://docs.snowflake.com/en/sql-reference/functions/ai_complete | snowflake/cortex/ai_complete.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_classify | snowflake/cortex/ai_classify.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_filter | snowflake/cortex/ai_filter.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_extract | snowflake/cortex/ai_extract.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_sentiment | snowflake/cortex/ai_sentiment.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_redact | snowflake/cortex/ai_redact.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_translate | snowflake/cortex/ai_translate.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_agg | snowflake/cortex/ai_agg.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_summarize_agg | snowflake/cortex/ai_summarize_agg.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_embed | snowflake/cortex/ai_embed.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_similarity | snowflake/cortex/ai_similarity.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_transcribe | snowflake/cortex/ai_transcribe.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_parse_document | snowflake/cortex/ai_parse_document.md"
    "https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens | snowflake/cortex/ai_count_tokens.md"
    "https://docs.snowflake.com/en/sql-reference/functions/prompt | snowflake/cortex/prompt.md"
    "https://docs.snowflake.com/en/sql-reference/functions/to_file | snowflake/cortex/to_file.md"

    # Snowflake Cortex - Broader Cortex Services
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents | snowflake/cortex/cortex-agents.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-mcp | snowflake/cortex/cortex-agents-mcp.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst | snowflake/cortex/cortex-analyst.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-search/cortex-search-overview | snowflake/cortex/cortex-search-overview.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-overview | snowflake/cortex/cke-overview.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-rest-api | snowflake/cortex/cortex-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-ai-guardrails | snowflake/cortex/cortex-ai-guardrails.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/ai-observability | snowflake/cortex/ai-observability.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/snowflake-intelligence | snowflake/cortex/snowflake-intelligence.md"

    # Snowflake Cortex - REST API references
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-rest-api/embed-api | snowflake/cortex/rest-api/embed-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api | snowflake/cortex/rest-api/cortex-agents-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-run | snowflake/cortex/rest-api/cortex-agents-run.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-threads-rest-api | snowflake/cortex/rest-api/cortex-agents-threads-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-feedback-rest-api | snowflake/cortex/rest-api/cortex-agents-feedback-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/rest-api | snowflake/cortex/rest-api/cortex-analyst-rest-api.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-search/query-cortex-search-service | snowflake/cortex/rest-api/query-cortex-search-service.md"
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
