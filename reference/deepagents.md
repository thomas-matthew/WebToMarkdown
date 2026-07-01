Pythondeepagents

# deepagents

## Description

# 🧠🤖 Deep Agents

[![PyPI - Version](https://img.shields.io/pypi/v/deepagents?label=%20)](https://pypi.org/project/deepagents/#history)
[![PyPI - License](https://img.shields.io/pypi/l/deepagents)](https://opensource.org/licenses/MIT)
[![PyPI - Downloads](https://img.shields.io/pepy/dt/deepagents)](https://pypistats.org/packages/deepagents)
[![Twitter](https://img.shields.io/twitter/url/https/twitter.com/langchain_oss.svg?style=social&label=Follow%20%40LangChain)](https://x.com/langchain_oss)

Looking for the JS/TS version? Check out [Deep Agents.js](https://github.com/langchain-ai/deepagentsjs).

To help you ship LangChain apps to production faster, check out [LangSmith](https://smith.langchain.com).
LangSmith is a unified developer platform for building, testing, and monitoring LLM applications.

## Quick Install

```
uv add deepagents
```

Copy

## 🤔 What is this?

Deep Agents is an open source agent harness — an opinionated agent that runs out of the box. Extend, override, or replace any piece.

**Principles:**

* **Opinionated** — defaults tuned for long-horizon, multi-step work
* **Extensible** — override or replace any piece without forking
* **Model-agnostic** — works with any LLM that supports tool calling: frontier, open-weight, or local
* **Production-ready** — built on LangGraph (streaming, persistence, checkpointing) with first-class tracing, evaluation, and deployment via LangSmith

**Features include:**

* **Sub-agents** — delegate tasks to agents with isolated context windows
* **Filesystem** — read, write, edit, or search over pluggable local, sandboxed, or remote backends
* **Context management** — summarize long threads and offload tool outputs to disk
* **Shell access** — run commands in your sandbox of choice
* **Persistent memory** — pluggable state and store backends for cross-session recall
* **Human-in-the-loop** — approve, edit, or reject tool calls before they run
* **Skills** — reusable behaviors the agent can load on demand
* **Tools** — bring your own functions or any MCP server

```
from deepagents import create_deep_agent

agent = create_deep_agent(
    model="openai:gpt-5.5",
    tools=[my_custom_tool],
    system_prompt="You are a research assistant.",
)
result = agent.invoke({"messages": "Research LangGraph and write a summary"})
```

Copy

The agent can plan, read/write files, and manage its own context. Add your own tools, swap models, customize prompts, configure sub-agents, and more. For a full overview and quickstart of Deep Agents, the best resource is our [docs](https://docs.langchain.com/oss/python/deepagents/overview).

**Acknowledgements: This project was primarily inspired by Claude Code, and initially was largely an attempt to see what made Claude Code general purpose, and make it even more so.**

## ❓ FAQ

### How is this different from LangGraph or LangChain?

LangGraph is the graph runtime. LangChain's `create_agent` is a minimal agent harness on top of it. Deep Agents is a more opinionated harness on top of `create_agent` — same building blocks, but with filesystem, sub-agents, context management, and skills bundled in. For how the three relate, see the [LangChain ecosystem overview](https://docs.langchain.com/oss/python/concepts/products).

### Does this work with open-weight or local models?

Yes. Any model that supports tool calling works — frontier APIs (OpenAI, Anthropic, Google), open-weight models hosted on providers like Baseten or Fireworks, and self-hosted models via Ollama, vLLM, or llama.cpp. Use any [LangChain chat model](https://docs.langchain.com/oss/python/langchain/models).

### Can I use this in production?

Yes! Deep Agents is built on LangGraph, designed for production agent deployments. Pair it with [LangSmith](https://docs.langchain.com/langsmith/home) for tracing, evaluation, and monitoring. See [Going to production](https://docs.langchain.com/oss/python/deepagents/going-to-production) for the full guide.

### When should I use Deep Agents vs. LangChain or LangGraph directly?

All three are layers in the same stack — see the [LangChain ecosystem overview](https://docs.langchain.com/oss/python/concepts/products) for how they relate. Use **Deep Agents** when you want the full harness — planning, context management, delegation — out of the box. Use [**LangChain's `create_agent`**](https://docs.langchain.com/oss/python/langchain/agents) when you want a lighter harness without the bundled middleware. Drop to [**LangGraph**](https://docs.langchain.com/oss/python/langgraph/overview) when the agent loop itself isn't the right shape and you need a custom graph.

The layers compose: any LangGraph `CompiledStateGraph` can be passed in as a sub-agent to a Deep Agent, so custom orchestration plugs in alongside the harness's defaults.

## 📖 Resources

* **[Documentation](https://docs.langchain.com/oss/python/deepagents)** — Full documentation
* **[LangChain ecosystem overview](https://docs.langchain.com/oss/python/concepts/products)** — how Deep Agents, LangChain, LangGraph, and LangSmith fit together
* **[API Reference](https://reference.langchain.com/python/deepagents/)** — Full SDK reference documentation
* **[Examples](https://github.com/langchain-ai/deepagents/tree/main/examples)** — Working agents and patterns
* **[Discussions](https://forum.langchain.com/c/oss-product-help-lc-and-lg/deep-agents/18)** — Community forum for technical questions, ideas, and feedback
* [LangChain Academy](https://academy.langchain.com/) — Comprehensive, free courses on LangChain libraries and products, made by the LangChain team.
* [Code of Conduct](https://github.com/langchain-ai/langchain/?tab=coc-ov-file) — community guidelines and standards

## 📕 Releases & Versioning

See our [Releases](https://docs.langchain.com/oss/python/release-policy) and [Versioning](https://docs.langchain.com/oss/python/versioning) policies.

## 🔒 Security

Deep Agents follows a "trust the LLM" model. The agent can do anything its tools allow. Enforce boundaries at the tool/sandbox level, not by expecting the model to self-police. See the [security policy](https://github.com/langchain-ai/deepagents?tab=security-ov-file) for more information.

## 💁 Contributing

As an open-source project in a rapidly developing field, we are extremely open to contributions, whether it be in the form of a new feature, improved infrastructure, or better documentation.

For detailed information on how to contribute, see the [Contributing Guide](https://docs.langchain.com/oss/python/contributing/overview).

## Classes

[Class

### DeepAgentState

AgentState with `DeltaChannel` on messages to reduce checkpoint growth from O(N²) to O(N).](/python/deepagents/graph/DeepAgentState)[Class

### SubAgent

Specification for an agent.](/python/deepagents/middleware/subagents/SubAgent)[Class

### CompiledSubAgent

A pre-compiled agent spec.](/python/deepagents/middleware/subagents/CompiledSubAgent)[Class

### TaskToolSchema

Input schema for the `task` tool.](/python/deepagents/middleware/subagents/TaskToolSchema)[Class

### SubAgentMiddleware

Middleware for providing subagents to an agent via a `task` tool.](/python/deepagents/middleware/subagents/SubAgentMiddleware)[Class

### MemoryState

State schema for `MemoryMiddleware`.](/python/deepagents/middleware/memory/MemoryState)[Class

### MemoryStateUpdate

State update for `MemoryMiddleware`.](/python/deepagents/middleware/memory/MemoryStateUpdate)[Class

### MemoryMiddleware

Middleware for loading agent memory from `AGENTS.md` files.](/python/deepagents/middleware/memory/MemoryMiddleware)[Class

### CompactConversationSchema

Input schema for the `compact_conversation` tool.](/python/deepagents/middleware/summarization/CompactConversationSchema)[Class

### SummarizationEvent

Represents a summarization event.](/python/deepagents/middleware/summarization/SummarizationEvent)[Class

### TriggerClause

Dictionary-based summarization trigger with AND semantics.](/python/deepagents/middleware/summarization/TriggerClause)[Class

### TruncateArgsSettings

Settings for truncating large tool-call arguments in older messages.](/python/deepagents/middleware/summarization/TruncateArgsSettings)[Class

### SummarizationState

State for the summarization middleware.](/python/deepagents/middleware/summarization/SummarizationState)[Class

### SummarizationDefaults

Default settings computed from model profile.](/python/deepagents/middleware/summarization/SummarizationDefaults)[Class

### SummarizationToolMiddleware

Middleware that provides a `compact_conversation` tool for manual compaction.](/python/deepagents/middleware/summarization/SummarizationToolMiddleware)[Class

### SkillMetadata

Metadata for a skill per Agent Skills specification (https://agentskills.io/specification).](/python/deepagents/middleware/skills/SkillMetadata)[Class

### SkillsState

State for the skills middleware.](/python/deepagents/middleware/skills/SkillsState)[Class

### SkillsStateUpdate

State update for the skills middleware.](/python/deepagents/middleware/skills/SkillsStateUpdate)[Class

### SkillsMiddleware

Middleware for loading and exposing agent skills to the system prompt.](/python/deepagents/middleware/skills/SkillsMiddleware)[Class

### AsyncSubAgent

Specification for an async subagent running on a remote Agent Protocol server.](/python/deepagents/middleware/async_subagents/AsyncSubAgent)[Class

### AsyncTask

A tracked async subagent task persisted in agent state.](/python/deepagents/middleware/async_subagents/AsyncTask)[Class

### AsyncSubAgentState

State extension for async subagent task tracking.](/python/deepagents/middleware/async_subagents/AsyncSubAgentState)[Class

### StartAsyncTaskSchema

Input schema for the `start_async_task` tool.](/python/deepagents/middleware/async_subagents/StartAsyncTaskSchema)[Class

### CheckAsyncTaskSchema

Input schema for the `check_async_task` tool.](/python/deepagents/middleware/async_subagents/CheckAsyncTaskSchema)[Class

### UpdateAsyncTaskSchema

Input schema for the `update_async_task` tool.](/python/deepagents/middleware/async_subagents/UpdateAsyncTaskSchema)[Class

### CancelAsyncTaskSchema

Input schema for the `cancel_async_task` tool.](/python/deepagents/middleware/async_subagents/CancelAsyncTaskSchema)[Class

### ListAsyncTasksSchema

Input schema for the `list_async_tasks` tool.](/python/deepagents/middleware/async_subagents/ListAsyncTasksSchema)[Class

### AsyncSubAgentMiddleware

Middleware for async subagents running on remote Agent Protocol servers.](/python/deepagents/middleware/async_subagents/AsyncSubAgentMiddleware)[Class

### PatchToolCallsMiddleware

Middleware to patch dangling tool calls in the messages history.](/python/deepagents/middleware/patch_tool_calls/PatchToolCallsMiddleware)[Class

### CriterionPass

Per-criterion grader verdict when the criterion passes.](/python/deepagents/middleware/rubric/CriterionPass)[Class

### CriterionFail

Per-criterion grader verdict when the criterion fails.](/python/deepagents/middleware/rubric/CriterionFail)[Class

### RubricEvaluation

One grader evaluation, appended to `_rubric_evaluations` each iteration.](/python/deepagents/middleware/rubric/RubricEvaluation)[Class

### RubricState

State schema for `RubricMiddleware`.](/python/deepagents/middleware/rubric/RubricState)[Class

### GraderResponse

Structured output the grader sub-agent must emit.](/python/deepagents/middleware/rubric/GraderResponse)[Class

### RubricMiddleware

Middleware that drives self-evaluated iteration against a rubric.](/python/deepagents/middleware/rubric/RubricMiddleware)[Class

### FilesystemPermission

A single access rule for filesystem operations.](/python/deepagents/middleware/filesystem/FilesystemPermission)[Class

### FilesystemState

State for the filesystem middleware.](/python/deepagents/middleware/filesystem/FilesystemState)[Class

### LsSchema

Input schema for the `ls` tool.](/python/deepagents/middleware/filesystem/LsSchema)[Class

### ReadFileSchema

Input schema for the `read_file` tool.](/python/deepagents/middleware/filesystem/ReadFileSchema)[Class

### WriteFileSchema

Input schema for the `write_file` tool.](/python/deepagents/middleware/filesystem/WriteFileSchema)[Class

### EditFileSchema

Input schema for the `edit_file` tool.](/python/deepagents/middleware/filesystem/EditFileSchema)[Class

### DeleteSchema

Input schema for the `delete` tool.](/python/deepagents/middleware/filesystem/DeleteSchema)[Class

### GlobSchema

Input schema for the `glob` tool.](/python/deepagents/middleware/filesystem/GlobSchema)[Class

### GrepSchema

Input schema for the `grep` tool.](/python/deepagents/middleware/filesystem/GrepSchema)[Class

### ExecuteSchema

Input schema for the `execute` tool.](/python/deepagents/middleware/filesystem/ExecuteSchema)[Class

### FilesystemMiddleware

Middleware for providing filesystem and optional execution tools to an agent.](/python/deepagents/middleware/filesystem/FilesystemMiddleware)[Class

### ProviderProfile

Declarative configuration for constructing a chat model.](/python/deepagents/profiles/provider/provider_profiles/ProviderProfile)[Class

### GeneralPurposeSubagentProfile

Edits applied to the auto-added `general-purpose` subagent.](/python/deepagents/profiles/harness/harness_profiles/GeneralPurposeSubagentProfile)[Class

### HarnessProfileConfig

Declarative harness-profile config for YAML/JSON-backed profiles.](/python/deepagents/profiles/harness/harness_profiles/HarnessProfileConfig)[Class

### HarnessProfile

Runtime configuration for deep agent behavior.](/python/deepagents/profiles/harness/harness_profiles/HarnessProfile)[Class

### StoreBackend

Backend that stores files in LangGraph's BaseStore (persistent).](/python/deepagents/backends/store/StoreBackend)[Class

### StateBackend

Backend that stores files in agent state (ephemeral).](/python/deepagents/backends/state/StateBackend)[Class

### FileDownloadResponse

Result of a single file download operation.](/python/deepagents/backends/protocol/FileDownloadResponse)[Class

### FileUploadResponse

Result of a single file upload operation.](/python/deepagents/backends/protocol/FileUploadResponse)[Class

### FileInfo

Structured file listing info.](/python/deepagents/backends/protocol/FileInfo)[Class

### GrepMatch

A single match from a grep search.](/python/deepagents/backends/protocol/GrepMatch)[Class

### FileData

Data structure for storing file contents with metadata.](/python/deepagents/backends/protocol/FileData)[Class

### ReadResult

Result from backend read operations.](/python/deepagents/backends/protocol/ReadResult)[Class

### WriteResult

Result from backend `write` operations.](/python/deepagents/backends/protocol/WriteResult)[Class

### EditResult

Result from backend `edit` operations.](/python/deepagents/backends/protocol/EditResult)[Class

### DeleteResult

Result from backend delete operations.](/python/deepagents/backends/protocol/DeleteResult)[Class

### LsResult

Result from backend `ls` operations.](/python/deepagents/backends/protocol/LsResult)[Class

### GrepResult

Result from backend `grep` operations.](/python/deepagents/backends/protocol/GrepResult)[Class

### GlobResult

Result from backend `glob` operations.](/python/deepagents/backends/protocol/GlobResult)[Class

### BackendProtocol

Protocol for pluggable memory backends (single, unified).](/python/deepagents/backends/protocol/BackendProtocol)[Class

### ExecuteResponse

Result of code execution.](/python/deepagents/backends/protocol/ExecuteResponse)[Class

### ExecuteOffloadResult

Result of `BaseSandbox.execute_with_offload`.](/python/deepagents/backends/protocol/ExecuteOffloadResult)[Class

### SandboxBackendProtocol

Extension of `BackendProtocol` that adds shell command execution.](/python/deepagents/backends/protocol/SandboxBackendProtocol)[Class

### LocalShellBackend

Filesystem backend with unrestricted local shell command execution.](/python/deepagents/backends/local_shell/LocalShellBackend)[Class

### BaseSandbox

Base sandbox implementation with `execute()` as the core abstract method.](/python/deepagents/backends/sandbox/BaseSandbox)[Class

### FilesystemBackend

Backend that reads and writes files directly from the filesystem.](/python/deepagents/backends/filesystem/FilesystemBackend)[Class

### CompositeBackend

Routes file operations to different backends by path prefix.](/python/deepagents/backends/composite/CompositeBackend)[Class

### LangSmithSandbox

LangSmith sandbox implementation conforming to `SandboxBackendProtocol`.](/python/deepagents/backends/langsmith/LangSmithSandbox)[Class

### ContextHubBackend

Backend that stores files in a LangSmith Hub agent repo (persistent).](/python/deepagents/backends/context_hub/ContextHubBackend)[Class

### BackendContext

deprecated

Context passed to namespace factory functions.](/python/deepagents/backends/store/BackendContext)

## Functions

[Function

### create\_deep\_agent

Create a deep agent.](/python/deepagents/graph/create_deep_agent)[Function

### resolve\_model

Resolve a model string to a `BaseChatModel`.](/python/deepagents/_models/resolve_model)[Function

### get\_model\_identifier

Extract the provider-native model identifier from a chat model.](/python/deepagents/_models/get_model_identifier)[Function

### get\_model\_provider

Extract the provider name from a chat model instance.](/python/deepagents/_models/get_model_provider)[Function

### is\_bedrock\_model

Check whether a model targets AWS Bedrock.](/python/deepagents/_models/is_bedrock_model)[Function

### model\_matches\_spec

Check whether a model instance already matches a string model spec.](/python/deepagents/_models/model_matches_spec)[Function

### warn\_deprecated

Emit a deprecation warning with caller-controlled stack attribution.](/python/deepagents/_api/deprecation/warn_deprecated)[Function

### reset\_deprecation\_dedupe

Reset the `@deprecated` decorator's dedupe flag for testing.](/python/deepagents/_api/deprecation/reset_deprecation_dedupe)[Function

### create\_sub\_agent

Create a runnable agent from a raw `SubAgent` spec.](/python/deepagents/middleware/subagents/create_sub_agent)[Function

### compute\_summarization\_defaults

Compute default summarization settings based on model profile.](/python/deepagents/middleware/summarization/compute_summarization_defaults)[Function

### create\_summarization\_middleware

Create a Deep Agents `SummarizationMiddleware` with model-aware defaults.](/python/deepagents/middleware/summarization/create_summarization_middleware)[Function

### create\_summarization\_tool\_middleware

Create a `SummarizationToolMiddleware` with model-aware defaults.](/python/deepagents/middleware/summarization/create_summarization_tool_middleware)[Function

### private\_state\_field\_names

Return fields annotated with `PrivateStateAttr` across state schemas.](/python/deepagents/middleware/_state/private_state_field_names)[Function

### supports\_execution

Check if a backend supports command execution.](/python/deepagents/middleware/filesystem/supports_execution)[Function

### append\_to\_system\_message

Append text to a system message.](/python/deepagents/middleware/_utils/append_to_system_message)[Function

### validate\_profile\_key

Validate a profile registry key.](/python/deepagents/profiles/_keys/validate_profile_key)[Function

### register

Register the built-in OpenAI provider profile.](/python/deepagents/profiles/provider/_openai/register)[Function

### register\_provider\_profile

Register a `ProviderProfile` for a provider or specific model.](/python/deepagents/profiles/provider/provider_profiles/register_provider_profile)[Function

### get\_provider\_profile

Look up the `ProviderProfile` for a model spec.](/python/deepagents/profiles/provider/provider_profiles/get_provider_profile)[Function

### apply\_provider\_profile

Compose `init_chat_model` kwargs from the registered profile for `spec`.](/python/deepagents/profiles/provider/provider_profiles/apply_provider_profile)[Function

### check\_openrouter\_version

Raise if the installed `langchain-openrouter` is below the minimum.](/python/deepagents/profiles/provider/_openrouter/check_openrouter_version)[Function

### register

Register the built-in OpenRouter provider profile.](/python/deepagents/profiles/provider/_openrouter/register)[Function

### register\_harness\_profile

Register a harness profile for a provider or specific model.](/python/deepagents/profiles/harness/harness_profiles/register_harness_profile)[Function

### register

Register the built-in Codex harness profile for each Codex spec.](/python/deepagents/profiles/harness/_openai_codex/register)[Function

### register

Register the built-in Claude Opus 4.7 harness profile.](/python/deepagents/profiles/harness/_anthropic_opus_4_7/register)[Function

### register

Register the built-in Claude Haiku 4.5 harness profile.](/python/deepagents/profiles/harness/_anthropic_haiku_4_5/register)[Function

### register

Register the built-in Claude Sonnet 4.6 harness profile.](/python/deepagents/profiles/harness/_anthropic_sonnet_4_6/register)[Function

### sanitize\_tool\_call\_id

Sanitize tool\_call\_id to prevent path traversal and separator issues.](/python/deepagents/backends/utils/sanitize_tool_call_id)[Function

### format\_content\_with\_line\_numbers

Format file content with line numbers (`cat -n` style).](/python/deepagents/backends/utils/format_content_with_line_numbers)[Function

### check\_empty\_content

Check if content is empty and return warning message.](/python/deepagents/backends/utils/check_empty_content)[Function

### file\_data\_to\_string

Convert `FileData` to plain string content.](/python/deepagents/backends/utils/file_data_to_string)[Function

### create\_file\_data

Create a `FileData` object with timestamps.](/python/deepagents/backends/utils/create_file_data)[Function

### update\_file\_data

Update `FileData` with new content, preserving creation timestamp.](/python/deepagents/backends/utils/update_file_data)[Function

### slice\_read\_response

Slice file data to the requested line range without formatting.](/python/deepagents/backends/utils/slice_read_response)[Function

### perform\_string\_replacement

Perform string replacement with occurrence validation.](/python/deepagents/backends/utils/perform_string_replacement)[Function

### truncate\_if\_too\_long

Truncate list or string result if it exceeds token limit (rough estimate: 4 chars/token).](/python/deepagents/backends/utils/truncate_if_too_long)[Function

### to\_posix\_path

Normalize backslash separators to forward slashes for `PurePosixPath` use.](/python/deepagents/backends/utils/to_posix_path)[Function

### validate\_path

Validate and normalize file path for security.](/python/deepagents/backends/utils/validate_path)[Function

### grep\_matches\_from\_files

Return structured grep matches from an in-memory files mapping.](/python/deepagents/backends/utils/grep_matches_from_files)[Function

### build\_grep\_results\_dict

Group structured matches into the legacy dict form used by formatters.](/python/deepagents/backends/utils/build_grep_results_dict)[Function

### format\_grep\_matches

Format structured grep matches using existing formatting logic.](/python/deepagents/backends/utils/format_grep_matches)[Function

### execute\_accepts\_timeout

Check whether a backend class's `execute` accepts a `timeout` kwarg.](/python/deepagents/backends/protocol/execute_accepts_timeout)[Function

### get\_default\_model

deprecated

Get the default model for Deep Agents.](/python/deepagents/graph/get_default_model)

## Modules

[Module

### deepagents

Deep Agents package.](/python/deepagents/deepagents)[Module

### graph

Primary graph assembly module for Deep Agents.](/python/deepagents/graph)[Module

### deprecation

Adapter for `langchain_core`'s private deprecation helpers.](/python/deepagents/_api/deprecation)[Module

### middleware

Middleware for the Deep Agents agent.](/python/deepagents/middleware)[Module

### subagents

Middleware for providing subagents to an agent via a `task` tool.](/python/deepagents/middleware/subagents)[Module

### memory

Middleware for loading agent memory/context from AGENTS.md files.](/python/deepagents/middleware/memory)[Module

### summarization

Summarization middleware for automatic and tool-based conversation compaction.](/python/deepagents/middleware/summarization)[Module

### skills

Skills middleware for loading and exposing agent skills to the system prompt.](/python/deepagents/middleware/skills)[Module

### async\_subagents

Middleware for async subagents running on remote Agent Protocol servers.](/python/deepagents/middleware/async_subagents)[Module

### permissions

Backward-compatible re-export for filesystem permissions.](/python/deepagents/middleware/permissions)[Module

### patch\_tool\_calls

Middleware to patch dangling tool calls in the messages history.](/python/deepagents/middleware/patch_tool_calls)[Module

### rubric

Rubric middleware for self-evaluated agent iteration.](/python/deepagents/middleware/rubric)[Module

### filesystem

Middleware for providing filesystem tools to an agent.](/python/deepagents/middleware/filesystem)[Module

### profiles

Public beta APIs for model and harness profiles.](/python/deepagents/profiles)[Module

### provider

Provider profile package: `ProviderProfile` API and built-in providers.](/python/deepagents/profiles/provider)[Module

### provider\_profiles

Beta APIs for configuring model-construction behavior.](/python/deepagents/profiles/provider/provider_profiles)[Module

### harness

Harness profile package: `HarnessProfile` API and built-in registrations.](/python/deepagents/profiles/harness)[Module

### harness\_profiles

Beta APIs for configuring deep agent runtime behavior.](/python/deepagents/profiles/harness/harness_profiles)[Module

### backends

Memory backends for pluggable file storage.](/python/deepagents/backends)[Module

### store

`StoreBackend`: Adapter for LangGraph's BaseStore (persistent, cross-thread).](/python/deepagents/backends/store)[Module

### state

`StateBackend`: Store files in LangGraph agent state (ephemeral).](/python/deepagents/backends/state)[Module

### utils

Shared utility functions for memory backend implementations.](/python/deepagents/backends/utils)[Module

### protocol

Protocol definition for pluggable memory backends.](/python/deepagents/backends/protocol)[Module

### local\_shell

`LocalShellBackend`: Filesystem backend with unrestricted local shell execution.](/python/deepagents/backends/local_shell)[Module

### sandbox

Base sandbox implementation.](/python/deepagents/backends/sandbox)[Module

### filesystem

`FilesystemBackend`: Read and write files directly from the filesystem.](/python/deepagents/backends/filesystem)[Module

### composite

Composite backend that routes file operations by path prefix.](/python/deepagents/backends/composite)[Module

### langsmith

LangSmith sandbox backend implementation.](/python/deepagents/backends/langsmith)[Module

### context\_hub

`ContextHubBackend`: Store files in a LangSmith Hub agent repo (persistent).](/python/deepagents/backends/context_hub)

## Types

[Type

### SkillSource

A skill source: either a bare path or a `(path, label)` pair.](/python/deepagents/middleware/skills/SkillSource)[Type

### RubricResult

Status recorded on each evaluation.](/python/deepagents/middleware/rubric/RubricResult)[Type

### BackendFactory](/python/deepagents/backends/protocol/BackendFactory)[Type

### BACKEND\_TYPES](/python/deepagents/backends/protocol/BACKEND_TYPES)

Copy page

### On This Page

DescriptionClasses75Functions43Modules29Types4