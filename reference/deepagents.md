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
    model="openai:gpt-6-astra",
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

### ProviderProfile

Declarative configuration for constructing a chat model.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning document](/python/deepagents/profiles/provider/provider_profiles/ProviderProfile)[Class

### GeneralPurposeSubagentProfile

Edits applied to the auto-added `general-purpose` subagent.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning docum](/python/deepagents/profiles/harness/harness_profiles/GeneralPurposeSubagentProfile)[Class

### HarnessProfileConfig

Declarative harness-profile config for YAML/JSON-backed profiles.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning](/python/deepagents/profiles/harness/harness_profiles/HarnessProfileConfig)[Class

### HarnessProfile

Runtime configuration for deep agent behavior.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentation](htt](/python/deepagents/profiles/harness/harness_profiles/HarnessProfile)[Class

### NemotronToolCallShim

Repair small Nemotron filesystem tool-call and tool-result quirks.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronToolCallShim)[Class

### ReadFileContinuationNoticeMiddleware

Append a continuation notice to exactly-at-limit `read_file` results.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/ReadFileContinuationNoticeMiddleware)[Class

### ModelRateLimitRetryMiddleware

Retry transient provider 429s around model calls.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/ModelRateLimitRetryMiddleware)[Class

### ChatNVIDIAMessageCompatibilityMiddleware

Mirror standard LangChain tool-call fields into ChatNVIDIA payload metadata.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/ChatNVIDIAMessageCompatibilityMiddleware)[Class

### NemotronReasoningTagCleanupMiddleware

Remove preserved `<think>` blocks from normal assistant content.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronReasoningTagCleanupMiddleware)[Class

### NemotronTextToolCallParser

Repair tool calls emitted as text content instead of structured calls.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronTextToolCallParser)[Class

### NemotronProgressBudgetMiddleware

Stop Ultra3-specific tool loops before they consume runaway context.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronProgressBudgetMiddleware)[Class

### NemotronPolicyNudgeState

State schema for one-shot Nemotron policy nudges.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronPolicyNudgeState)[Class

### NemotronPolicyNudgeMiddleware

Inject lightweight policy nudges for common Ultra3 agent-control misses.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronPolicyNudgeMiddleware)[Class

### FollowupDisciplineState

State schema for `FollowupDisciplineMiddleware`.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FollowupDisciplineState)[Class

### FollowupDisciplineMiddleware

Send Ultra3 back once when it asks redundant follow-up questions.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FollowupDisciplineMiddleware)[Class

### EntityResolutionGuardState

State schema for `EntityResolutionGuardMiddleware`.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/EntityResolutionGuardState)[Class

### EntityResolutionGuardMiddleware

Send Ultra3 back once when it finalizes with unresolved or mis-bound IDs.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/EntityResolutionGuardMiddleware)[Class

### FinalAnswerGuardState

State schema for `FinalAnswerGuardMiddleware`.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FinalAnswerGuardState)[Class

### FinalAnswerGuardMiddleware

Send Ultra3 back once when a final answer drops obvious required details.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FinalAnswerGuardMiddleware)[Class

### SubAgent

Specification for a declarative subagent.

By default the subagent is isolated: it receives only the delegated task
description. Setting `mode="fork"` makes it continue the parent's
conversation inste](/python/deepagents/middleware/subagents/SubAgent)[Class

### CompiledSubAgent

A pre-compiled agent spec.

Note

The `runnable`'s state schema must include a 'messages' key.

This is required for the subagent to communicate results back to
the main agent.](/python/deepagents/middleware/subagents/CompiledSubAgent)[Class

### TaskToolSchema

Input schema for the `task` tool.](/python/deepagents/middleware/subagents/TaskToolSchema)[Class

### SubAgentMiddleware

Middleware for providing subagents to an agent via a `task` tool.

This middleware adds a `task` tool to the agent that can be used
to invoke subagents.

Subagents are useful for handling complex task](/python/deepagents/middleware/subagents/SubAgentMiddleware)[Class

### UnsupportedContentMiddleware

Replace multimodal input blocks the active model can't accept with a text notice.

Without it, a request carrying content the model can't accept (e.g. an image sent
to a text-only model) fails, and si](/python/deepagents/middleware/unsupported_content/UnsupportedContentMiddleware)[Class

### FilesystemPermission

A single access rule for filesystem operations.](/python/deepagents/middleware/filesystem/FilesystemPermission)[Class

### FilesystemState

State for the filesystem middleware.](/python/deepagents/middleware/filesystem/FilesystemState)[Class

### LsSchema

Input schema for the `ls` tool.](/python/deepagents/middleware/filesystem/LsSchema)[Class

### ReadFileSchema

Input schema for the `read_file` tool.](/python/deepagents/middleware/filesystem/ReadFileSchema)[Class

### ReadVideoFileSchema

Input schema for `read_file` when the optional video frame extraction is available.

Identical to `ReadFileSchema`; only the `offset`/`limit` descriptions differ
to document their video semantics (int](/python/deepagents/middleware/filesystem/ReadVideoFileSchema)[Class

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

Middleware for providing filesystem and optional execution tools to an agent.

This middleware adds filesystem tools to the agent: `ls`, `read_file`, `write_file`,
`edit_file`, `glob`, and `grep`.

Fi](/python/deepagents/middleware/filesystem/FilesystemMiddleware)[Class

### AsyncSubAgent

Specification for an async subagent running on a remote Agent Protocol server.

Async subagents connect to any Agent Protocol-compliant server via the](/python/deepagents/middleware/async_subagents/AsyncSubAgent)[Class

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

Middleware for async subagents running on remote Agent Protocol servers.

This middleware adds tools for launching, monitoring, and updating
background tasks on remote Agent Protocol servers. Unlike t](/python/deepagents/middleware/async_subagents/AsyncSubAgentMiddleware)[Class

### SkillMetadata

Metadata for a skill per Agent Skills specification (https://agentskills.io/specification).](/python/deepagents/middleware/skills/SkillMetadata)[Class

### SkillsState

State for the skills middleware.](/python/deepagents/middleware/skills/SkillsState)[Class

### SkillsStateUpdate

State update for the skills middleware.](/python/deepagents/middleware/skills/SkillsStateUpdate)[Class

### SkillsMiddleware

Middleware for loading and exposing agent skills to the system prompt.

Loads skills from backend sources and injects them into the system prompt
using progressive disclosure (metadata first, full con](/python/deepagents/middleware/skills/SkillsMiddleware)[Class

### CompactConversationSchema

Input schema for the `compact_conversation` tool.](/python/deepagents/middleware/summarization/CompactConversationSchema)[Class

### SummarizationEvent

Represents a summarization event.](/python/deepagents/middleware/summarization/SummarizationEvent)[Class

### TriggerClause

Dictionary-based summarization trigger with AND semantics.](/python/deepagents/middleware/summarization/TriggerClause)[Class

### TruncateArgsSettings

Settings for truncating large tool-call arguments in older messages.

This is a lightweight, pre-summarization optimization that fires at a lower
token threshold than full conversation compaction. Whe](/python/deepagents/middleware/summarization/TruncateArgsSettings)[Class

### SummarizationState

State for the summarization middleware.

Extends AgentState with a private field for tracking summarization events.](/python/deepagents/middleware/summarization/SummarizationState)[Class

### SummarizationDefaults

Default settings computed from model profile.](/python/deepagents/middleware/summarization/SummarizationDefaults)[Class

### SummarizationToolMiddleware

Middleware that provides a `compact_conversation` tool for manual compaction.

This middleware composes with a `SummarizationMiddleware` instance, reusing
its summarization engine (model, backend, tri](/python/deepagents/middleware/summarization/SummarizationToolMiddleware)[Class

### MemoryState

State schema for `MemoryMiddleware`.](/python/deepagents/middleware/memory/MemoryState)[Class

### MemoryStateUpdate

State update for `MemoryMiddleware`.](/python/deepagents/middleware/memory/MemoryStateUpdate)[Class

### MemoryMiddleware

Middleware for loading agent memory from `AGENTS.md` files.

Loads memory content from configured sources and injects into the system
prompt. Supports multiple sources that are combined together. See](/python/deepagents/middleware/memory/MemoryMiddleware)[Class

### ContentPreview

A rendered preview plus a record of what was left out to build it.

The flags are reported by the code that built `text`, never inferred from
the rendered bytes — a literal `... [N lines truncated] ..](/python/deepagents/middleware/_message_eviction/ContentPreview)[Class

### CriterionPass

Per-criterion grader verdict when the criterion passes.](/python/deepagents/middleware/rubric/CriterionPass)[Class

### CriterionFail

Per-criterion grader verdict when the criterion fails.](/python/deepagents/middleware/rubric/CriterionFail)[Class

### RubricEvaluation

One grader evaluation, appended to `_rubric_evaluations` each iteration.

Consumers can read any field without guarding against absence since all
fields are always populated by `_build_evaluation` and](/python/deepagents/middleware/rubric/RubricEvaluation)[Class

### RubricState

State schema for `RubricMiddleware`.

Only `rubric` is part of the public I/O schema -- callers write a
rubric and read the improved agent response back from `messages`.

Everything else is bookkeepin](/python/deepagents/middleware/rubric/RubricState)[Class

### GraderResponse

Structured output the grader sub-agent must emit.

Passed as `response_format=GraderResponse` to `create_agent` so the
underlying provider's structured output strategy is auto-selected.](/python/deepagents/middleware/rubric/GraderResponse)[Class

### RubricMiddleware

Middleware that drives self-evaluated iteration against a rubric.

The middleware activates only when a caller passes a `rubric` on
invocation state. With no rubric, both `before_agent` and `after\_age](/python/deepagents/middleware/rubric/RubricMiddleware)[Class

### PatchToolCallsMiddleware

Middleware to patch dangling tool calls in the messages history.](/python/deepagents/middleware/patch_tool_calls/PatchToolCallsMiddleware)[Class

### VideoExtractionError

Raised when PyAV cannot produce frames for the requested window.](/python/deepagents/middleware/_video/VideoExtractionError)[Class

### LangSmithSandbox

LangSmith sandbox implementation conforming to `SandboxBackendProtocol`.](/python/deepagents/backends/langsmith/LangSmithSandbox)[Class

### LocalShellBackend

Filesystem backend with unrestricted local shell command execution.

This backend extends `FilesystemBackend` to add shell command execution
capabilities. Commands are executed directly on the host sy](/python/deepagents/backends/local_shell/LocalShellBackend)[Class

### InvalidGlobPatternError

A glob pattern the shared matcher refuses to compile.

Subclasses `ValueError` so existing `except ValueError` handlers keep
working. Callers that catch this specific type can label the failure a
\*pat](/python/deepagents/backends/utils/InvalidGlobPatternError)[Class

### FilesystemBackend

Backend that reads and writes files directly from the filesystem.

Files are accessed using their actual filesystem paths. Relative paths are
resolved relative to the current working directory. Conten](/python/deepagents/backends/filesystem/FilesystemBackend)[Class

### ContextHubBackend

Backend that stores files in a LangSmith Hub agent repo (persistent).](/python/deepagents/backends/context_hub/ContextHubBackend)[Class

### StateBackend

Backend that stores files in agent state (ephemeral).

Uses LangGraph's state management and checkpointing. Files persist within
a conversation thread but not across threads. State is automatically
ch](/python/deepagents/backends/state/StateBackend)[Class

### FileDownloadResponse

Result of a single file download operation.

The response is designed to allow partial success in batch operations.

The errors are standardized using `FileOperationError` literals for certain
recover](/python/deepagents/backends/protocol/FileDownloadResponse)[Class

### FileUploadResponse

Result of a single file upload operation.

The response is designed to allow partial success in batch operations.

The errors are standardized using `FileOperationError` literals for certain
recoverab](/python/deepagents/backends/protocol/FileUploadResponse)[Class

### FileInfo

Structured file listing info.

Minimal contract used across backends. Only `path` is required.
Other fields are best-effort and may be absent depending on backend.](/python/deepagents/backends/protocol/FileInfo)[Class

### ContextLine

A non-matching line surrounding a grep match, used for `context_lines`.](/python/deepagents/backends/protocol/ContextLine)[Class

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

Protocol for pluggable memory backends (single, unified).

Backends can store files in different locations (state, filesystem,
database, etc.) and provide a uniform interface for file operations.

Fil](/python/deepagents/backends/protocol/BackendProtocol)[Class

### ExecuteResponse

Result of code execution.

Simplified schema optimized for LLM consumption.](/python/deepagents/backends/protocol/ExecuteResponse)[Class

### ExecuteArtifact

Machine-readable metadata attached to an `execute` tool result.

Carried on `ToolMessage.artifact` alongside the model-facing `content`, so
callers can react to shell failures. `artifact` is `None` in](/python/deepagents/backends/protocol/ExecuteArtifact)[Class

### ExecuteOffloadResult

Result of `BaseSandbox.execute_with_offload`.

`offloaded` describes the capture mechanism and is kept off `ExecuteResponse`
(which an o](/python/deepagents/backends/protocol/ExecuteOffloadResult)[Class

### SandboxBackendProtocol

Extension of `BackendProtocol` that adds shell command execution.

Designed for backends running in isolated environments (containers, VMs,
remote hosts).

Adds `execute()`/`aexecute()` for shell comm](/python/deepagents/backends/protocol/SandboxBackendProtocol)[Class

### BaseSandbox

Base sandbox implementation with `execute()` as the core abstract method.

This class provides default implementations for all protocol methods.
File listing, grep, and glob use shell commands via `ex](/python/deepagents/backends/sandbox/BaseSandbox)[Class

### CompositeBackend

Routes file operations to different backends by path prefix.

Matches paths against route prefixes (longest first) and delegates to the
corresponding backend. Unmatched paths use the default backend.](/python/deepagents/backends/composite/CompositeBackend)[Class

### StoreBackend

Backend that stores files in LangGraph's BaseStore (persistent).

Uses LangGraph's Store for persistent, cross-conversation storage.
Files are organized via namespaces and persist across all threads.](/python/deepagents/backends/store/StoreBackend)

## Functions

[Function

### resolve\_model

Resolve a model string to a `BaseChatModel`.

If `model` is already a `BaseChatModel`, returns it unchanged.

String models are resolved via `init_chat_model`, composed with any
provider-specific init](/python/deepagents/_models/resolve_model)[Function

### get\_model\_identifier

Extract the provider-native model identifier from a chat model.

Providers do not agree on a single field name for the identifier. Some use
`model_name`, while others use `model`.](/python/deepagents/_models/get_model_identifier)[Function

### get\_model\_provider

Extract the provider name from a chat model instance.

Uses the model's `_get_ls_params` method. The base `BaseChatModel`
implementation derives `ls_provider` from the class name, and all major
provid](/python/deepagents/_models/get_model_provider)[Function

### is\_bedrock\_model

Check whether a model targets AWS Bedrock.](/python/deepagents/_models/is_bedrock_model)[Function

### model\_matches\_spec

Check whether a model instance already matches a string model spec.

Bare specs match by model identifier. Provider-prefixed specs match by both
model identifier and provider when the current model ex](/python/deepagents/_models/model_matches_spec)[Function

### create\_deep\_agent

Create a deep agent.

By default, this agent has access to the following tools:

* `ls`, `read_file`, `write_file`, `edit_file`, `glob`, `grep`: file operations
* `execute`: run shell commands
* `task](/python/deepagents/graph/create_deep_agent)[Function

### validate\_profile\_key

Validate a `provider` or `provider:model` profile registry key.

The first colon separates the provider from the complete model identifier.
Providers must not contain colons, while model identifiers m](/python/deepagents/profiles/_keys/validate_profile_key)[Function

### check\_openrouter\_version

Raise if the installed `langchain-openrouter` is below the minimum.

If the package is not installed at all the check is skipped;
`init_chat_model` will surface its own missing-dependency error downst](/python/deepagents/profiles/provider/_openrouter/check_openrouter_version)[Function

### register

Register the built-in OpenRouter provider profile.](/python/deepagents/profiles/provider/_openrouter/register)[Function

### register

Register the built-in NVIDIA provider profile.](/python/deepagents/profiles/provider/_nvidia/register)[Function

### register\_provider\_profile

Register a `ProviderProfile` for a provider or specific model.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning do](/python/deepagents/profiles/provider/provider_profiles/register_provider_profile)[Function

### get\_provider\_profile

Look up the `ProviderProfile` for a model spec.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentation](ht](/python/deepagents/profiles/provider/provider_profiles/get_provider_profile)[Function

### apply\_provider\_profile

Compose `init_chat_model` kwargs from the registered profile for `spec`.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [ver](/python/deepagents/profiles/provider/provider_profiles/apply_provider_profile)[Function

### register

Register the built-in OpenAI provider profile.](/python/deepagents/profiles/provider/_openai/register)[Function

### register

Register the built-in Claude Sonnet 4.6 harness profile.](/python/deepagents/profiles/harness/_anthropic_sonnet_4_6/register)[Function

### register\_harness\_profile

Register a harness profile for a provider or specific model.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning docu](/python/deepagents/profiles/harness/harness_profiles/register_harness_profile)[Function

### register

Register the built-in Nemotron 3 Ultra harness profile.](/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/register)[Function

### register

Register the built-in Codex harness profile for each Codex spec.](/python/deepagents/profiles/harness/_openai_codex/register)[Function

### register

Register the built-in Claude Haiku 4.5 harness profile.](/python/deepagents/profiles/harness/_anthropic_haiku_4_5/register)[Function

### register

Register the built-in Claude Opus 4.7 harness profile.](/python/deepagents/profiles/harness/_anthropic_opus_4_7/register)[Function

### append\_prompt\_caching\_middleware

Append provider-specific prompt caching middleware.](/python/deepagents/middleware/_prompt_caching/append_prompt_caching_middleware)[Function

### create\_sub\_agent

Create a runnable agent from a raw `SubAgent` spec.

This is the shared entrypoint for the `create_agent` path used by
raw subagent specs. Pre-compiled `CompiledSubAgent` runnables are already
created](/python/deepagents/middleware/subagents/create_sub_agent)[Function

### private\_state\_field\_names

Return fields annotated with `PrivateStateAttr` across state schemas.

Annotations are resolved at runtime, so a schema whose `PrivateStateAttr`
annotation references a `TYPE_CHECKING`-only name canno](/python/deepagents/middleware/_state/private_state_field_names)[Function

### supports\_execution

Check if a backend supports command execution.

For `CompositeBackend`,
checks if the default backend supports execution.
For other backends, checks i](/python/deepagents/middleware/filesystem/supports_execution)[Function

### disclosed\_skill\_tool\_names

Return the names of the skill tools disclosed to the latest model call.

Use it in middleware that gates tool calls itself, so the gate admits the
skill tools the model has been shown. The agent's own](/python/deepagents/middleware/skills/disclosed_skill_tool_names)[Function

### compute\_summarization\_defaults

Compute default summarization settings based on model profile.](/python/deepagents/middleware/summarization/compute_summarization_defaults)[Function

### create\_summarization\_middleware

Create a Deep Agents `SummarizationMiddleware` with model-aware defaults.

Why this exists in `deepagents`

The Deep Agents `SummarizationMiddleware` wraps
`langchain.agents.middleware.Summarizatio](/python/deepagents/middleware/summarization/create_summarization_middleware)[Function

### create\_summarization\_tool\_middleware

Create a `SummarizationToolMiddleware` with model-aware defaults.

Convenience factory: builds a `SummarizationMiddleware` via
[`create_summarization_middleware`][deepagents.middleware.summarization.c](/python/deepagents/middleware/summarization/create_summarization_tool_middleware)[Function

### append\_to\_system\_message

Append text to a system message.](/python/deepagents/middleware/_utils/append_to_system_message)[Function

### video\_dependencies\_available

Return whether the optional video dependencies appear to be installed.

Uses `importlib.util.find_spec`, which checks that `av` and Pillow are
*discoverable* rather than performing a full import. A di](/python/deepagents/middleware/_video/video_dependencies_available)[Function

### extract\_video\_frames

Decode sampled frames from a video byte payload.](/python/deepagents/middleware/_video/extract_video_frames)[Function

### warn\_deprecated

Emit a deprecation warning with caller-controlled stack attribution.

`langchain_core.warn_deprecated` formats a standard message but hardcodes
`stacklevel=4` in its internal `warnings.warn` call. Tha](/python/deepagents/_api/deprecation/warn_deprecated)[Function

### reset\_deprecation\_dedupe

Reset the `@deprecated` decorator's dedupe flag for testing.

The langchain\_core `@deprecated` decorator emits each warning at most once
per process via a closure-bound `warned` flag. Tests that asser](/python/deepagents/_api/deprecation/reset_deprecation_dedupe)[Function

### compile\_grep\_include\_glob

Compile a grep include-glob into a matcher with ripgrep-like semantics.

Provides one shared include-glob behavior for every backend so the same
`grep(..., glob=...)` call closely mirrors ripgrep for](/python/deepagents/backends/utils/compile_grep_include_glob)[Function

### sanitize\_tool\_call\_id

Return a bounded, path-safe component for a tool call ID.](/python/deepagents/backends/utils/sanitize_tool_call_id)[Function

### format\_content\_with\_line\_numbers

Format file content with line numbers.

Chunks lines longer than `MAX_LINE_LENGTH` with continuation markers
(e.g., `5.1`, `5.2`). Line markers are separated from source content
with two spaces so sou](/python/deepagents/backends/utils/format_content_with_line_numbers)[Function

### check\_empty\_content

Check if content is empty and return warning message.](/python/deepagents/backends/utils/check_empty_content)[Function

### file\_data\_to\_string

Convert current or legacy persisted file content to a string.](/python/deepagents/backends/utils/file_data_to_string)[Function

### create\_file\_data

Create a `FileData` object with timestamps.](/python/deepagents/backends/utils/create_file_data)[Function

### update\_file\_data

Update `FileData` with new content, preserving creation timestamp.](/python/deepagents/backends/utils/update_file_data)[Function

### normalize\_read\_bounds

Floor a requested read window at a zero offset and zero lines.

Models occasionally emit degenerate `read_file` arguments (`offset=-1`,
`limit=0`). Clamping `offset` keeps backends from reporting a li](/python/deepagents/backends/utils/normalize_read_bounds)[Function

### slice\_read\_response

Slice file data to the requested line range without formatting.

The returned `ReadResult` carries the raw (unformatted) window in
`file_data`; line-number formatting is applied downstream by the
midd](/python/deepagents/backends/utils/slice_read_response)[Function

### perform\_string\_replacement

Perform string replacement with occurrence validation.](/python/deepagents/backends/utils/perform_string_replacement)[Function

### truncate\_if\_too\_long

Truncate list or string result if it exceeds token limit (rough estimate: 4 chars/token).](/python/deepagents/backends/utils/truncate_if_too_long)[Function

### to\_posix\_path

Normalize backslash separators to forward slashes for `PurePosixPath` use.

Backends running on Windows return OS-native paths using backslashes.
`PurePosixPath` treats backslashes as literal filename](/python/deepagents/backends/utils/to_posix_path)[Function

### validate\_path

Validate and normalize file path for security.

Ensures paths are safe to use by preventing directory traversal attacks
and enforcing consistent formatting. All paths are normalized to use
forward sla](/python/deepagents/backends/utils/validate_path)[Function

### grep\_matches\_from\_files

Return structured grep matches from an in-memory files mapping.

Performs literal text search (not regex).

Returns a `GrepResult` with matches on success. When `max_count` is set, at
most that many m](/python/deepagents/backends/utils/grep_matches_from_files)[Function

### build\_grep\_results\_dict

Group structured matches into the legacy dict form used by formatters.](/python/deepagents/backends/utils/build_grep_results_dict)[Function

### format\_grep\_matches

Format structured grep matches using existing formatting logic.](/python/deepagents/backends/utils/format_grep_matches)[Function

### regex\_literal\_hint

Return a hint when a pattern looks like an (unsupported) regex.

`grep` matches literal text, so regex metacharacters are searched verbatim
and silently miss. Callers gate this on a no-match result; t](/python/deepagents/backends/utils/regex_literal_hint)[Function

### execute\_accepts\_timeout

Check whether a backend class's `execute` accepts a `timeout` kwarg.

Older backend packages didn't lower-bound their SDK dependency, so they
may not accept the `timeout` keyword added to
[`SandboxBac](/python/deepagents/backends/protocol/execute_accepts_timeout)[Function

### get\_default\_model

deprecated

Get the default model for Deep Agents.

Deprecated

Deprecated since `0.5.3`; will be removed in `deepagents==1.0.0`.
Construct your model explicitly (e.g.,
`ChatAnthropic(model\_name="](/python/deepagents/graph/get_default_model)

## Modules

[Module

### deepagents

Deep Agents package.](/python/deepagents/deepagents)[Module

### graph

Primary graph assembly module for Deep Agents.

Provides `create_deep_agent`, the main entry
point for constructing a fully configured deep agent with planning, f](/python/deepagents/graph)[Module

### profiles

Public beta APIs for model and harness profiles.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentation](h](/python/deepagents/profiles)[Module

### provider

Provider profile package: `ProviderProfile` API and built-in providers.](/python/deepagents/profiles/provider)[Module

### provider\_profiles

Beta APIs for configuring model-construction behavior.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentat](/python/deepagents/profiles/provider/provider_profiles)[Module

### harness

Harness profile package: `HarnessProfile` API and built-in registrations.

Individual built-in modules expose a zero-arg `register()` callable; the lazy
`_builtin_profiles` bootstrap invokes them once](/python/deepagents/profiles/harness)[Module

### harness\_profiles

Beta APIs for configuring deep agent runtime behavior.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentat](/python/deepagents/profiles/harness/harness_profiles)[Module

### middleware

Middleware for the Deep Agents agent.

Overview

The LLM receives tools through two paths:

1. **SDK middleware** (this package) -- tools, system-prompt injection, and
   request interception that](/python/deepagents/middleware)[Module

### subagents

Middleware for providing subagents to an agent via a `task` tool.](/python/deepagents/middleware/subagents)[Module

### unsupported\_content

Replace input content blocks the active model can't accept.](/python/deepagents/middleware/unsupported_content)[Module

### filesystem

Middleware for providing filesystem tools to an agent.](/python/deepagents/middleware/filesystem)[Module

### async\_subagents

Middleware for async subagents running on remote Agent Protocol servers.

Async subagents use the LangGraph SDK to launch background runs on remote
[Agent Protocol](https://github.com/langchain-ai/age](/python/deepagents/middleware/async_subagents)[Module

### skills

Skills middleware for loading and exposing agent skills to the system prompt.

This module implements Anthropic's agent skills pattern with progressive disclosure,
loading skills from backend storage](/python/deepagents/middleware/skills)[Module

### summarization

Summarization middleware for automatic and tool-based conversation compaction.

This module provides two middleware classes and a convenience factory:

* `SummarizationMiddleware` — automatically comp](/python/deepagents/middleware/summarization)[Module

### memory

Middleware for loading agent memory/context from AGENTS.md files.

This module implements support for the AGENTS.md specification (https://agents.md/),
loading memory/context from configurable sources](/python/deepagents/middleware/memory)[Module

### rubric

Rubric middleware for self-evaluated agent iteration.

`RubricMiddleware` lets a caller declare *what done looks like* via a
rubric. Each time the agent would otherwise finish — i.e. the model
returns](/python/deepagents/middleware/rubric)[Module

### patch\_tool\_calls

Middleware to patch dangling tool calls in the messages history.](/python/deepagents/middleware/patch_tool_calls)[Module

### permissions

Backward-compatible re-export for filesystem permissions.](/python/deepagents/middleware/permissions)[Module

### deprecation

Adapter for `langchain_core`'s private deprecation helpers.

Centralizes the import surface so an upstream rename or move is a one-file
change.

Re-exports:

* `deprecated`: decorator for callables, cl](/python/deepagents/_api/deprecation)[Module

### backends

Memory backends for pluggable file storage.](/python/deepagents/backends)[Module

### langsmith

LangSmith sandbox backend implementation.](/python/deepagents/backends/langsmith)[Module

### local\_shell

`LocalShellBackend`: Filesystem backend with unrestricted local shell execution.

This backend extends `FilesystemBackend` to add shell command execution on
the local host system. It provides NO sandb](/python/deepagents/backends/local_shell)[Module

### utils

Shared utility functions for memory backend implementations.

This module contains both user-facing string formatters and structured
helpers used by backends and the composite router. Structured helpe](/python/deepagents/backends/utils)[Module

### filesystem

`FilesystemBackend`: Read and write files directly from the filesystem.](/python/deepagents/backends/filesystem)[Module

### context\_hub

`ContextHubBackend`: Store files in a LangSmith Hub agent repo (persistent).](/python/deepagents/backends/context_hub)[Module

### state

`StateBackend`: Store files in LangGraph agent state (ephemeral).](/python/deepagents/backends/state)[Module

### protocol

Protocol definition for pluggable memory backends.

This module defines the `BackendProtocol` that all backend implementations
must follow. Backends can store files in different locations (state, file](/python/deepagents/backends/protocol)[Module

### sandbox

Base sandbox implementation.

`BaseSandbox` implements
`SandboxBackendProtocol`.

File listing, grep,](/python/deepagents/backends/sandbox)[Module

### composite

Composite backend that routes file operations by path prefix.

Routes operations to different backends based on path prefixes. Use this when
you need different storage strategies for different paths (](/python/deepagents/backends/composite)[Module

### store

`StoreBackend`: Adapter for LangGraph's BaseStore (persistent, cross-thread).](/python/deepagents/backends/store)

## Types

[Type

### SkillSource

A skill source: either a bare path or a `(path, label)` pair.

When only a path is given, the label is derived from the final path
component. Supply a tuple to override the default (e.g. to distinguis](/python/deepagents/middleware/skills/SkillSource)[Type

### RubricResult

Status recorded on each evaluation.

Superset of `GraderVerdict` with two middleware-synthesized terminal
statuses the grader cannot emit itself:

* `max_iterations_reached`: the iteration cap fired o](/python/deepagents/middleware/rubric/RubricResult)[Type

### GlobBackendResult

Result shape accepted by composite glob merge helpers.

Composite glob supports both current `GlobResult` values and legacy
`list[FileInfo]` backend returns.](/python/deepagents/backends/composite/GlobBackendResult)

Copy page

### On This Page

DescriptionClasses96Functions52Modules30Types3