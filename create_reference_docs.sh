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
    "https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic | reference/integrations/ChatAnthropic.md"
    "https://reference.langchain.com/python/langchain-openai/chat_models/base/ChatOpenAI | reference/integrations/ChatOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI | reference/integrations/BaseChatOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/chat_models/azure/AzureChatOpenAI | reference/integrations/AzureChatOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings | reference/integrations/OpenAIEmbeddings.md"
    "https://reference.langchain.com/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings | reference/integrations/AzureOpenAIEmbeddings.md"
    "https://reference.langchain.com/python/langchain-openai/llms/base/OpenAI | reference/integrations/OpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI | reference/integrations/BaseOpenAI.md"
    "https://reference.langchain.com/python/langchain-openai/llms/azure/AzureOpenAI | reference/integrations/AzureOpenAI.md"
    "https://reference.langchain.com/python/integrations/langchain_aws/ | reference/integrations/langchain_aws.md"
    "https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock | reference/integrations/ChatBedrock.md"
    "https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse | reference/integrations/ChatBedrockConverse.md"
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

    # === DOCS: OpenAI Agents SDK (direct .md) ===
    "https://developers.openai.com/api/docs/guides/agents.md | docs/openai/agents-sdk/overview.md"
    "https://developers.openai.com/api/docs/guides/agents/quickstart.md | docs/openai/agents-sdk/quickstart.md"
    "https://developers.openai.com/api/docs/guides/agents/define-agents.md | docs/openai/agents-sdk/define-agents.md"
    "https://developers.openai.com/api/docs/guides/agents/models.md | docs/openai/agents-sdk/models.md"
    "https://developers.openai.com/api/docs/guides/agents/running-agents.md | docs/openai/agents-sdk/running-agents.md"
    "https://developers.openai.com/api/docs/guides/agents/sandboxes.md | docs/openai/agents-sdk/sandboxes.md"
    "https://developers.openai.com/api/docs/guides/agents/orchestration.md | docs/openai/agents-sdk/orchestration.md"
    "https://developers.openai.com/api/docs/guides/agents/guardrails-approvals.md | docs/openai/agents-sdk/guardrails-approvals.md"
    "https://developers.openai.com/api/docs/guides/agents/results.md | docs/openai/agents-sdk/results.md"
    "https://developers.openai.com/api/docs/guides/agents/integrations-observability.md | docs/openai/agents-sdk/integrations-observability.md"
    "https://developers.openai.com/api/docs/guides/agent-evals.md | docs/openai/agents-sdk/agent-evals.md"
    "https://developers.openai.com/api/docs/guides/voice-agents.md | docs/openai/agents-sdk/voice-agents.md"

    # === DOCS: OpenAI prompting overview and best practices (direct .md) ===
    "https://developers.openai.com/api/docs/guides/prompting.md | docs/openai/prompt-guidance/overview.md"
    "https://developers.openai.com/api/docs/guides/prompt-engineering.md | docs/openai/prompt-guidance/prompt-engineering.md"

    # Model-specific guides from https://developers.openai.com/api/docs/llms.txt
    # Family guides cover variants together; avoid duplicating the same document.
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-6-astra.md | docs/openai/prompt-guidance/gpt-6.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.6.md | docs/openai/prompt-guidance/gpt-5.6.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance-gpt-5p6.md | docs/openai/prompt-guidance/gpt-5.6-sol.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.5.md | docs/openai/prompt-guidance/gpt-5.5.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.4.md | docs/openai/prompt-guidance/gpt-5.4.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.3-codex.md | docs/openai/prompt-guidance/gpt-5.3-codex.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.2.md | docs/openai/prompt-guidance/gpt-5.2.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.1.md | docs/openai/prompt-guidance/gpt-5.1.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.md | docs/openai/prompt-guidance/gpt-5.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-4.1.md | docs/openai/prompt-guidance/gpt-4.1.md"

    # Reasoning and multimodal model prompting guides
    "https://developers.openai.com/api/docs/guides/reasoning-best-practices.md | docs/openai/prompt-guidance/reasoning-best-practices.md"
    "https://developers.openai.com/api/docs/guides/voice-prompting.md | docs/openai/prompt-guidance/voice-prompting.md"
    "https://developers.openai.com/api/docs/guides/live-prompting.md | docs/openai/prompt-guidance/live-prompting.md"
    "https://developers.openai.com/api/docs/guides/image-prompting.md | docs/openai/prompt-guidance/image-prompting.md"

    # === DOCS: OpenAI Getting started (direct .md) ===
    "https://developers.openai.com/api/docs/quickstart.md | docs/openai/getting-started/quickstart.md"
    "https://developers.openai.com/api/docs/concepts.md | docs/openai/getting-started/concepts.md"
    "https://developers.openai.com/api/docs/libraries.md | docs/openai/getting-started/libraries.md"
    "https://developers.openai.com/api/docs/libraries/openai-cli.md | docs/openai/getting-started/libraries/openai-cli.md"

    # === DOCS: OpenAI Responses and Decisions (direct .md) ===
    "https://developers.openai.com/api/docs/guides/decisions.md | docs/openai/core-concepts/decisions.md"
    "https://developers.openai.com/api/docs/guides/decisions-voice.md | docs/openai/core-concepts/decisions-voice.md"
    "https://developers.openai.com/api/docs/guides/conversation-state.md | docs/openai/core-concepts/conversation-state.md"
    "https://developers.openai.com/api/docs/guides/background.md | docs/openai/core-concepts/background.md"
    "https://developers.openai.com/api/docs/guides/streaming-responses.md | docs/openai/core-concepts/streaming-responses.md"
    "https://developers.openai.com/api/docs/guides/websocket-mode.md | docs/openai/core-concepts/websocket-mode.md"
    "https://developers.openai.com/api/docs/guides/steering.md | docs/openai/core-concepts/steering.md"
    "https://developers.openai.com/api/docs/guides/responses-multi-agent.md | docs/openai/core-concepts/responses-multi-agent.md"
    "https://developers.openai.com/api/docs/guides/webhooks.md | docs/openai/core-concepts/webhooks.md"
    "https://developers.openai.com/api/docs/guides/file-inputs.md | docs/openai/core-concepts/file-inputs.md"
    "https://developers.openai.com/api/docs/guides/compaction.md | docs/openai/core-concepts/compaction.md"
    "https://developers.openai.com/api/docs/guides/token-counting.md | docs/openai/core-concepts/token-counting.md"
    "https://developers.openai.com/api/docs/guides/reasoning.md | docs/openai/core-concepts/reasoning.md"

    # === DOCS: OpenAI Hosted Agents API (direct .md) ===
    "https://developers.openai.com/api/docs/guides/agents-api/architecture.md | docs/openai/agents-api/architecture.md"
    "https://developers.openai.com/api/docs/guides/agents-api/bedrock-managed-agents.md | docs/openai/agents-api/bedrock-managed-agents.md"
    "https://developers.openai.com/api/docs/guides/agents-api/configuration.md | docs/openai/agents-api/configuration.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/files.md | docs/openai/agents-api/environments/files.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/lifecycle.md | docs/openai/agents-api/environments/lifecycle.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/openai-hosted.md | docs/openai/agents-api/environments/openai-hosted.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/prewarmed.md | docs/openai/agents-api/environments/prewarmed.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/aws.md | docs/openai/agents-api/environments/providers/aws.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/blaxel.md | docs/openai/agents-api/environments/providers/blaxel.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/cloudflare.md | docs/openai/agents-api/environments/providers/cloudflare.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/databricks.md | docs/openai/agents-api/environments/providers/databricks.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/daytona.md | docs/openai/agents-api/environments/providers/daytona.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/digitalocean.md | docs/openai/agents-api/environments/providers/digitalocean.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/e2b.md | docs/openai/agents-api/environments/providers/e2b.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/modal.md | docs/openai/agents-api/environments/providers/modal.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/oci.md | docs/openai/agents-api/environments/providers/oci.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/providers/vercel.md | docs/openai/agents-api/environments/providers/vercel.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/security.md | docs/openai/agents-api/environments/security.md"
    "https://developers.openai.com/api/docs/guides/agents-api/environments/self-hosted.md | docs/openai/agents-api/environments/self-hosted.md"
    "https://developers.openai.com/api/docs/guides/agents-api/errors.md | docs/openai/agents-api/errors.md"
    "https://developers.openai.com/api/docs/guides/agents-api/multi-agent.md | docs/openai/agents-api/multi-agent.md"
    "https://developers.openai.com/api/docs/guides/agents-api/observability.md | docs/openai/agents-api/observability.md"
    "https://developers.openai.com/api/docs/guides/agents-api/overview.md | docs/openai/agents-api/overview.md"
    "https://developers.openai.com/api/docs/guides/agents-api/quickstart.md | docs/openai/agents-api/quickstart.md"
    "https://developers.openai.com/api/docs/guides/agents-api/sessions.md | docs/openai/agents-api/sessions.md"
    "https://developers.openai.com/api/docs/guides/agents-api/sessions/automations.md | docs/openai/agents-api/sessions/automations.md"
    "https://developers.openai.com/api/docs/guides/agents-api/sessions/events.md | docs/openai/agents-api/sessions/events.md"
    "https://developers.openai.com/api/docs/guides/agents-api/sessions/manage.md | docs/openai/agents-api/sessions/manage.md"
    "https://developers.openai.com/api/docs/guides/agents-api/sessions/webhooks.md | docs/openai/agents-api/sessions/webhooks.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tools/computer-use.md | docs/openai/agents-api/tools/computer-use.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tools/functions.md | docs/openai/agents-api/tools/functions.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tools/mcp.md | docs/openai/agents-api/tools/mcp.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tools/plugins.md | docs/openai/agents-api/tools/plugins.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tools/vaults.md | docs/openai/agents-api/tools/vaults.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tools/web-search.md | docs/openai/agents-api/tools/web-search.md"
    "https://developers.openai.com/api/docs/guides/agents-api/tracing.md | docs/openai/agents-api/tracing.md"

    # === DOCS: OpenAI Agents SDK (direct .md) ===
    "https://developers.openai.com/api/docs/guides/agents/sdk.md | docs/openai/agents-sdk/sdk.md"

    # === DOCS: OpenAI Tools (direct .md) ===
    "https://developers.openai.com/api/docs/guides/tools-apply-patch.md | docs/openai/tools/tools-apply-patch.md"
    "https://developers.openai.com/api/docs/guides/tools-code-interpreter.md | docs/openai/tools/tools-code-interpreter.md"
    "https://developers.openai.com/api/docs/guides/tools-computer-use-integration.md | docs/openai/tools/tools-computer-use-integration.md"
    "https://developers.openai.com/api/docs/guides/tools-computer-use-sdk-drivers.md | docs/openai/tools/tools-computer-use-sdk-drivers.md"
    "https://developers.openai.com/api/docs/guides/tools-computer-use.md | docs/openai/tools/tools-computer-use.md"
    "https://developers.openai.com/api/docs/guides/tools-connectors-mcp.md | docs/openai/tools/tools-connectors-mcp.md"
    "https://developers.openai.com/api/docs/guides/tools-file-search.md | docs/openai/tools/tools-file-search.md"
    "https://developers.openai.com/api/docs/guides/tools-image-generation.md | docs/openai/tools/tools-image-generation.md"
    "https://developers.openai.com/api/docs/guides/tools-local-shell.md | docs/openai/tools/tools-local-shell.md"
    "https://developers.openai.com/api/docs/guides/tools-programmatic-tool-calling.md | docs/openai/tools/tools-programmatic-tool-calling.md"
    "https://developers.openai.com/api/docs/guides/tools-shell.md | docs/openai/tools/tools-shell.md"
    "https://developers.openai.com/api/docs/guides/tools-skills.md | docs/openai/tools/tools-skills.md"
    "https://developers.openai.com/api/docs/guides/tools-tool-search.md | docs/openai/tools/tools-tool-search.md"
    "https://developers.openai.com/api/docs/guides/tools-web-search.md | docs/openai/tools/tools-web-search.md"
    "https://developers.openai.com/api/docs/guides/retrieval.md | docs/openai/tools/retrieval.md"
    "https://developers.openai.com/api/docs/guides/secure-mcp-tunnels.md | docs/openai/tools/secure-mcp-tunnels.md"
    "https://developers.openai.com/api/docs/guides/async-tool-calling.md | docs/openai/tools/async-tool-calling.md"
    "https://developers.openai.com/api/docs/mcp.md | docs/openai/tools/mcp.md"

    # === DOCS: OpenAI Production (direct .md) ===
    "https://developers.openai.com/api/docs/guides/production-best-practices.md | docs/openai/production/production-best-practices.md"
    "https://developers.openai.com/api/docs/guides/deployment-checklist.md | docs/openai/production/deployment-checklist.md"
    "https://developers.openai.com/api/docs/guides/fast-mode.md | docs/openai/production/fast-mode.md"
    "https://developers.openai.com/api/docs/guides/ultrafast-mode.md | docs/openai/production/ultrafast-mode.md"
    "https://developers.openai.com/api/docs/guides/latency-optimization.md | docs/openai/production/latency-optimization.md"
    "https://developers.openai.com/api/docs/guides/predicted-outputs.md | docs/openai/production/predicted-outputs.md"
    "https://developers.openai.com/api/docs/guides/optimizing-llm-accuracy.md | docs/openai/production/optimizing-llm-accuracy.md"
    "https://developers.openai.com/api/docs/guides/evaluation-best-practices.md | docs/openai/production/evaluation-best-practices.md"
    "https://developers.openai.com/api/docs/guides/promptfoo-codex.md | docs/openai/production/promptfoo-codex.md"
    "https://developers.openai.com/api/docs/guides/cost-optimization.md | docs/openai/production/cost-optimization.md"
    "https://developers.openai.com/api/docs/guides/prompt-caching.md | docs/openai/production/prompt-caching.md"
    "https://developers.openai.com/api/docs/guides/prompt-caching/diagnostics.md | docs/openai/production/prompt-caching/diagnostics.md"
    "https://developers.openai.com/api/docs/guides/batch.md | docs/openai/production/batch.md"
    "https://developers.openai.com/api/docs/guides/flex-processing.md | docs/openai/production/flex-processing.md"
    "https://developers.openai.com/api/docs/guides/safety-best-practices.md | docs/openai/production/safety-best-practices.md"
    "https://developers.openai.com/api/docs/guides/red-teaming.md | docs/openai/production/red-teaming.md"
    "https://developers.openai.com/api/docs/guides/your-data.md | docs/openai/production/your-data.md"
    "https://developers.openai.com/api/docs/guides/rbac.md | docs/openai/production/rbac.md"
    "https://developers.openai.com/api/docs/guides/rate-limits.md | docs/openai/production/rate-limits.md"
    "https://developers.openai.com/api/docs/guides/spend-limits.md | docs/openai/production/spend-limits.md"
    "https://developers.openai.com/api/docs/guides/admin-apis.md | docs/openai/production/admin-apis.md"
    "https://developers.openai.com/api/docs/guides/error-codes.md | docs/openai/production/error-codes.md"

    # === DOCS: OpenAI Additional prompting (direct .md) ===
    "https://developers.openai.com/api/docs/guides/citation-formatting.md | docs/openai/prompt-guidance/citation-formatting.md"
    "https://developers.openai.com/api/docs/guides/prompting/migrate-from-prompt-object.md | docs/openai/prompt-guidance/prompting/migrate-from-prompt-object.md"
    "https://developers.openai.com/api/docs/guides/prompt-generation.md | docs/openai/prompt-guidance/prompt-generation.md"
    "https://developers.openai.com/api/docs/guides/frontend-prompt.md | docs/openai/prompt-guidance/frontend-prompt.md"

    # === DOCS: Anthropic Claude prompt engineering (direct .md) ===
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/overview.md | docs/anthropic/prompt-engineering/overview.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices.md | docs/anthropic/prompt-engineering/claude-prompting-best-practices.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-tools.md | docs/anthropic/prompt-engineering/prompting-tools.md"

    # Model-specific guides linked from Prompting best practices
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-1.md | docs/anthropic/prompt-engineering/prompting-claude-fable-5-1.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5.md | docs/anthropic/prompt-engineering/prompting-claude-fable-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5-5.md | docs/anthropic/prompt-engineering/prompting-claude-opus-5-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5.md | docs/anthropic/prompt-engineering/prompting-claude-opus-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-4-8.md | docs/anthropic/prompt-engineering/prompting-claude-opus-4-8.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-sonnet-5-5.md | docs/anthropic/prompt-engineering/prompting-claude-sonnet-5-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-sonnet-5.md | docs/anthropic/prompt-engineering/prompting-claude-sonnet-5.md"

    # === DOCS: Anthropic Claude model context (direct .md) ===
    "https://platform.claude.com/docs/en/about-claude/models/overview.md | docs/anthropic/models/overview.md"
    "https://platform.claude.com/docs/en/about-claude/models/migration-guide.md | docs/anthropic/models/migration-guide.md"
    "https://platform.claude.com/docs/en/about-claude/models/whats-new-claude-4-7.md | docs/anthropic/models/whats-new-claude-4-7.md"

    # === REFERENCE: Claude Agent SDK API ===
    # Raw .md URLs -- downloaded directly with curl, no scraping
    "https://code.claude.com/docs/en/agent-sdk/python.md | reference/anthropic/agent-sdk/python.md"
    "https://code.claude.com/docs/en/agent-sdk/typescript.md | reference/anthropic/agent-sdk/typescript.md"

    # === DOCS: Claude Agent SDK guides ===
    "https://code.claude.com/docs/en/agent-sdk/overview.md | docs/anthropic/agent-sdk/overview.md"
    "https://code.claude.com/docs/en/agent-sdk/quickstart.md | docs/anthropic/agent-sdk/quickstart.md"
    "https://code.claude.com/docs/en/agent-sdk/troubleshooting.md | docs/anthropic/agent-sdk/troubleshooting.md"
    "https://code.claude.com/docs/en/agent-sdk/configuration.md | docs/anthropic/agent-sdk/configuration.md"
    "https://code.claude.com/docs/en/agent-sdk/examples.md | docs/anthropic/agent-sdk/examples.md"
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
    "https://code.claude.com/docs/en/agent-sdk/session-storage.md | docs/anthropic/agent-sdk/session-storage.md"
    "https://code.claude.com/docs/en/agent-sdk/skills.md | docs/anthropic/agent-sdk/skills.md"
    "https://code.claude.com/docs/en/agent-sdk/streaming-output.md | docs/anthropic/agent-sdk/streaming-output.md"
    "https://code.claude.com/docs/en/agent-sdk/streaming-vs-single-mode.md | docs/anthropic/agent-sdk/streaming-vs-single-mode.md"
    "https://code.claude.com/docs/en/agent-sdk/structured-outputs.md | docs/anthropic/agent-sdk/structured-outputs.md"
    "https://code.claude.com/docs/en/agent-sdk/subagents.md | docs/anthropic/agent-sdk/subagents.md"
    "https://code.claude.com/docs/en/agent-sdk/todo-tracking.md | docs/anthropic/agent-sdk/todo-tracking.md"
    "https://code.claude.com/docs/en/agent-sdk/tool-search.md | docs/anthropic/agent-sdk/tool-search.md"
    "https://code.claude.com/docs/en/agent-sdk/user-input.md | docs/anthropic/agent-sdk/user-input.md"
)

clean_output_directories() {
    # OUTPUT_DIR is normally ".": remove only the generated subdirectories.
    # Release notes use their own project-relative destination.
    echo ">>> Cleaning generated reference, docs, and release-notes directories..."
    rm -rf -- "$OUTPUT_DIR/reference" "$OUTPUT_DIR/docs" "$PROJECT_DIR/release-notes"
    mkdir -p -- "$OUTPUT_DIR/reference" "$OUTPUT_DIR/docs" "$PROJECT_DIR/release-notes"
}

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
    # These class references also need docstring repair and linked method details.
    # Other HTML pages use the existing scraper.
    if [[ "$relative_path" == reference/integrations/ChatAnthropic.md ||
          "$relative_path" == reference/integrations/ChatBedrock.md ||
          "$relative_path" == reference/integrations/ChatBedrockConverse.md ]]; then
        python langchain_reference.py "$url" -o "$full_output_path" --include-methods
    elif [[ "$url" == *.md ]]; then
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

# Validate concurrency before removing previous artifacts.
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

# 3. Clean previous artifacts before regenerating documentation.
clean_output_directories

# 4. Loop through the list and run the URL jobs in bounded parallel batches
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

# 5. Generate GitHub release notes (feature-focused, re-runnable)
echo ">>> Generating GitHub release notes..."
python release_notes.py

# 6. Git Operations
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
