#!/bin/bash

# Exit immediately if any command returns a non-zero status
set -e

# --- CONFIGURATION ---

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Everything generated goes under this folder (reference/, docs/, release-notes/).
# Its hand-written CLAUDE.md guide is left untouched by regeneration.
OUTPUT_DIR="context"
COMMIT_MSG="Auto-update: Generated new artifacts via web2llms"
CONCURRENCY="${CONCURRENCY:-8}"

# --- URL MAPPING (Bash 3.2 Compatible) ---
# Syntax: "URL | reference|docs/SUBDIRECTORY/FILENAME"
# Note: Use the pipe character '|' to separate the URL and the Filepath
# Paths are relative to OUTPUT_DIR and split into:
#   reference/  -- API references, SQL/Python function refs, REST endpoint specs
#   docs/       -- Conceptual guides, overviews, prompt engineering, model docs
# When you add a new source or topic, also update OUTPUT_DIR/CLAUDE.md.

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
    "https://reference.langchain.com/python/langchain-aws | reference/integrations/langchain_aws.md"
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
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-compact | reference/snowflake/cortex/rest-api/cortex-agents-compact-rest-api.md"
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
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/snowflake-cowork | docs/snowflake/cortex/snowflake-cowork.md"

    # === DOCS: Snowflake Cortex Agents guides ===
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-get-started | docs/snowflake/cortex/agents/get-started.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-manage | docs/snowflake/cortex/agents/manage.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-setup | docs/snowflake/cortex/agents/setup.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-toolsets | docs/snowflake/cortex/agents/toolsets.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-skills | docs/snowflake/cortex/agents/skills.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-analytical-search | docs/snowflake/cortex/agents/analytical-search.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-ask-user-question-tool | docs/snowflake/cortex/agents/ask-user-question-tool.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-code-execution-tool | docs/snowflake/cortex/agents/code-execution-tool.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-coding-agent | docs/snowflake/cortex/agents/coding-agent.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-threads | docs/snowflake/cortex/agents/threads.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-router | docs/snowflake/cortex/agents/router.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-mcp-connectors | docs/snowflake/cortex/agents/mcp-connectors.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-inaccessible-tool-handling | docs/snowflake/cortex/agents/inaccessible-tool-handling.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-evaluations | docs/snowflake/cortex/agents/evaluations.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-monitor | docs/snowflake/cortex/agents/monitor.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-versioning | docs/snowflake/cortex/agents/versioning.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-sharing | docs/snowflake/cortex/agents/sharing.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-temporary | docs/snowflake/cortex/agents/temporary.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-secure | docs/snowflake/cortex/agents/secure.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-multi-tenancy | docs/snowflake/cortex/agents/multi-tenancy.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-resource-budgets | docs/snowflake/cortex/agents/resource-budgets.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-shared-budgets | docs/snowflake/cortex/agents/shared-budgets.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-teams-integration | docs/snowflake/cortex/agents/teams-integration.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-search/cortex-search-agents | docs/snowflake/cortex/agents/cortex-search-tool.md"

    # === DOCS / REFERENCE: Snowflake Cortex Agent SDK ===
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/cortex-agent-sdk | docs/snowflake/cortex/agent-sdk/overview.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/quickstart | docs/snowflake/cortex/agent-sdk/quickstart.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/sdk-features | docs/snowflake/cortex/agent-sdk/features.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/conversations | docs/snowflake/cortex/agent-sdk/conversations.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/running-agents | docs/snowflake/cortex/agent-sdk/running-agents.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/async-python | docs/snowflake/cortex/agent-sdk/async-python.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/authentication | docs/snowflake/cortex/agent-sdk/authentication.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/automations | docs/snowflake/cortex/agent-sdk/automations.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/cortex-code | docs/snowflake/cortex/agent-sdk/cortex-code.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/sdk-reference | reference/snowflake/cortex/agent-sdk/sdk-reference.md"

    # === REFERENCE: Snowflake agent SQL commands and functions ===
    "https://docs.snowflake.com/en/sql-reference/sql/create-agent | reference/snowflake/cortex/sql/create-agent.md"
    "https://docs.snowflake.com/en/sql-reference/sql/alter-agent | reference/snowflake/cortex/sql/alter-agent.md"
    "https://docs.snowflake.com/en/sql-reference/sql/desc-agent | reference/snowflake/cortex/sql/desc-agent.md"
    "https://docs.snowflake.com/en/sql-reference/sql/show-agents | reference/snowflake/cortex/sql/show-agents.md"
    "https://docs.snowflake.com/en/sql-reference/sql/drop-agent | reference/snowflake/cortex/sql/drop-agent.md"
    "https://docs.snowflake.com/en/sql-reference/sql/undrop-agent | reference/snowflake/cortex/sql/undrop-agent.md"
    "https://docs.snowflake.com/en/sql-reference/functions/data_agent_run-snowflake-cortex | reference/snowflake/cortex/data_agent_run.md"

    # === DOCS: Snowflake Cortex Analyst guides (text-to-SQL tool for agents) ===
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/cortex-analyst-routing-mode | docs/snowflake/cortex/analyst/routing-mode.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/analyst-optimization | docs/snowflake/cortex/analyst/verified-queries-optimization.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/cortex-analyst-search-integration | docs/snowflake/cortex/analyst/search-integration.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/suggested-questions-feature | docs/snowflake/cortex/analyst/onboarding-questions.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst-evaluations | docs/snowflake/cortex/analyst/evaluations.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/admin-observability | docs/snowflake/cortex/analyst/admin-monitoring.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/tutorials/tutorial-1 | docs/snowflake/cortex/analyst/tutorial-time-series-revenue.md"

    # === DOCS: Snowflake CoWork agent development ===
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/snowflake-cowork/build-agents | docs/snowflake/cortex/cowork/build-agents.md"
    "https://docs.snowflake.com/en/user-guide/snowflake-cortex/snowflake-cowork/call-cowork-profile-from-api | docs/snowflake/cortex/cowork/call-profile-from-agents-api.md"

    # === DOCS: Snowflake Cortex AI Cookbook (agent patterns; code-only pages skipped) ===
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/overview | docs/snowflake/cortex/cookbook/overview.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/scoping-agentic-implementations | docs/snowflake/cortex/cookbook/scoping-agentic-implementations.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/mcp-or-agent-rest-api | docs/snowflake/cortex/cookbook/mcp-or-agent-rest-api.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/multi-agent-orchestration | docs/snowflake/cortex/cookbook/multi-agent-orchestration.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/multi-agent-orchestration/design-guidance | docs/snowflake/cortex/cookbook/multi-agent-orchestration-design-guidance.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/multi-tenant-agents | docs/snowflake/cortex/cookbook/multi-tenant-agents.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/oauth-token-passthrough | docs/snowflake/cortex/cookbook/oauth-token-passthrough.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/embedded-app-context | docs/snowflake/cortex/cookbook/embedded-app-context.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/document-context | docs/snowflake/cortex/cookbook/document-context.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/long-running-agents-over-mcp | docs/snowflake/cortex/cookbook/long-running-agents-over-mcp.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/langchain-mcp-agent-tracing | docs/snowflake/cortex/cookbook/langchain-mcp-agent-tracing.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-causal-grounding | docs/snowflake/cortex/cookbook/agent-causal-grounding.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-causal-grounding/design | docs/snowflake/cortex/cookbook/agent-causal-grounding-design.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-causal-grounding/adding-a-use-case | docs/snowflake/cortex/cookbook/agent-causal-grounding-adding-a-use-case.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agentic-schema-mapping | docs/snowflake/cortex/cookbook/agentic-schema-mapping.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/explain-model-predictions | docs/snowflake/cortex/cookbook/explain-model-predictions.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-evaluations | docs/snowflake/cortex/cookbook/agent-evaluations.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-versioning-and-promotion | docs/snowflake/cortex/cookbook/agent-versioning-and-promotion.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-ci-cd-with-dbt | docs/snowflake/cortex/cookbook/agent-ci-cd-with-dbt.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-feedback-to-evals | docs/snowflake/cortex/cookbook/agent-feedback-to-evals.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/agent-feedback-to-memory | docs/snowflake/cortex/cookbook/agent-feedback-to-memory.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/refinement-loop-from-agent-logs | docs/snowflake/cortex/cookbook/refinement-loop-from-agent-logs.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/mixed-grain-and-verified-queries | docs/snowflake/cortex/cookbook/mixed-grain-and-verified-queries.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/description-quality | docs/snowflake/cortex/cookbook/description-quality.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/diagnose-agent-requests | docs/snowflake/cortex/cookbook/diagnose-agent-requests.md"
    "https://docs.snowflake.com/en/developer-guide/cortex-ai-cookbook/ai-usage-cost-attribution | docs/snowflake/cortex/cookbook/ai-usage-cost-attribution.md"

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
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-6.2-astra.md | docs/openai/prompt-guidance/gpt-6.2.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.6.md | docs/openai/prompt-guidance/gpt-5.6.md"
    "https://developers.openai.com/api/docs/guides/prompt-guidance-gpt-5p6.md | docs/openai/prompt-guidance/gpt-5.6-sol.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.5.md | docs/openai/prompt-guidance/gpt-5.5.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.4.md | docs/openai/prompt-guidance/gpt-5.4.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.3-codex.md | docs/openai/prompt-guidance/gpt-5.3-codex.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.2.md | docs/openai/prompt-guidance/gpt-5.2.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.1.md | docs/openai/prompt-guidance/gpt-5.1.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-5.md | docs/openai/prompt-guidance/gpt-5.md"
    "https://developers.openai.com/api/docs/guides/latest-model/gpt-4.1.md | docs/openai/prompt-guidance/gpt-4.1.md"

    # Upgrade guides (what to change in prompts when moving to a newer model)
    "https://developers.openai.com/api/docs/guides/upgrading-to-gpt-5p6-sol.md | docs/openai/prompt-guidance/upgrading-to-gpt-5.6-sol.md"
    "https://developers.openai.com/api/docs/guides/upgrading-to-gpt-5p5.md | docs/openai/prompt-guidance/upgrading-to-gpt-5.5.md"
    "https://developers.openai.com/api/docs/guides/upgrading-to-gpt-5p4.md | docs/openai/prompt-guidance/upgrading-to-gpt-5.4.md"
    "https://developers.openai.com/api/docs/guides/prompt-optimizer.md | docs/openai/prompt-guidance/prompt-optimizer.md"

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

    # === DOCS: OpenAI Codex SDK (direct .md) ===
    # Separate from the Agents SDK: embeds the Codex coding agent in your own code.
    "https://learn.chatgpt.com/docs/codex-sdk.md | docs/openai/codex-sdk/overview.md"
    "https://raw.githubusercontent.com/openai/codex/main/sdk/python/docs/getting-started.md | docs/openai/codex-sdk/python-getting-started.md"
    "https://raw.githubusercontent.com/openai/codex/main/sdk/python/docs/faq.md | docs/openai/codex-sdk/python-faq.md"
    "https://learn.chatgpt.com/docs/app-server.md | docs/openai/codex-sdk/app-server.md"
    "https://learn.chatgpt.com/docs/non-interactive-mode.md | docs/openai/codex-sdk/non-interactive-mode.md"
    "https://learn.chatgpt.com/docs/github-action.md | docs/openai/codex-sdk/github-action.md"
    "https://learn.chatgpt.com/docs/prompting.md | docs/openai/codex-sdk/prompting.md"
    "https://learn.chatgpt.com/guides/prompting-gpt-6-2-astra.md | docs/openai/codex-sdk/prompting-gpt-6.2.md"

    # === REFERENCE: OpenAI Codex SDK API (direct .md) ===
    "https://raw.githubusercontent.com/openai/codex/main/sdk/typescript/README.md | reference/openai/codex-sdk/typescript.md"
    "https://raw.githubusercontent.com/openai/codex/main/sdk/python/README.md | reference/openai/codex-sdk/python.md"
    "https://raw.githubusercontent.com/openai/codex/main/sdk/python/docs/api-reference.md | reference/openai/codex-sdk/python-api-reference.md"
    "https://learn.chatgpt.com/docs/config-file/config-reference.md | reference/openai/codex-sdk/config-reference.md"
    "https://raw.githubusercontent.com/openai/codex/main/codex-rs/app-server/README.md | reference/openai/codex-sdk/app-server-integration.md"

    # === DOCS: Codex agent configuration used by the SDK (direct .md) ===
    # What the SDK settings control: sandboxMode, approvalPolicy, apiKey/baseUrl,
    # model/modelReasoningEffort, config/configOverrides (MCP, hooks, skills),
    # and AGENTS.md instructions picked up from workingDirectory.
    "https://learn.chatgpt.com/docs/config-file/config-basic.md | docs/openai/codex-sdk/agent-config/config-basic.md"
    "https://learn.chatgpt.com/docs/config-file/config-advanced.md | docs/openai/codex-sdk/agent-config/config-advanced.md"
    "https://learn.chatgpt.com/docs/auth.md | docs/openai/codex-sdk/agent-config/auth.md"
    "https://learn.chatgpt.com/docs/models.md | docs/openai/codex-sdk/agent-config/models.md"
    "https://learn.chatgpt.com/docs/sandboxing.md | docs/openai/codex-sdk/agent-config/sandboxing.md"
    "https://learn.chatgpt.com/docs/permissions.md | docs/openai/codex-sdk/agent-config/permissions.md"
    "https://learn.chatgpt.com/docs/agent-approvals-security.md | docs/openai/codex-sdk/agent-config/approvals-and-security.md"
    "https://learn.chatgpt.com/docs/agent-configuration/agents-md.md | docs/openai/codex-sdk/agent-config/agents-md.md"
    "https://learn.chatgpt.com/docs/agent-configuration/subagents.md | docs/openai/codex-sdk/agent-config/subagents.md"
    "https://learn.chatgpt.com/docs/extend/mcp.md | docs/openai/codex-sdk/agent-config/mcp.md"
    "https://learn.chatgpt.com/docs/hooks.md | docs/openai/codex-sdk/agent-config/hooks.md"
    "https://learn.chatgpt.com/docs/build-skills.md | docs/openai/codex-sdk/agent-config/skills.md"

    # === DOCS: Building on Codex - blog and cookbook guides (direct .md) ===
    "https://developers.openai.com/blog/codex-as-a-platform.md | docs/openai/codex-sdk/guides/codex-as-a-platform.md"
    "https://developers.openai.com/blog/securing-persistent-agents-like-openclaw-at-openai.md | docs/openai/codex-sdk/guides/securing-persistent-agents.md"
    "https://developers.openai.com/cookbook/examples/codex/build_iterative_repair_loops_with_codex.md | docs/openai/codex-sdk/guides/iterative-repair-loops.md"
    "https://developers.openai.com/cookbook/examples/partners/harness_aware_plugin_evals/harness_aware_plugin_evals.md | docs/openai/codex-sdk/guides/harness-aware-plugin-evals.md"
    "https://developers.openai.com/cookbook/examples/gpt-5/codex_prompting_guide.md | docs/openai/codex-sdk/guides/codex-prompting-guide.md"

    # === DOCS: OpenAI Tools (direct .md) ===
    "https://developers.openai.com/api/docs/guides/tools-apply-patch.md | docs/openai/tools/tools-apply-patch.md"
    "https://developers.openai.com/api/docs/guides/tools-code-interpreter.md | docs/openai/tools/tools-code-interpreter.md"
    "https://developers.openai.com/api/docs/guides/tools-computer-use-integration.md | docs/openai/tools/tools-computer-use-integration.md"
    "https://developers.openai.com/api/docs/guides/tools-computer-use-sdk-drivers.md | docs/openai/tools/tools-computer-use-sdk-drivers.md"
    "https://developers.openai.com/api/docs/guides/tools-computer-use.md | docs/openai/tools/tools-computer-use.md"
    "https://developers.openai.com/api/docs/guides/tools-connectors-mcp.md | docs/openai/tools/tools-connectors-mcp.md"
    "https://developers.openai.com/api/docs/guides/tools-file-search.md | docs/openai/tools/tools-file-search.md"
    "https://developers.openai.com/api/docs/guides/tools-image-generation.md | docs/openai/tools/tools-image-generation.md"
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

    # Model-specific guides linked from Prompting best practices
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-1.md | docs/anthropic/prompt-engineering/prompting-claude-fable-5-1.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-2.md | docs/anthropic/prompt-engineering/prompting-claude-fable-5-2.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-haiku-5-5.md | docs/anthropic/prompt-engineering/prompting-claude-haiku-5-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5.md | docs/anthropic/prompt-engineering/prompting-claude-fable-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5-5.md | docs/anthropic/prompt-engineering/prompting-claude-opus-5-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5.md | docs/anthropic/prompt-engineering/prompting-claude-opus-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-4-8.md | docs/anthropic/prompt-engineering/prompting-claude-opus-4-8.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-sonnet-5-5.md | docs/anthropic/prompt-engineering/prompting-claude-sonnet-5-5.md"
    "https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-sonnet-5.md | docs/anthropic/prompt-engineering/prompting-claude-sonnet-5.md"

    # === DOCS: Anthropic Claude model context (direct .md) ===
    "https://platform.claude.com/docs/en/models/overview.md | docs/anthropic/models/overview.md"
    "https://platform.claude.com/docs/en/about-claude/models/migration-guide.md | docs/anthropic/models/migration-guide.md"
    "https://platform.claude.com/docs/en/about-claude/models/choosing-a-model.md | docs/anthropic/models/choosing-a-model.md"
    "https://platform.claude.com/docs/en/about-claude/models/model-ids-and-versions.md | docs/anthropic/models/model-ids-and-versions.md"

    # Per-model "what's new" and migration guides
    "https://platform.claude.com/docs/en/models/fable-5-2/whats-new-fable-5-2.md | docs/anthropic/models/whats-new-fable-5-2.md"
    "https://platform.claude.com/docs/en/models/fable-5-2/migration-guide.md | docs/anthropic/models/migration-guide-fable-5-2.md"
    "https://platform.claude.com/docs/en/models/haiku-5-5/whats-new-haiku-5-5.md | docs/anthropic/models/whats-new-haiku-5-5.md"
    "https://platform.claude.com/docs/en/models/haiku-5-5/migration-guide.md | docs/anthropic/models/migration-guide-haiku-5-5.md"
    "https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5.md | docs/anthropic/models/whats-new-opus-5-5.md"
    "https://platform.claude.com/docs/en/models/opus-5-5/migration-guide.md | docs/anthropic/models/migration-guide-opus-5-5.md"
    "https://platform.claude.com/docs/en/models/sonnet-5-5/whats-new-sonnet-5-5.md | docs/anthropic/models/whats-new-sonnet-5-5.md"
    "https://platform.claude.com/docs/en/models/sonnet-5-5/migration-guide.md | docs/anthropic/models/migration-guide-sonnet-5-5.md"

    # === REFERENCE: Claude Agent SDK API ===
    # Raw .md URLs -- downloaded directly with curl, no scraping
    "https://code.claude.com/docs/en/agent-sdk/python.md | reference/anthropic/agent-sdk/python.md"
    "https://code.claude.com/docs/en/agent-sdk/typescript.md | reference/anthropic/agent-sdk/typescript.md"
    "https://code.claude.com/docs/en/env-vars.md | reference/anthropic/agent-sdk/env-vars.md"

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

# Each run builds into a staging directory and only replaces the live folders
# at the end. A page that fails (after retries) keeps its previous version, so
# a timeout never deletes committed documentation.
staging_dir() {
    echo "$OUTPUT_DIR/.staging"
}

prepare_staging() {
    local staging
    staging="$(staging_dir)"
    echo ">>> Preparing staging directory: $staging"
    rm -rf -- "$staging"
    mkdir -p -- "$staging/reference" "$staging/docs" "$staging/release-notes"
    : > "$staging/failures.txt"
}

record_failure() {
    echo "$1" >> "$(staging_dir)/failures.txt"
}

# Copy the live version of a failed artifact into staging (or drop a partial
# download if there was no previous version).
carry_forward() {
    local live_path="$1"
    local staged_path="$2"

    rm -rf -- "$staged_path"
    if [ -e "$live_path" ]; then
        mkdir -p -- "$(dirname "$staged_path")"
        cp -R -- "$live_path" "$staged_path"
        echo "    Kept previous version of $live_path"
    else
        echo "    No previous version of $live_path to keep"
    fi
}

fetch_url() {
    local url="$1"
    local relative_path="$2"
    local target="$3"

    # These class references also need docstring repair and linked method details.
    # URLs that already point to raw markdown are downloaded directly.
    # Other HTML pages use the scraper.
    if [[ "$relative_path" == reference/integrations/ChatAnthropic.md ||
          "$relative_path" == reference/integrations/ChatBedrock.md ||
          "$relative_path" == reference/integrations/ChatBedrockConverse.md ]]; then
        python langchain_reference.py "$url" -o "$target" --include-methods
    elif [[ "$url" == *.md ]]; then
        curl -sSL --fail --retry 3 --retry-all-errors --retry-delay 2 -o "$target" "$url"
    else
        python web2llms.py "$url" -o "$target"
    fi
}

process_url() {
    local item="$1"
    local url
    local relative_path
    local staged_path

    # Split the string by " | "
    # ${item%% | *} gets everything BEFORE the separator (The URL)
    # ${item##* | } gets everything AFTER the separator (The Path)
    url="${item%% | *}"
    relative_path="${item##* | }"
    staged_path="$(staging_dir)/$relative_path"

    mkdir -p -- "$(dirname "$staged_path")"

    echo " -> Processing: $url"
    echo "    Target: $OUTPUT_DIR/$relative_path"

    # A tool that exits 0 but writes nothing (or an empty file) also counts as a failure.
    if fetch_url "$url" "$relative_path" "$staged_path" && [ -s "$staged_path" ]; then
        return 0
    fi

    echo "    FAILED: $url"
    record_failure "$item"
    carry_forward "$OUTPUT_DIR/$relative_path" "$staged_path"
}

# process_url records page failures itself, so a job that exits non-zero has
# crashed (for example, it couldn't write to staging). Stop the run.
job_crashed() {
    echo "Error: one or more URL processing jobs crashed."
    exit 1
}

# Wait until a slot frees up. Unlike fixed batches, this starts the next job
# as soon as any job finishes, so one slow page doesn't hold up the others.
# Bash 3.2 has no `wait -n`, so check each job and sleep briefly when all are busy.
wait_for_free_slot() {
    local pid
    local running

    while [ "${#pending_pids[@]}" -ge "$CONCURRENCY" ]; do
        running=()
        for pid in "${pending_pids[@]}"; do
            if kill -0 "$pid" 2>/dev/null; then
                running+=("$pid")
            elif ! wait "$pid"; then
                job_crashed
            fi
        done
        pending_pids=("${running[@]}")

        if [ "${#pending_pids[@]}" -ge "$CONCURRENCY" ]; then
            sleep 0.2
        fi
    done
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
        job_crashed
    fi
}

# Run every URL_LIST entry with at most CONCURRENCY jobs at a time.
run_url_jobs() {
    local item

    echo ">>> Processing ${#URL_LIST[@]} URLs with concurrency $CONCURRENCY..."
    pending_pids=()

    for item in "${URL_LIST[@]}"; do
        wait_for_free_slot
        process_url "$item" &
        pending_pids+=("$!")
    done

    wait_for_pending_jobs
}

generate_release_notes() {
    local staged
    staged="$(staging_dir)/release-notes"

    if ! python release_notes.py --output-dir "$staged"; then
        echo "    FAILED: release notes"
        record_failure "release-notes"
        carry_forward "$OUTPUT_DIR/release-notes" "$staged"
    fi
}

# Swap the staged folders into place. Entries removed from URL_LIST disappear
# because staging only holds the current entries. rm -rf on a symlinked folder
# removes the link itself, never the files it points to.
publish_staging() {
    local staging
    local directory
    staging="$(staging_dir)"

    echo ">>> Replacing reference, docs, and release-notes with the new versions..."
    for directory in reference docs release-notes; do
        rm -rf -- "${OUTPUT_DIR:?}/$directory"
        mv -- "$staging/$directory" "$OUTPUT_DIR/$directory"
    done
}

# Print failures, remove staging, and return non-zero if anything failed.
finish_staging() {
    local staging
    local failures
    staging="$(staging_dir)"
    failures="$(cat "$staging/failures.txt")"
    rm -rf -- "$staging"

    if [ -n "$failures" ]; then
        echo ">>> These entries failed and kept their previous version:"
        echo "$failures" | sed 's/^/    /'
        return 1
    fi
    return 0
}

# --- EXECUTION START ---

echo ">>> Starting Workflow..."

# 1. Change Directory
echo ">>> Moving to project directory: $PROJECT_DIR"
cd "$PROJECT_DIR"

# 2. Activate Venv
echo ">>> Activating Python virtual environment..."
source .venv/bin/activate

# Validate concurrency before doing any work.
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

# 3. Build everything into a fresh staging directory.
prepare_staging

# 4. Run the URL jobs, keeping up to CONCURRENCY running at once
run_url_jobs

# 5. Generate GitHub release notes (feature-focused, re-runnable)
echo ">>> Generating GitHub release notes..."
generate_release_notes

# 6. Replace the live folders with the staged ones.
publish_staging
run_status=0
finish_staging || run_status=1

# 7. Git Operations (set NO_PUSH=1 to regenerate without committing)
if [ "${NO_PUSH:-0}" = "1" ]; then
    echo ">>> NO_PUSH=1: skipping commit and push."
else
    echo ">>> Performing Git operations..."
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
fi

if [ "$run_status" -ne 0 ]; then
    echo ">>> Workflow finished with failures (see list above)."
    exit 1
fi

echo ">>> Workflow complete."
