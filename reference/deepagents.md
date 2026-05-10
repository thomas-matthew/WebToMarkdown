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
pip install deepagents
# or
uv add deepagents
```

Copy

## 🤔 What is this?

Using an LLM to call tools in a loop is the simplest form of an agent. This architecture, however, can yield agents that are "shallow" and fail to plan and act over longer, more complex tasks.

Applications like "Deep Research", "Manus", and "Claude Code" have gotten around this limitation by implementing a combination of four things: a **planning tool**, **sub agents**, access to a **file system**, and a **detailed prompt**.

`deepagents` is a Python package that implements these in a general purpose way so that you can easily create a deep agent for your application. For a full overview and quickstart of Deep Agents, the best resource is our [docs](https://docs.langchain.com/oss/python/deepagents/overview).

**Acknowledgements: This project was primarily inspired by Claude Code, and initially was largely an attempt to see what made Claude Code general purpose, and make it even more so.**

## 📖 Resources

* **[Documentation](https://docs.langchain.com/oss/python/deepagents)** — Full documentation
* **[API Reference](https://reference.langchain.com/python/deepagents/)** — Full SDK reference documentation
* **[Chat LangChain](https://chat.langchain.com)** - Chat interactively with the docs

## 📕 Releases & Versioning

See our [Releases](https://docs.langchain.com/oss/python/release-policy) and [Versioning](https://docs.langchain.com/oss/python/versioning) policies.

## 💁 Contributing

As an open-source project in a rapidly developing field, we are extremely open to contributions, whether it be in the form of a new feature, improved infrastructure, or better documentation.

For detailed information on how to contribute, see the [Contributing Guide](https://docs.langchain.com/oss/python/contributing/overview).

## Classes

[Class

### SubAgent

Specification for an agent.](/python/deepagents/middleware/subagents/SubAgent)[Class

### CompiledSubAgent

A pre-compiled agent spec.](/python/deepagents/middleware/subagents/CompiledSubAgent)[Class

### TaskToolSchema

Input schema for the `task` tool.](/python/deepagents/middleware/subagents/TaskToolSchema)[Class

### SubAgentMiddleware

Middleware for providing subagents to an agent via a `task` tool.](/python/deepagents/middleware/subagents/SubAgentMiddleware)[Class

### CompactConversationSchema

Input schema for the `compact_conversation` tool.](/python/deepagents/middleware/summarization/CompactConversationSchema)[Class

### SummarizationEvent

Represents a summarization event.](/python/deepagents/middleware/summarization/SummarizationEvent)[Class

### TruncateArgsSettings

Settings for truncating large tool-call arguments in older messages.](/python/deepagents/middleware/summarization/TruncateArgsSettings)[Class

### SummarizationState

State for the summarization middleware.](/python/deepagents/middleware/summarization/SummarizationState)[Class

### SummarizationDefaults

Default settings computed from model profile.](/python/deepagents/middleware/summarization/SummarizationDefaults)[Class

### SummarizationToolMiddleware

Middleware that provides a `compact_conversation` tool for manual compaction.](/python/deepagents/middleware/summarization/SummarizationToolMiddleware)[Class

### PatchToolCallsMiddleware

Middleware to patch dangling tool calls in the messages history.](/python/deepagents/middleware/patch_tool_calls/PatchToolCallsMiddleware)[Class

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

### MemoryState

State schema for `MemoryMiddleware`.](/python/deepagents/middleware/memory/MemoryState)[Class

### MemoryStateUpdate

State update for `MemoryMiddleware`.](/python/deepagents/middleware/memory/MemoryStateUpdate)[Class

### MemoryMiddleware

Middleware for loading agent memory from `AGENTS.md` files.](/python/deepagents/middleware/memory/MemoryMiddleware)[Class

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

### BaseSandbox

Base sandbox implementation with `execute()` as the core abstract method.](/python/deepagents/backends/sandbox/BaseSandbox)[Class

### StoreBackend

Backend that stores files in LangGraph's BaseStore (persistent).](/python/deepagents/backends/store/StoreBackend)[Class

### CompositeBackend

Routes file operations to different backends by path prefix.](/python/deepagents/backends/composite/CompositeBackend)[Class

### LocalShellBackend

Filesystem backend with unrestricted local shell command execution.](/python/deepagents/backends/local_shell/LocalShellBackend)[Class

### StateBackend

Backend that stores files in agent state (ephemeral).](/python/deepagents/backends/state/StateBackend)[Class

### LangSmithSandbox

LangSmith sandbox implementation conforming to `SandboxBackendProtocol`.](/python/deepagents/backends/langsmith/LangSmithSandbox)[Class

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

Result from backend write operations.](/python/deepagents/backends/protocol/WriteResult)[Class

### EditResult

Result from backend edit operations.](/python/deepagents/backends/protocol/EditResult)[Class

### LsResult

Result from backend ls operations.](/python/deepagents/backends/protocol/LsResult)[Class

### GrepResult

Result from backend grep operations.](/python/deepagents/backends/protocol/GrepResult)[Class

### GlobResult

Result from backend glob operations.](/python/deepagents/backends/protocol/GlobResult)[Class

### BackendProtocol

Protocol for pluggable memory backends (single, unified).](/python/deepagents/backends/protocol/BackendProtocol)[Class

### ExecuteResponse

Result of code execution.](/python/deepagents/backends/protocol/ExecuteResponse)[Class

### SandboxBackendProtocol

Extension of `BackendProtocol` that adds shell command execution.](/python/deepagents/backends/protocol/SandboxBackendProtocol)[Class

### FilesystemBackend

Backend that reads and writes files directly from the filesystem.](/python/deepagents/backends/filesystem/FilesystemBackend)[Class

### BackendContext

deprecated

Context passed to namespace factory functions.](/python/deepagents/backends/store/BackendContext)

## Functions

[Function

### resolve\_model

Resolve a model string to a `BaseChatModel`.](/python/deepagents/_models/resolve_model)[Function

### get\_model\_identifier

Extract the provider-native model identifier from a chat model.](/python/deepagents/_models/get_model_identifier)[Function

### get\_model\_provider

Extract the provider name from a chat model instance.](/python/deepagents/_models/get_model_provider)[Function

### model\_matches\_spec

Check whether a model instance already matches a string model spec.](/python/deepagents/_models/model_matches_spec)[Function

### create\_deep\_agent

Create a deep agent.](/python/deepagents/graph/create_deep_agent)[Function

### compute\_summarization\_defaults

Compute default summarization settings based on model profile.](/python/deepagents/middleware/summarization/compute_summarization_defaults)[Function

### create\_summarization\_middleware

Create a Deep Agents `SummarizationMiddleware` with model-aware defaults.](/python/deepagents/middleware/summarization/create_summarization_middleware)[Function

### create\_summarization\_tool\_middleware

Create a `SummarizationToolMiddleware` with model-aware defaults.](/python/deepagents/middleware/summarization/create_summarization_tool_middleware)[Function

### append\_to\_system\_message

Append text to a system message.](/python/deepagents/middleware/_utils/append_to_system_message)[Function

### supports\_execution

Check if a backend supports command execution.](/python/deepagents/middleware/filesystem/supports_execution)[Function

### validate\_profile\_key

Validate a profile registry key.](/python/deepagents/profiles/_keys/validate_profile_key)[Function

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

### register

Register the built-in OpenAI provider profile.](/python/deepagents/profiles/provider/_openai/register)[Function

### register

Register the built-in Claude Opus 4.7 harness profile.](/python/deepagents/profiles/harness/_anthropic_opus_4_7/register)[Function

### register

Register the built-in Claude Sonnet 4.6 harness profile.](/python/deepagents/profiles/harness/_anthropic_sonnet_4_6/register)[Function

### register

Register the built-in Codex harness profile for each Codex spec.](/python/deepagents/profiles/harness/_openai_codex/register)[Function

### register\_harness\_profile

Register a harness profile for a provider or specific model.](/python/deepagents/profiles/harness/harness_profiles/register_harness_profile)[Function

### register

Register the built-in Claude Haiku 4.5 harness profile.](/python/deepagents/profiles/harness/_anthropic_haiku_4_5/register)[Function

### sanitize\_tool\_call\_id

Sanitize tool\_call\_id to prevent path traversal and separator issues.](/python/deepagents/backends/utils/sanitize_tool_call_id)[Function

### format\_content\_with\_line\_numbers

Format file content with line numbers (cat -n style).](/python/deepagents/backends/utils/format_content_with_line_numbers)[Function

### check\_empty\_content

Check if content is empty and return warning message.](/python/deepagents/backends/utils/check_empty_content)[Function

### file\_data\_to\_string

Convert FileData to plain string content.](/python/deepagents/backends/utils/file_data_to_string)[Function

### create\_file\_data

Create a FileData object with timestamps.](/python/deepagents/backends/utils/create_file_data)[Function

### update\_file\_data

Update FileData with new content, preserving creation timestamp.](/python/deepagents/backends/utils/update_file_data)[Function

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

### warn\_deprecated

Emit a deprecation warning with caller-controlled stack attribution.](/python/deepagents/_api/deprecation/warn_deprecated)[Function

### reset\_deprecation\_dedupe

Reset the `@deprecated` decorator's dedupe flag for testing.](/python/deepagents/_api/deprecation/reset_deprecation_dedupe)[Function

### get\_default\_model

deprecated

Get the default model for Deep Agents.](/python/deepagents/graph/get_default_model)

## Modules

[Module

### deepagents

Deep Agents package.](/python/deepagents/deepagents)[Module

### graph

Primary graph assembly module for Deep Agents.](/python/deepagents/graph)[Module

### middleware

Middleware for the Deep Agents agent.](/python/deepagents/middleware)[Module

### subagents

Middleware for providing subagents to an agent via a `task` tool.](/python/deepagents/middleware/subagents)[Module

### summarization

Summarization middleware for automatic and tool-based conversation compaction.](/python/deepagents/middleware/summarization)[Module

### patch\_tool\_calls

Middleware to patch dangling tool calls in the messages history.](/python/deepagents/middleware/patch_tool_calls)[Module

### skills

Skills middleware for loading and exposing agent skills to the system prompt.](/python/deepagents/middleware/skills)[Module

### async\_subagents

Middleware for async subagents running on remote Agent Protocol servers.](/python/deepagents/middleware/async_subagents)[Module

### memory

Middleware for loading agent memory/context from AGENTS.md files.](/python/deepagents/middleware/memory)[Module

### permissions

Backward-compatible re-export for filesystem permissions.](/python/deepagents/middleware/permissions)[Module

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

### sandbox

Base sandbox implementation.](/python/deepagents/backends/sandbox)[Module

### utils

Shared utility functions for memory backend implementations.](/python/deepagents/backends/utils)[Module

### store

StoreBackend: Adapter for LangGraph's BaseStore (persistent, cross-thread).](/python/deepagents/backends/store)[Module

### composite

Composite backend that routes file operations by path prefix.](/python/deepagents/backends/composite)[Module

### local\_shell

`LocalShellBackend`: Filesystem backend with unrestricted local shell execution.](/python/deepagents/backends/local_shell)[Module

### state

StateBackend: Store files in LangGraph agent state (ephemeral).](/python/deepagents/backends/state)[Module

### langsmith

LangSmith sandbox backend implementation.](/python/deepagents/backends/langsmith)[Module

### protocol

Protocol definition for pluggable memory backends.](/python/deepagents/backends/protocol)[Module

### filesystem

`FilesystemBackend`: Read and write files directly from the filesystem.](/python/deepagents/backends/filesystem)[Module

### deprecation

Adapter for `langchain_core`'s private deprecation helpers.](/python/deepagents/_api/deprecation)

## Types

[Type

### SkillSource

A skill source: either a bare path or a `(path, label)` pair.](/python/deepagents/middleware/skills/SkillSource)[Type

### BackendFactory](/python/deepagents/backends/protocol/BackendFactory)[Type

### BACKEND\_TYPES](/python/deepagents/backends/protocol/BACKEND_TYPES)

Copy page

### On This Page

DescriptionClasses63Functions40Modules27Types3