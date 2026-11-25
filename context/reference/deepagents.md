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

> **Deep Agents Code** — a pre-built coding agent in your terminal, similar to Claude Code or Cursor, powered by any LLM. Install with `curl -LsSf https://langch.in/dcode | bash`. See the [documentation](https://docs.langchain.com/deepagents-code) for the full feature set.

```
from deepagents import create_deep_agent

agent = create_deep_agent(
    model="openai:gpt-6-astra",
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

See the [changelog](https://github.com/langchain-ai/deepagents/blob/main/libs/deepagents/CHANGELOG.md) for release history.

See our [Releases](https://docs.langchain.com/oss/python/release-policy) and [Versioning](https://docs.langchain.com/oss/python/versioning) policies.

## 🔒 Security

Deep Agents follows a "trust the LLM" model. The agent can do anything its tools allow. Enforce boundaries at the tool/sandbox level, not by expecting the model to self-police. See the [security policy](https://github.com/langchain-ai/deepagents?tab=security-ov-file) for more information.

## 💁 Contributing

As an open-source project in a rapidly developing field, we are extremely open to contributions, whether it be in the form of a new feature, improved infrastructure, or better documentation.

For local setup and package-specific checks, see the [Development Guide](https://github.com/langchain-ai/deepagents/blob/main/libs/DEVELOPMENT.md). For contribution policy, see the [Contributing Guide](https://docs.langchain.com/oss/python/contributing/overview).

## Classes

Class

### [DeepAgentState](https://reference.langchain.com/python/deepagents/graph/DeepAgentState)

AgentState with `DeltaChannel` on messages to reduce checkpoint growth from O(N²) to O(N).

Class

### [WindowsProcessReader](https://reference.langchain.com/python/deepagents/backends/_windows_process/WindowsProcessReader)

Read both captured pipes by polling instead of with reader threads.

`subprocess.communicate` starts a thread for each pipe on Windows. Those
threads hold the pipe until the write end closes, so a cal

Class

### [BaseSandbox](https://reference.langchain.com/python/deepagents/backends/sandbox/BaseSandbox)

Base sandbox implementation with `execute()` as the core abstract method.

This class provides default implementations for all protocol methods.
File listing, grep, and glob use shell commands via `ex

Class

### [InvalidGlobPatternError](https://reference.langchain.com/python/deepagents/backends/utils/InvalidGlobPatternError)

A glob pattern the shared matcher refuses to compile.

Subclasses `ValueError` so existing `except ValueError` handlers keep
working. Callers that catch this specific type can label the failure a
*pat

Class

### [ContextHubBackend](https://reference.langchain.com/python/deepagents/backends/context_hub/ContextHubBackend)

Backend that stores files in a LangSmith Hub agent repo (persistent).

Class

### [CompositeBackend](https://reference.langchain.com/python/deepagents/backends/composite/CompositeBackend)

Routes file operations to different backends by path prefix.

Matches paths against route prefixes (longest first) and delegates to the
corresponding backend. Unmatched paths use the default backend.

Class

### [StateBackend](https://reference.langchain.com/python/deepagents/backends/state/StateBackend)

Backend that stores files in agent state (ephemeral).

Uses LangGraph's state management and checkpointing. Files persist within
a conversation thread but not across threads. State is automatically
ch

Class

### [LocalShellBackend](https://reference.langchain.com/python/deepagents/backends/local_shell/LocalShellBackend)

Filesystem backend with unrestricted local shell command execution.

This backend extends `FilesystemBackend` to add shell command execution
capabilities. Commands are executed directly on the host sy

Class

### [FilesystemBackend](https://reference.langchain.com/python/deepagents/backends/filesystem/FilesystemBackend)

Backend that reads and writes files directly from the filesystem.

Files are accessed using their actual filesystem paths. Relative paths are
resolved relative to the current working directory. Conten

Class

### [FileDownloadResponse](https://reference.langchain.com/python/deepagents/backends/protocol/FileDownloadResponse)

Result of a single file download operation.

The response is designed to allow partial success in batch operations.

The errors are standardized using `FileOperationError` literals for certain
recover

Class

### [FileUploadResponse](https://reference.langchain.com/python/deepagents/backends/protocol/FileUploadResponse)

Result of a single file upload operation.

The response is designed to allow partial success in batch operations.

The errors are standardized using `FileOperationError` literals for certain
recoverab

Class

### [FileInfo](https://reference.langchain.com/python/deepagents/backends/protocol/FileInfo)

Structured file listing info.

Minimal contract used across backends. Only `path` is required.
Other fields are best-effort and may be absent depending on backend.

Class

### [ContextLine](https://reference.langchain.com/python/deepagents/backends/protocol/ContextLine)

A non-matching line surrounding a grep match, used for `context_lines`.

Class

### [GrepMatch](https://reference.langchain.com/python/deepagents/backends/protocol/GrepMatch)

A single match from a grep search.

Class

### [FileData](https://reference.langchain.com/python/deepagents/backends/protocol/FileData)

Data structure for storing file contents with metadata.

Class

### [ReadResult](https://reference.langchain.com/python/deepagents/backends/protocol/ReadResult)

Result from backend read operations.

Class

### [WriteResult](https://reference.langchain.com/python/deepagents/backends/protocol/WriteResult)

Result from backend `write` operations.

Class

### [EditResult](https://reference.langchain.com/python/deepagents/backends/protocol/EditResult)

Result from backend `edit` operations.

Class

### [DeleteResult](https://reference.langchain.com/python/deepagents/backends/protocol/DeleteResult)

Result from backend delete operations.

Class

### [LsResult](https://reference.langchain.com/python/deepagents/backends/protocol/LsResult)

Result from backend `ls` operations.

Class

### [GrepResult](https://reference.langchain.com/python/deepagents/backends/protocol/GrepResult)

Result from backend `grep` operations.

Class

### [GlobResult](https://reference.langchain.com/python/deepagents/backends/protocol/GlobResult)

Result from backend `glob` operations.

Class

### [BackendProtocol](https://reference.langchain.com/python/deepagents/backends/protocol/BackendProtocol)

Protocol for pluggable memory backends (single, unified).

Backends can store files in different locations (state, filesystem,
database, etc.) and provide a uniform interface for file operations.

Fil

Class

### [BackendConsumer](https://reference.langchain.com/python/deepagents/backends/protocol/BackendConsumer)

Middleware that works on the agent's backend.

`create_deep_agent` calls `bind_backend` on each middleware it is given that
has this method, with the backend its file tools use.

Class

### [ExecuteResponse](https://reference.langchain.com/python/deepagents/backends/protocol/ExecuteResponse)

Result of code execution.

Simplified schema optimized for LLM consumption.

Class

### [ExecuteArtifact](https://reference.langchain.com/python/deepagents/backends/protocol/ExecuteArtifact)

Machine-readable metadata attached to an `execute` tool result.

Carried on `ToolMessage.artifact` alongside the model-facing `content`, so
callers can react to shell failures. `artifact` is `None` in

Class

### [ExecuteOffloadResult](https://reference.langchain.com/python/deepagents/backends/protocol/ExecuteOffloadResult)

Result of `BaseSandbox.execute_with_offload`.

`offloaded` describes the capture mechanism and is kept off `ExecuteResponse`
(which an o

Class

### [SandboxBackendProtocol](https://reference.langchain.com/python/deepagents/backends/protocol/SandboxBackendProtocol)

Extension of `BackendProtocol` that adds shell command execution.

Designed for backends running in isolated environments (containers, VMs,
remote hosts).

Adds `execute()`/`aexecute()` for shell comm

Class

### [PosixProcessReader](https://reference.langchain.com/python/deepagents/backends/_posix_process/PosixProcessReader)

Collect text-mode output across polling attempts, joining only at EOF.

Unlike `Popen.communicate`, a timed-out attempt does not build a snapshot of
all output read so far. Chunks stay buffered for th

Class

### [StoreBackend](https://reference.langchain.com/python/deepagents/backends/store/StoreBackend)

Backend that stores files in LangGraph's BaseStore (persistent).

Uses LangGraph's Store for persistent, cross-conversation storage.
Files are organized via namespaces and persist across all threads.

Class

### [LangSmithSandbox](https://reference.langchain.com/python/deepagents/backends/langsmith/LangSmithSandbox)

LangSmith sandbox implementation conforming to `SandboxBackendProtocol`.

Class

### [VideoExtractionError](https://reference.langchain.com/python/deepagents/middleware/_video/VideoExtractionError)

Raised when PyAV cannot produce frames for the requested window.

Class

### [CompactConversationSchema](https://reference.langchain.com/python/deepagents/middleware/summarization/CompactConversationSchema)

Input schema for the `compact_conversation` tool.

Class

### [SummarizationEvent](https://reference.langchain.com/python/deepagents/middleware/summarization/SummarizationEvent)

Represents a summarization event.

Class

### [TriggerClause](https://reference.langchain.com/python/deepagents/middleware/summarization/TriggerClause)

Dictionary-based summarization trigger with AND semantics.

Class

### [TruncateArgsSettings](https://reference.langchain.com/python/deepagents/middleware/summarization/TruncateArgsSettings)

Settings for truncating large tool-call arguments in older messages.

This is a lightweight, pre-summarization optimization that fires at a lower
token threshold than full conversation compaction. Whe

Class

### [SummarizationState](https://reference.langchain.com/python/deepagents/middleware/summarization/SummarizationState)

State for the summarization middleware.

Extends AgentState with a private field for tracking summarization events.

Class

### [SummarizationDefaults](https://reference.langchain.com/python/deepagents/middleware/summarization/SummarizationDefaults)

Default settings computed from model profile.

Class

### [SummarizationToolMiddleware](https://reference.langchain.com/python/deepagents/middleware/summarization/SummarizationToolMiddleware)

Middleware that provides a `compact_conversation` tool for manual compaction.

This middleware composes with a `SummarizationMiddleware` instance, reusing
its summarization engine (model, backend, tri

Class

### [CriterionPass](https://reference.langchain.com/python/deepagents/middleware/rubric/CriterionPass)

Per-criterion grader verdict when the criterion passes.

Class

### [CriterionFail](https://reference.langchain.com/python/deepagents/middleware/rubric/CriterionFail)

Per-criterion grader verdict when the criterion fails.

Class

### [RubricEvaluation](https://reference.langchain.com/python/deepagents/middleware/rubric/RubricEvaluation)

One grader evaluation, appended to `_rubric_evaluations` each iteration.

Consumers can read any field without guarding against absence since all
fields are always populated by `_build_evaluation` and

Class

### [RubricState](https://reference.langchain.com/python/deepagents/middleware/rubric/RubricState)

State schema for `RubricMiddleware`.

Only `rubric` is part of the public I/O schema -- callers write a
rubric and read the improved agent response back from `messages`.

Everything else is bookkeepin

Class

### [GraderResponse](https://reference.langchain.com/python/deepagents/middleware/rubric/GraderResponse)

Structured output the grader sub-agent must emit.

Passed as `response_format=GraderResponse` to `create_agent` so the
underlying provider's structured output strategy is auto-selected.

Class

### [RubricMiddleware](https://reference.langchain.com/python/deepagents/middleware/rubric/RubricMiddleware)

Middleware that drives self-evaluated iteration against a rubric.

The middleware activates only when a caller passes a `rubric` on
invocation state. With no rubric, both `before_agent` and `after_age

Class

### [UnsupportedContentMiddleware](https://reference.langchain.com/python/deepagents/middleware/unsupported_content/UnsupportedContentMiddleware)

Replace multimodal input blocks the active model can't accept with a text notice.

Without it, a request carrying content the model can't accept (e.g. an image sent
to a text-only model) fails, and si

Class

### [SkillMetadata](https://reference.langchain.com/python/deepagents/middleware/skills/SkillMetadata)

Metadata for a skill per Agent Skills specification (https://agentskills.io/specification).

Class

### [SkillsState](https://reference.langchain.com/python/deepagents/middleware/skills/SkillsState)

State for the skills middleware.

Class

### [SkillsStateUpdate](https://reference.langchain.com/python/deepagents/middleware/skills/SkillsStateUpdate)

State update for the skills middleware.

Class

### [SkillsMiddleware](https://reference.langchain.com/python/deepagents/middleware/skills/SkillsMiddleware)

Middleware for loading and exposing agent skills to the system prompt.

Loads skills from backend sources and injects them into the system prompt
using progressive disclosure (metadata first, full con

Class

### [ContentPreview](https://reference.langchain.com/python/deepagents/middleware/_message_eviction/ContentPreview)

A rendered preview plus a record of what was left out to build it.

The flags are reported by the code that built `text`, never inferred from
the rendered bytes — a literal `... [N lines truncated] ..

Class

### [PatchToolCallsMiddleware](https://reference.langchain.com/python/deepagents/middleware/patch_tool_calls/PatchToolCallsMiddleware)

Middleware to patch dangling tool calls in the messages history.

Class

### [FilesystemPermission](https://reference.langchain.com/python/deepagents/middleware/filesystem/FilesystemPermission)

A single access rule for filesystem operations.

With `FilesystemBackend` (directly or behind a `CompositeBackend` route),
rules are matched against both the requested path and its symlink-resolved
ta

Class

### [FilesystemState](https://reference.langchain.com/python/deepagents/middleware/filesystem/FilesystemState)

State for the filesystem middleware.

Class

### [LsSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/LsSchema)

Input schema for the `ls` tool.

Class

### [ReadFileSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/ReadFileSchema)

Input schema for the `read_file` tool.

Class

### [ReadVideoFileSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/ReadVideoFileSchema)

Input schema for `read_file` when the optional video frame extraction is available.

Identical to `ReadFileSchema`; only the `offset`/`limit` descriptions differ
to document their video semantics (int

Class

### [WriteFileSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/WriteFileSchema)

Input schema for the `write_file` tool.

Class

### [EditFileSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/EditFileSchema)

Input schema for the `edit_file` tool.

Class

### [DeleteSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/DeleteSchema)

Input schema for the `delete` tool.

Class

### [GlobSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/GlobSchema)

Input schema for the `glob` tool.

Class

### [GrepSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/GrepSchema)

Input schema for the `grep` tool.

Class

### [ExecuteSchema](https://reference.langchain.com/python/deepagents/middleware/filesystem/ExecuteSchema)

Input schema for the `execute` tool.

Class

### [FilesystemMiddleware](https://reference.langchain.com/python/deepagents/middleware/filesystem/FilesystemMiddleware)

Middleware for providing filesystem and optional execution tools to an agent.

This middleware adds filesystem tools to the agent: `ls`, `read_file`, `write_file`,
`edit_file`, `glob`, and `grep`.

Fi

Class

### [MemoryState](https://reference.langchain.com/python/deepagents/middleware/memory/MemoryState)

State schema for `MemoryMiddleware`.

Class

### [MemoryStateUpdate](https://reference.langchain.com/python/deepagents/middleware/memory/MemoryStateUpdate)

State update for `MemoryMiddleware`.

Class

### [MemoryMiddleware](https://reference.langchain.com/python/deepagents/middleware/memory/MemoryMiddleware)

Middleware for loading agent memory from `AGENTS.md` files.

Loads memory content from configured sources and injects into the system
prompt. Supports multiple sources that are combined together. See

Class

### [AsyncSubAgent](https://reference.langchain.com/python/deepagents/middleware/async_subagents/AsyncSubAgent)

Specification for an async subagent running on a remote Agent Protocol server.

Async subagents connect to any Agent Protocol-compliant server via the

Class

### [AsyncTask](https://reference.langchain.com/python/deepagents/middleware/async_subagents/AsyncTask)

A tracked async subagent task persisted in agent state.

Class

### [AsyncSubAgentState](https://reference.langchain.com/python/deepagents/middleware/async_subagents/AsyncSubAgentState)

State extension for async subagent task tracking.

Class

### [StartAsyncTaskSchema](https://reference.langchain.com/python/deepagents/middleware/async_subagents/StartAsyncTaskSchema)

Input schema for the `start_async_task` tool.

Class

### [CheckAsyncTaskSchema](https://reference.langchain.com/python/deepagents/middleware/async_subagents/CheckAsyncTaskSchema)

Input schema for the `check_async_task` tool.

Class

### [UpdateAsyncTaskSchema](https://reference.langchain.com/python/deepagents/middleware/async_subagents/UpdateAsyncTaskSchema)

Input schema for the `update_async_task` tool.

Class

### [CancelAsyncTaskSchema](https://reference.langchain.com/python/deepagents/middleware/async_subagents/CancelAsyncTaskSchema)

Input schema for the `cancel_async_task` tool.

Class

### [ListAsyncTasksSchema](https://reference.langchain.com/python/deepagents/middleware/async_subagents/ListAsyncTasksSchema)

Input schema for the `list_async_tasks` tool.

Class

### [TaskEvent](https://reference.langchain.com/python/deepagents/middleware/async_subagents/TaskEvent)

How an async subagent's task ended or paused, as reported to the agent that started it.

A notification message carries it as notification metadata with source
`"async_subagent"`; read it with `get_no

Class

### [AsyncSubAgentMiddleware](https://reference.langchain.com/python/deepagents/middleware/async_subagents/AsyncSubAgentMiddleware)

Middleware for async subagents running on remote Agent Protocol servers.

This middleware adds tools for launching, monitoring, and updating
background tasks on remote Agent Protocol servers. Unlike t

Class

### [SubAgent](https://reference.langchain.com/python/deepagents/middleware/subagents/SubAgent)

Specification for a declarative subagent.

By default the subagent is isolated: it receives only the delegated task
description. Setting `mode="fork"` makes it continue the parent's
conversation inste

Class

### [CompiledSubAgent](https://reference.langchain.com/python/deepagents/middleware/subagents/CompiledSubAgent)

A pre-compiled agent spec.

Note

The `runnable`'s state schema must include a 'messages' key.

This is required for the subagent to communicate results back to
the main agent.

Class

### [TaskToolSchema](https://reference.langchain.com/python/deepagents/middleware/subagents/TaskToolSchema)

Input schema for the `task` tool.

Class

### [SubAgentMiddleware](https://reference.langchain.com/python/deepagents/middleware/subagents/SubAgentMiddleware)

Middleware for providing subagents to an agent via a `task` tool.

This middleware adds a `task` tool to the agent that can be used
to invoke subagents.

Subagents are useful for handling complex task

Class

### [ProviderProfile](https://reference.langchain.com/python/deepagents/profiles/provider/provider_profiles/ProviderProfile)

Declarative configuration for constructing a chat model.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning document

Class

### [GeneralPurposeSubagentProfile](https://reference.langchain.com/python/deepagents/profiles/harness/harness_profiles/GeneralPurposeSubagentProfile)

Edits applied to the auto-added `general-purpose` subagent.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning docum

Class

### [HarnessProfileConfig](https://reference.langchain.com/python/deepagents/profiles/harness/harness_profiles/HarnessProfileConfig)

Declarative harness-profile config for YAML/JSON-backed profiles.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning

Class

### [HarnessProfile](https://reference.langchain.com/python/deepagents/profiles/harness/harness_profiles/HarnessProfile)

Runtime configuration for deep agent behavior.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentation](htt

Class

### [NemotronToolCallShim](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronToolCallShim)

Repair small Nemotron filesystem tool-call and tool-result quirks.

Class

### [ReadFileContinuationNoticeMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/ReadFileContinuationNoticeMiddleware)

Append a continuation notice to exactly-at-limit `read_file` results.

Class

### [ModelRateLimitRetryMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/ModelRateLimitRetryMiddleware)

Retry transient provider 429s around model calls.

Class

### [ChatNVIDIAMessageCompatibilityMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/ChatNVIDIAMessageCompatibilityMiddleware)

Mirror standard LangChain tool-call fields into ChatNVIDIA payload metadata.

Class

### [NemotronReasoningTagCleanupMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronReasoningTagCleanupMiddleware)

Remove preserved `<think>` blocks from normal assistant content.

Class

### [NemotronTextToolCallParser](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronTextToolCallParser)

Repair tool calls emitted as text content instead of structured calls.

Class

### [NemotronProgressBudgetMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronProgressBudgetMiddleware)

Stop Ultra3-specific tool loops before they consume runaway context.

Class

### [NemotronPolicyNudgeState](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronPolicyNudgeState)

State schema for one-shot Nemotron policy nudges.

Class

### [NemotronPolicyNudgeMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/NemotronPolicyNudgeMiddleware)

Inject lightweight policy nudges for common Ultra3 agent-control misses.

Class

### [FollowupDisciplineState](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FollowupDisciplineState)

State schema for `FollowupDisciplineMiddleware`.

Class

### [FollowupDisciplineMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FollowupDisciplineMiddleware)

Send Ultra3 back once when it asks redundant follow-up questions.

Class

### [EntityResolutionGuardState](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/EntityResolutionGuardState)

State schema for `EntityResolutionGuardMiddleware`.

Class

### [EntityResolutionGuardMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/EntityResolutionGuardMiddleware)

Send Ultra3 back once when it finalizes with unresolved or mis-bound IDs.

Class

### [FinalAnswerGuardState](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FinalAnswerGuardState)

State schema for `FinalAnswerGuardMiddleware`.

Class

### [FinalAnswerGuardMiddleware](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/FinalAnswerGuardMiddleware)

Send Ultra3 back once when a final answer drops obvious required details.

## Functions

Function

### [resolve_model](https://reference.langchain.com/python/deepagents/_models/resolve_model)

Resolve a model string to a `BaseChatModel`.

If `model` is already a `BaseChatModel`, returns it unchanged.

String models are resolved via `init_chat_model`, composed with any
provider-specific init

Function

### [get_model_identifier](https://reference.langchain.com/python/deepagents/_models/get_model_identifier)

Extract the provider-native model identifier from a chat model.

Providers do not agree on a single field name for the identifier. Some use
`model_name`, while others use `model`.

Function

### [get_model_provider](https://reference.langchain.com/python/deepagents/_models/get_model_provider)

Extract the provider name from a chat model instance.

Uses the model's `_get_ls_params` method. The base `BaseChatModel`
implementation derives `ls_provider` from the class name, and all major
provid

Function

### [is_bedrock_model](https://reference.langchain.com/python/deepagents/_models/is_bedrock_model)

Check whether a model targets AWS Bedrock.

Function

### [model_matches_spec](https://reference.langchain.com/python/deepagents/_models/model_matches_spec)

Check whether a model instance already matches a string model spec.

Bare specs match by model identifier. Provider-prefixed specs match by both
model identifier and provider when the current model ex

Function

### [create_deep_agent](https://reference.langchain.com/python/deepagents/graph/create_deep_agent)

Create a deep agent.

By default, this agent has access to the following tools:

* `ls`, `read_file`, `write_file`, `edit_file`, `glob`, `grep`: file operations
* `execute`: run shell commands
* `task

Function

### [compile_grep_include_glob](https://reference.langchain.com/python/deepagents/backends/utils/compile_grep_include_glob)

Compile a grep include-glob into a matcher with ripgrep-like semantics.

Provides one shared include-glob behavior for every backend so the same
`grep(..., glob=...)` call closely mirrors ripgrep for

Function

### [sanitize_tool_call_id](https://reference.langchain.com/python/deepagents/backends/utils/sanitize_tool_call_id)

Return a bounded, path-safe component for a tool call ID.

Function

### [format_content_with_line_numbers](https://reference.langchain.com/python/deepagents/backends/utils/format_content_with_line_numbers)

Format file content with line numbers.

Chunks lines longer than `MAX_LINE_LENGTH` with continuation markers
(e.g., `5.1`, `5.2`). Line markers are separated from source content
with two spaces so sou

Function

### [check_empty_content](https://reference.langchain.com/python/deepagents/backends/utils/check_empty_content)

Check if content is empty and return warning message.

Function

### [file_data_to_string](https://reference.langchain.com/python/deepagents/backends/utils/file_data_to_string)

Convert current or legacy persisted file content to a string.

Function

### [create_file_data](https://reference.langchain.com/python/deepagents/backends/utils/create_file_data)

Create a `FileData` object with timestamps.

Function

### [update_file_data](https://reference.langchain.com/python/deepagents/backends/utils/update_file_data)

Update `FileData` with new content, preserving creation timestamp.

Function

### [normalize_read_bounds](https://reference.langchain.com/python/deepagents/backends/utils/normalize_read_bounds)

Floor a requested read window at a zero offset and zero lines.

Models occasionally emit degenerate `read_file` arguments (`offset=-1`,
`limit=0`). Clamping `offset` keeps backends from reporting a li

Function

### [slice_read_response](https://reference.langchain.com/python/deepagents/backends/utils/slice_read_response)

Slice file data to the requested line range without formatting.

The returned `ReadResult` carries the raw (unformatted) window in
`file_data`; line-number formatting is applied downstream by the
midd

Function

### [perform_string_replacement](https://reference.langchain.com/python/deepagents/backends/utils/perform_string_replacement)

Perform string replacement with occurrence validation.

Function

### [truncate_if_too_long](https://reference.langchain.com/python/deepagents/backends/utils/truncate_if_too_long)

Truncate list or string result if it exceeds token limit (rough estimate: 4 chars/token).

Function

### [to_posix_path](https://reference.langchain.com/python/deepagents/backends/utils/to_posix_path)

Normalize backslash separators to forward slashes for `PurePosixPath` use.

Backends running on Windows return OS-native paths using backslashes.
`PurePosixPath` treats backslashes as literal filename

Function

### [validate_path](https://reference.langchain.com/python/deepagents/backends/utils/validate_path)

Validate and normalize file path for security.

Ensures paths are safe to use by preventing directory traversal attacks
and enforcing consistent formatting. All paths are normalized to use
forward sla

Function

### [grep_matches_from_files](https://reference.langchain.com/python/deepagents/backends/utils/grep_matches_from_files)

Return structured grep matches from an in-memory files mapping.

Performs literal text search (not regex).

Returns a `GrepResult` with matches on success. When `max_count` is set, at
most that many m

Function

### [build_grep_results_dict](https://reference.langchain.com/python/deepagents/backends/utils/build_grep_results_dict)

Group structured matches into the legacy dict form used by formatters.

Function

### [format_grep_matches](https://reference.langchain.com/python/deepagents/backends/utils/format_grep_matches)

Format structured grep matches using existing formatting logic.

Function

### [regex_literal_hint](https://reference.langchain.com/python/deepagents/backends/utils/regex_literal_hint)

Return a hint when a pattern looks like an (unsupported) regex.

`grep` matches literal text, so regex metacharacters are searched verbatim
and silently miss. Callers gate this on a no-match result; t

Function

### [execute_accepts_timeout](https://reference.langchain.com/python/deepagents/backends/protocol/execute_accepts_timeout)

Check whether a backend class's `execute` accepts a `timeout` kwarg.

Older backend packages didn't lower-bound their SDK dependency, so they
may not accept the `timeout` keyword added to
[`SandboxBac

Function

### [video_dependencies_available](https://reference.langchain.com/python/deepagents/middleware/_video/video_dependencies_available)

Return whether the optional video dependencies appear to be installed.

Uses `importlib.util.find_spec`, which checks that `av` and Pillow are
*discoverable* rather than performing a full import. A di

Function

### [extract_video_frames](https://reference.langchain.com/python/deepagents/middleware/_video/extract_video_frames)

Decode sampled frames from a video byte payload.

Function

### [compute_summarization_defaults](https://reference.langchain.com/python/deepagents/middleware/summarization/compute_summarization_defaults)

Compute default summarization settings based on model profile.

Function

### [create_summarization_middleware](https://reference.langchain.com/python/deepagents/middleware/summarization/create_summarization_middleware)

Create a Deep Agents `SummarizationMiddleware` with model-aware defaults.

Why this exists in `deepagents`

The Deep Agents `SummarizationMiddleware` wraps
`langchain.agents.middleware.Summarizatio

Function

### [create_summarization_tool_middleware](https://reference.langchain.com/python/deepagents/middleware/summarization/create_summarization_tool_middleware)

Create a `SummarizationToolMiddleware` with model-aware defaults.

Convenience factory: builds a `SummarizationMiddleware` via
[`create_summarization_middleware`][deepagents.middleware.summarization.c

Function

### [private_state_field_names](https://reference.langchain.com/python/deepagents/middleware/_state/private_state_field_names)

Return fields annotated with `PrivateStateAttr` across state schemas.

Annotations are resolved at runtime, so a schema whose `PrivateStateAttr`
annotation references a `TYPE_CHECKING`-only name canno

Function

### [append_to_system_message](https://reference.langchain.com/python/deepagents/middleware/_utils/append_to_system_message)

Append text to a system message.

Function

### [is_anthropic_chat_model](https://reference.langchain.com/python/deepagents/middleware/_utils/is_anthropic_chat_model)

Return whether `model` is a `langchain_anthropic` chat model.

Reads `sys.modules` rather than importing `langchain_anthropic`: an instance
of `ChatAnthropic` implies its module is loaded, and importi

Function

### [disclosed_skill_tool_names](https://reference.langchain.com/python/deepagents/middleware/skills/disclosed_skill_tool_names)

Return the names of the skill tools disclosed to the latest model call.

Use it in middleware that gates tool calls itself, so the gate admits the
skill tools the model has been shown. The agent's own

Function

### [append_prompt_caching_middleware](https://reference.langchain.com/python/deepagents/middleware/_prompt_caching/append_prompt_caching_middleware)

Append provider-specific prompt caching middleware.

Function

### [supports_execution](https://reference.langchain.com/python/deepagents/middleware/filesystem/supports_execution)

Check if a backend supports command execution.

For `CompositeBackend`,
checks if the default backend supports execution.
For other backends, checks i

Function

### [create_sub_agent](https://reference.langchain.com/python/deepagents/middleware/subagents/create_sub_agent)

Create a runnable agent from a raw `SubAgent` spec.

This is the shared entrypoint for the `create_agent` path used by
raw subagent specs. Pre-compiled `CompiledSubAgent` runnables are already
created

Function

### [validate_profile_key](https://reference.langchain.com/python/deepagents/profiles/_keys/validate_profile_key)

Validate a `provider` or `provider:model` profile registry key.

The first colon separates the provider from the complete model identifier.
Providers must not contain colons, while model identifiers m

Function

### [check_openrouter_version](https://reference.langchain.com/python/deepagents/profiles/provider/_openrouter/check_openrouter_version)

Raise if the installed `langchain-openrouter` is below the minimum.

If the package is not installed at all the check is skipped;
`init_chat_model` will surface its own missing-dependency error downst

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/provider/_openrouter/register)

Register the built-in OpenRouter provider profile.

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/provider/_nvidia/register)

Register the built-in NVIDIA provider profile.

Function

### [register_provider_profile](https://reference.langchain.com/python/deepagents/profiles/provider/provider_profiles/register_provider_profile)

Register a `ProviderProfile` for a provider or specific model.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning do

Function

### [get_provider_profile](https://reference.langchain.com/python/deepagents/profiles/provider/provider_profiles/get_provider_profile)

Look up the `ProviderProfile` for a model spec.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentation](ht

Function

### [apply_provider_profile](https://reference.langchain.com/python/deepagents/profiles/provider/provider_profiles/apply_provider_profile)

Compose `init_chat_model` kwargs from the registered profile for `spec`.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [ver

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/provider/_openai/register)

Register the built-in OpenAI provider profile.

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/harness/_openai_codex/register)

Register the built-in Codex harness profile for each Codex spec.

Function

### [register_harness_profile](https://reference.langchain.com/python/deepagents/profiles/harness/harness_profiles/register_harness_profile)

Register a harness profile for a provider or specific model.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning docu

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/harness/_anthropic_haiku_4_5/register)

Register the built-in Claude Haiku 4.5 harness profile.

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/harness/_anthropic_sonnet_4_6/register)

Register the built-in Claude Sonnet 4.6 harness profile.

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/harness/_anthropic_opus_4_7/register)

Register the built-in Claude Opus 4.7 harness profile.

Function

### [register](https://reference.langchain.com/python/deepagents/profiles/harness/_nvidia_nemotron_3_ultra/register)

Register the built-in Nemotron 3 Ultra harness profile.

Function

### [warn_deprecated](https://reference.langchain.com/python/deepagents/_api/deprecation/warn_deprecated)

Emit a deprecation warning with caller-controlled stack attribution.

Function

### [reset_deprecation_dedupe](https://reference.langchain.com/python/deepagents/_api/deprecation/reset_deprecation_dedupe)

Reset the `@deprecated` decorator's dedupe flag for testing.

The langchain_core `@deprecated` decorator emits each warning at most once
per process via a closure-bound `warned` flag. Tests that asser

Function

### [get_default_model](https://reference.langchain.com/python/deepagents/graph/get_default_model)

deprecated

Get the default model for Deep Agents.

Deprecated

Deprecated since `0.5.3`; will be removed in `deepagents==1.0.0`.
Construct your model explicitly (e.g.,
`ChatAnthropic(model_name="

## Modules

Module

### [deepagents](https://reference.langchain.com/python/deepagents/deepagents)

Deep Agents package.

Module

### [graph](https://reference.langchain.com/python/deepagents/graph)

Primary graph assembly module for Deep Agents.

Provides `create_deep_agent`, the main entry
point for constructing a fully configured deep agent with planning, f

Module

### [backends](https://reference.langchain.com/python/deepagents/backends)

Memory backends for pluggable file storage.

Module

### [sandbox](https://reference.langchain.com/python/deepagents/backends/sandbox)

Base sandbox implementation.

`BaseSandbox` implements
`SandboxBackendProtocol`.

File listing, grep,

Module

### [utils](https://reference.langchain.com/python/deepagents/backends/utils)

Shared utility functions for memory backend implementations.

This module contains both user-facing string formatters and structured
helpers used by backends and the composite router. Structured helpe

Module

### [context_hub](https://reference.langchain.com/python/deepagents/backends/context_hub)

`ContextHubBackend`: Store files in a LangSmith Hub agent repo (persistent).

Module

### [composite](https://reference.langchain.com/python/deepagents/backends/composite)

Composite backend that routes file operations by path prefix.

Routes operations to different backends based on path prefixes. Use this when
you need different storage strategies for different paths (

Module

### [state](https://reference.langchain.com/python/deepagents/backends/state)

`StateBackend`: Store files in LangGraph agent state (ephemeral).

Module

### [local_shell](https://reference.langchain.com/python/deepagents/backends/local_shell)

`LocalShellBackend`: Filesystem backend with unrestricted local shell execution.

This backend extends `FilesystemBackend` to add shell command execution on
the local host system. It provides NO sandb

Module

### [filesystem](https://reference.langchain.com/python/deepagents/backends/filesystem)

`FilesystemBackend`: Read and write files directly from the filesystem.

Module

### [protocol](https://reference.langchain.com/python/deepagents/backends/protocol)

Protocol definition for pluggable memory backends.

This module defines the `BackendProtocol` that all backend implementations
must follow. Backends can store files in different locations (state, file

Module

### [store](https://reference.langchain.com/python/deepagents/backends/store)

`StoreBackend`: Adapter for LangGraph's BaseStore (persistent, cross-thread).

Module

### [langsmith](https://reference.langchain.com/python/deepagents/backends/langsmith)

LangSmith sandbox backend implementation.

Module

### [middleware](https://reference.langchain.com/python/deepagents/middleware)

Middleware for the Deep Agents agent.

Overview

The LLM receives tools through two paths:

1. **SDK middleware** (this package) -- tools, system-prompt injection, and
   request interception that

Module

### [summarization](https://reference.langchain.com/python/deepagents/middleware/summarization)

Summarization middleware for automatic and tool-based conversation compaction.

This module provides two middleware classes and a convenience factory:

* `SummarizationMiddleware` — automatically comp

Module

### [permissions](https://reference.langchain.com/python/deepagents/middleware/permissions)

Backward-compatible re-export for filesystem permissions.

Module

### [rubric](https://reference.langchain.com/python/deepagents/middleware/rubric)

Rubric middleware for self-evaluated agent iteration.

`RubricMiddleware` lets a caller declare *what done looks like* via a
rubric. Each time the agent would otherwise finish — i.e. the model
returns

Module

### [unsupported_content](https://reference.langchain.com/python/deepagents/middleware/unsupported_content)

Replace input content blocks the active model can't accept.

Module

### [skills](https://reference.langchain.com/python/deepagents/middleware/skills)

Skills middleware for loading and exposing agent skills to the system prompt.

This module implements Anthropic's agent skills pattern with progressive disclosure,
loading skills from backend storage

Module

### [patch_tool_calls](https://reference.langchain.com/python/deepagents/middleware/patch_tool_calls)

Middleware to patch dangling tool calls in the messages history.

Module

### [filesystem](https://reference.langchain.com/python/deepagents/middleware/filesystem)

Middleware for providing filesystem tools to an agent.

Module

### [memory](https://reference.langchain.com/python/deepagents/middleware/memory)

Middleware for loading agent memory/context from AGENTS.md files.

This module implements support for the AGENTS.md specification (https://agents.md/),
loading memory/context from configurable sources

Module

### [async_subagents](https://reference.langchain.com/python/deepagents/middleware/async_subagents)

Middleware for async subagents running on remote Agent Protocol servers.

Async subagents use the LangGraph SDK to launch background runs on remote
[Agent Protocol](https://github.com/langchain-ai/age

Module

### [subagents](https://reference.langchain.com/python/deepagents/middleware/subagents)

Middleware for providing subagents to an agent via a `task` tool.

Module

### [profiles](https://reference.langchain.com/python/deepagents/profiles)

Public beta APIs for model and harness profiles.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentation](h

Module

### [provider](https://reference.langchain.com/python/deepagents/profiles/provider)

Provider profile package: `ProviderProfile` API and built-in providers.

Module

### [provider_profiles](https://reference.langchain.com/python/deepagents/profiles/provider/provider_profiles)

Beta APIs for configuring model-construction behavior.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentat

Module

### [harness](https://reference.langchain.com/python/deepagents/profiles/harness)

Harness profile package: `HarnessProfile` API and built-in registrations.

Individual built-in modules expose a zero-arg `register()` callable; the lazy
`_builtin_profiles` bootstrap invokes them once

Module

### [harness_profiles](https://reference.langchain.com/python/deepagents/profiles/harness/harness_profiles)

Beta APIs for configuring deep agent runtime behavior.

Beta

`deepagents.profiles` exposes beta APIs that may receive minor changes in
future releases. Refer to the [versioning documentat

Module

### [deprecation](https://reference.langchain.com/python/deepagents/_api/deprecation)

Adapter for `langchain_core`'s private deprecation helpers.

Centralizes the import surface so an upstream rename or move is a one-file
change.

Re-exports:

* `deprecated`: decorator for callables, cl

## Types

Type

### [GlobBackendResult](https://reference.langchain.com/python/deepagents/backends/composite/GlobBackendResult)

Result shape accepted by composite glob merge helpers.

Composite glob supports both current `GlobResult` values and legacy
`list[FileInfo]` backend returns.

Type

### [RubricResult](https://reference.langchain.com/python/deepagents/middleware/rubric/RubricResult)

Status recorded on each evaluation.

Superset of `GraderVerdict` with two middleware-synthesized terminal
statuses the grader cannot emit itself:

* `max_iterations_reached`: the iteration cap fired o

Type

### [SkillSource](https://reference.langchain.com/python/deepagents/middleware/skills/SkillSource)

A skill source: either a bare path or a `(path, label)` pair.

When only a path is given, the label is derived from the final path
component. Supply a tuple to override the default (e.g. to distinguis
