#!/bin/bash

# Exit immediately if any command returns a non-zero status
set -e

# --- CONFIGURATION ---

PROJECT_DIR="/Users/thomasmathew/Dev/personal/WebToMarkdown"
OUTPUT_DIR="."
COMMIT_MSG="Auto-update: Generated new artifacts via web2llms"
CONCURRENCY="${CONCURRENCY:-4}"

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
    "https://reference.langchain.com/python/langchain-openai/chat_models/base/ChatOpenAI | reference/integrations/ChatOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI | reference/integrations/BaseChatOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/chat_models/azure/AzureChatOpenAI | reference/integrations/AzureChatOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings | reference/integrations/OpenAIEmbeddings.md"
    "https://reference.langchain.com/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings | reference/integrations/AzureOpenAIEmbeddings.md"
    "https://reference.langchain.com/python/langchain-openai/llms/base/OpenAI | reference/integrations/OpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI | reference/integrations/BaseOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/llms/azure/AzureOpenAI | reference/integrations/AzureOpenAI.md"
    "https://reference.langchain.com/python/integrations/langchain_aws/ | reference/integrations/langchain_aws.md"
    "https://reference.langchain.com/python/langchain-xai | reference/integrations/langchain_xai.md"
    "https://reference.langchain.com/python/langchain-xai/chat_models/ChatXAI | reference/integrations/ChatXAI.md"

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
    "https://reference.langchain.com/python/langgraph-supervisor | reference/langgraph/supervisor.md"

    # LangGraph - class/function leaf pages (linked from the module overviews above)
    "https://reference.langchain.com/python/langgraph/graph/state/StateGraph | reference/langgraph/graph/state/StateGraph.md"
    "https://reference.langchain.com/python/langgraph/graph/state/CompiledStateGraph | reference/langgraph/graph/state/CompiledStateGraph.md"
    "https://reference.langchain.com/python/langgraph/graph/message/add_messages | reference/langgraph/graph/message/add_messages.md"
    "https://reference.langchain.com/python/langgraph/func/entrypoint | reference/langgraph/func/entrypoint.md"
    "https://reference.langchain.com/python/langgraph/func/task | reference/langgraph/func/task.md"
    "https://reference.langchain.com/python/langgraph/pregel/main/Pregel | reference/langgraph/pregel/main/Pregel.md"
    "https://reference.langchain.com/python/langgraph/pregel/main/NodeBuilder | reference/langgraph/pregel/main/NodeBuilder.md"
    "https://reference.langchain.com/python/langgraph/channels/base/BaseChannel | reference/langgraph/channels/base/BaseChannel.md"
    "https://reference.langchain.com/python/langgraph/channels/any_value/AnyValue | reference/langgraph/channels/any_value/AnyValue.md"
    "https://reference.langchain.com/python/langgraph/channels/binop/BinaryOperatorAggregate | reference/langgraph/channels/binop/BinaryOperatorAggregate.md"
    "https://reference.langchain.com/python/langgraph/channels/ephemeral_value/EphemeralValue | reference/langgraph/channels/ephemeral_value/EphemeralValue.md"
    "https://reference.langchain.com/python/langgraph/channels/last_value/LastValue | reference/langgraph/channels/last_value/LastValue.md"
    "https://reference.langchain.com/python/langgraph/channels/topic/Topic | reference/langgraph/channels/topic/Topic.md"
    "https://reference.langchain.com/python/langgraph/config/get_store | reference/langgraph/config/get_store.md"
    "https://reference.langchain.com/python/langgraph/config/get_stream_writer | reference/langgraph/config/get_stream_writer.md"
    "https://reference.langchain.com/python/langgraph/runtime/Runtime | reference/langgraph/runtime/Runtime.md"
    "https://reference.langchain.com/python/langgraph/runtime/get_runtime | reference/langgraph/runtime/get_runtime.md"
    "https://reference.langchain.com/python/langgraph/constants/END | reference/langgraph/constants/END.md"
    "https://reference.langchain.com/python/langgraph/constants/START | reference/langgraph/constants/START.md"
    "https://reference.langchain.com/python/langgraph/constants/TAG_HIDDEN | reference/langgraph/constants/TAG_HIDDEN.md"
    "https://reference.langchain.com/python/langgraph/constants/TAG_NOSTREAM | reference/langgraph/constants/TAG_NOSTREAM.md"
    "https://reference.langchain.com/python/langgraph/managed/base/ManagedValue | reference/langgraph/managed/base/ManagedValue.md"
    "https://reference.langchain.com/python/langgraph/managed/base/ManagedValueMapping | reference/langgraph/managed/base/ManagedValueMapping.md"
    "https://reference.langchain.com/python/langgraph/managed/base/ManagedValueSpec | reference/langgraph/managed/base/ManagedValueSpec.md"
    "https://reference.langchain.com/python/langgraph/managed/base/is_managed_value | reference/langgraph/managed/base/is_managed_value.md"
    "https://reference.langchain.com/python/langgraph.store.postgres/aio/AsyncPostgresStore | reference/langgraph/store/postgres/aio/AsyncPostgresStore.md"

    # LangChain Core - class/function leaf pages (linked from the module overviews above)
    "https://reference.langchain.com/python/langchain-core/tools/base/BaseTool | reference/langchain_core/tools/base/BaseTool.md"
    "https://reference.langchain.com/python/langchain-core/tools/base/InjectedToolArg | reference/langchain_core/tools/base/InjectedToolArg.md"
    "https://reference.langchain.com/python/langchain-core/tools/base/InjectedToolCallId | reference/langchain_core/tools/base/InjectedToolCallId.md"
    "https://reference.langchain.com/python/langchain-core/tools/base/ToolException | reference/langchain_core/tools/base/ToolException.md"
    "https://reference.langchain.com/python/langchain-core/caches/BaseCache | reference/langchain_core/caches/BaseCache.md"
    "https://reference.langchain.com/python/langchain-core/caches/InMemoryCache | reference/langchain_core/caches/InMemoryCache.md"
    "https://reference.langchain.com/python/langchain-core/prompts/chat/ChatPromptTemplate | reference/langchain_core/prompts/chat/ChatPromptTemplate.md"
    "https://reference.langchain.com/python/langchain-core/retrievers/BaseRetriever | reference/langchain_core/retrievers/BaseRetriever.md"
    "https://reference.langchain.com/python/langchain-core/documents/base/Document | reference/langchain_core/documents/base/Document.md"
    "https://reference.langchain.com/python/langchain-core/documents/base/Blob | reference/langchain_core/documents/base/Blob.md"
    "https://reference.langchain.com/python/langchain-core/documents/base/BaseMedia | reference/langchain_core/documents/base/BaseMedia.md"

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

    # === DOCS: OpenAI Core concepts (direct .md) ===
    "https://developers.openai.com/api/docs/guides/text.md | docs/openai/core-concepts/text.md"
    "https://developers.openai.com/api/docs/guides/code-generation.md | docs/openai/core-concepts/code-generation.md"
    "https://developers.openai.com/api/docs/guides/images-vision.md | docs/openai/core-concepts/images-vision.md"
    "https://developers.openai.com/api/docs/guides/audio.md | docs/openai/core-concepts/audio.md"
    "https://developers.openai.com/api/docs/guides/structured-outputs.md | docs/openai/core-concepts/structured-outputs.md"
    "https://developers.openai.com/api/docs/guides/function-calling.md | docs/openai/core-concepts/function-calling.md"
    "https://developers.openai.com/api/docs/guides/migrate-to-responses.md | docs/openai/core-concepts/migrate-to-responses.md"
    "https://developers.openai.com/api/docs/guides/tools.md | docs/openai/core-concepts/tools.md"

    # === DOCS: OpenAI prompt guidance (per-model, direct .md) ===
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-5.5.md | docs/openai/prompt-guidance/gpt-5.5.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-5.4.md | docs/openai/prompt-guidance/gpt-5.4.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-5.3-codex.md | docs/openai/prompt-guidance/gpt-5.3-codex.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-5.2.md | docs/openai/prompt-guidance/gpt-5.2.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-5.1.md | docs/openai/prompt-guidance/gpt-5.1.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-5.md | docs/openai/prompt-guidance/gpt-5.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance/gpt-4.1.md | docs/openai/prompt-guidance/gpt-4.1.md"

    # === DOCS: Anthropic Claude prompt engineering and model context ===
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/overview | docs/anthropic/prompt-engineering/overview.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices | docs/anthropic/prompt-engineering/claude-prompting-best-practices.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-tools | docs/anthropic/prompt-engineering/prompting-tools.md"
    "https://platform.claude.com/docs/en/about-claude/models/overview | docs/anthropic/models/overview.md"
    "https://platform.claude.com/docs/en/about-claude/models/migration-guide | docs/anthropic/models/migration-guide.md"
    "https://platform.claude.com/docs/en/about-claude/models/whats-new-claude-4-7 | docs/anthropic/models/whats-new-claude-4-7.md"

    # === REFERENCE: Claude Agent SDK API ===
    # Raw .md URLs -- downloaded directly with curl, no scraping
    "https://code.claude.com/docs/en/agent-sdk/python.md | reference/anthropic/agent-sdk/python.md"
    "https://code.claude.com/docs/en/agent-sdk/typescript.md | reference/anthropic/agent-sdk/typescript.md"
    "https://code.claude.com/docs/en/agent-sdk/typescript-v2-preview.md | reference/anthropic/agent-sdk/typescript-v2-preview.md"

    # === DOCS: Claude Agent SDK guides ===
    "https://code.claude.com/docs/en/agent-sdk/overview.md | docs/anthropic/agent-sdk/overview.md"
    "https://code.claude.com/docs/en/agent-sdk/quickstart.md | docs/anthropic/agent-sdk/quickstart.md"
    "https://code.claude.com/docs/en/agent-sdk/agent-loop.md | docs/anthropic/agent-sdk/agent-loop.md"
    "https://code.claude.com/docs/en/agent-sdk/claude-code-features.md | docs/anthropic/agent-sdk/claude-code-features.md"
    "https://code.claude.com/docs/en/agent-sdk/cost-tracking.md | docs/anthropic/agent-sdk/cost-tracking.md"
    "https://code.claude.com/docs/en/agent-sdk/custom-tools.md | docs/anthropic/agent-sdk/custom-tools.md"
    "https://code.claude.com/docs/en/agent-sdk/file-checkpointing.md | docs/anthropic/agent-sdk/file-checkpointing.md"
    "https://code.claude.com/docs/en/agent-sdk/hooks.md | docs/anthropic/agent-sdk/hooks.md"
    "https://code.claude.com/docs/en/agent-sdk/hosting.md | docs/anthropic/agent-sdk/hosting.md"
    "https://code.claude.com/docs/en/agent-sdk/mcp.md | docs/anthropic/agent-sdk/mcp.md"
    "https://code.claude.com/docs/en/agent-sdk/migration-guide.md | docs/anthropic/agent-sdk/migration-guide.md"
    "https://code.claude.com/docs/en/agent-sdk/modifying-system-prompts.md | docs/anthropic/agent-sdk/modifying-system-prompts.md"
    "https://code.claude.com/docs/en/agent-sdk/observability.md | docs/anthropic/agent-sdk/observability.md"
    "https://code.claude.com/docs/en/agent-sdk/permissions.md | docs/anthropic/agent-sdk/permissions.md"
    "https://code.claude.com/docs/en/agent-sdk/plugins.md | docs/anthropic/agent-sdk/plugins.md"
    "https://code.claude.com/docs/en/agent-sdk/secure-deployment.md | docs/anthropic/agent-sdk/secure-deployment.md"
    "https://code.claude.com/docs/en/agent-sdk/sessions.md | docs/anthropic/agent-sdk/sessions.md"
    "https://code.claude.com/docs/en/agent-sdk/skills.md | docs/anthropic/agent-sdk/skills.md"
    "https://code.claude.com/docs/en/agent-sdk/slash-commands.md | docs/anthropic/agent-sdk/slash-commands.md"
    "https://code.claude.com/docs/en/agent-sdk/streaming-output.md | docs/anthropic/agent-sdk/streaming-output.md"
    "https://code.claude.com/docs/en/agent-sdk/streaming-vs-single-mode.md | docs/anthropic/agent-sdk/streaming-vs-single-mode.md"
    "https://code.claude.com/docs/en/agent-sdk/structured-outputs.md | docs/anthropic/agent-sdk/structured-outputs.md"
    "https://code.claude.com/docs/en/agent-sdk/subagents.md | docs/anthropic/agent-sdk/subagents.md"
    "https://code.claude.com/docs/en/agent-sdk/todo-tracking.md | docs/anthropic/agent-sdk/todo-tracking.md"
    "https://code.claude.com/docs/en/agent-sdk/tool-search.md | docs/anthropic/agent-sdk/tool-search.md"
    "https://code.claude.com/docs/en/agent-sdk/user-input.md | docs/anthropic/agent-sdk/user-input.md"
)

process_url() {
    local item="$1"
    local url
    local relative_path
    local full_output_path
    local target_dir

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

    # If the URL already points to raw markdown, just download it directly.
    # Otherwise, use the HTML-to-markdown scraper.
    if [[ "$url" == *.md ]]; then
        curl -sSL --fail -o "$full_output_path" "$url"
    else
        python web2llms.py "$url" -o "$full_output_path"
    fi
}

wait_for_pending_jobs() {
    local pid
    local failed=0

    for pid in "${pending_pids[@]}"; do
        if ! wait "$pid"; then
            failed=1
        fi
    done

    pending_pids=()

    if [ "$failed" -ne 0 ]; then
        echo "Error: one or more URL processing jobs failed."
        exit 1
    fi
}

# --- EXECUTION START ---

echo ">>> Starting Workflow..."

# 1. Change Directory
echo ">>> Moving to project directory: $PROJECT_DIR"
cd "$PROJECT_DIR"

# 2. Activate Venv
echo ">>> Activating Python virtual environment..."
source .venv/bin/activate

# 3. Loop through the list and run the URL jobs in bounded parallel batches
case "$CONCURRENCY" in
    ''|*[!0-9]*)
        echo "Error: CONCURRENCY must be a positive integer."
        exit 1
        ;;
esac

if [ "$CONCURRENCY" -lt 1 ]; then
    echo "Error: CONCURRENCY must be a positive integer."
    exit 1
fi

echo ">>> Processing ${#URL_LIST[@]} URLs with concurrency $CONCURRENCY..."

pending_pids=()

for item in "${URL_LIST[@]}"; do
    process_url "$item" &
    pending_pids+=("$!")

    if [ "${#pending_pids[@]}" -ge "$CONCURRENCY" ]; then
        wait_for_pending_jobs
    fi
done

if [ "${#pending_pids[@]}" -gt 0 ]; then
    wait_for_pending_jobs
fi

# 3b. Generate GitHub release notes (feature-focused, re-runnable)
echo ">>> Generating GitHub release notes..."
python release_notes.py

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
