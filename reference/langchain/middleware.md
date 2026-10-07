Python[langchain](/python/langchain)Middleware

# Middleware

Reference docs

This page contains **reference documentation** for Middleware. See [the docs](https://docs.langchain.com/oss/python/langchain/middleware) for conceptual guides, tutorials, and examples on using Middleware.

## Middleware classes

LangChain provides prebuilt middleware for common agent use cases:

| CLASS | DESCRIPTION |
| --- | --- |
| [`SummarizationMiddleware`](/python/langchain/agents/middleware/summarization/SummarizationMiddleware) | Automatically summarize conversation history when approaching token limits |
| [`HumanInTheLoopMiddleware`](/python/langchain/agents/middleware/human_in_the_loop/HumanInTheLoopMiddleware) | Pause execution for human approval of tool calls |
| [`ModelCallLimitMiddleware`](/python/langchain/agents/middleware/model_call_limit/ModelCallLimitMiddleware) | Limit the number of model calls to prevent excessive costs |
| [`ToolCallLimitMiddleware`](/python/langchain/agents/middleware/tool_call_limit/ToolCallLimitMiddleware) | Control tool execution by limiting call counts |
| [`ModelFallbackMiddleware`](/python/langchain/agents/middleware/model_fallback/ModelFallbackMiddleware) | Automatically fallback to alternative models when primary fails |
| [`PIIMiddleware`](/python/langchain/agents/middleware/pii/PIIMiddleware) | Detect and handle Personally Identifiable Information |
| [`TodoListMiddleware`](/python/langchain/agents/middleware/todo/TodoListMiddleware) | Equip agents with task planning and tracking capabilities |
| [`LLMToolSelectorMiddleware`](/python/langchain/agents/middleware/tool_selection/LLMToolSelectorMiddleware) | Use an LLM to select relevant tools before calling main model |
| [`ToolRetryMiddleware`](/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware) | Automatically retry failed tool calls with exponential backoff |
| [`LLMToolEmulator`](/python/langchain/agents/middleware/tool_emulator/LLMToolEmulator) | Emulate tool execution using LLM for testing purposes |
| [`ContextEditingMiddleware`](/python/langchain/agents/middleware/context_editing/ContextEditingMiddleware) | Manage conversation context by trimming or clearing tool uses |
| [`ShellToolMiddleware`](/python/langchain/agents/middleware/shell_tool/ShellToolMiddleware) | Expose a persistent shell session to agents for command execution |
| [`FilesystemFileSearchMiddleware`](/python/langchain/agents/middleware/file_search/FilesystemFileSearchMiddleware) | Provide Glob and Grep search tools over filesystem files |
| [`AgentMiddleware`](/python/langchain/agents/middleware/types/AgentMiddleware) | Base middleware class for creating custom middleware |

## Decorators

Create custom middleware using these decorators:

| DECORATOR | DESCRIPTION |
| --- | --- |
| [`@before_agent`](/python/langchain/agents/middleware/types/before_agent) | Execute logic before agent execution starts |
| [`@before_model`](/python/langchain/agents/middleware/types/before_model) | Execute logic before each model call |
| [`@after_model`](/python/langchain/agents/middleware/types/after_model) | Execute logic after each model receives a response |
| [`@after_agent`](/python/langchain/agents/middleware/types/after_agent) | Execute logic after agent execution completes |
| [`@wrap_model_call`](/python/langchain/agents/middleware/types/wrap_model_call) | Wrap and intercept model calls |
| [`@wrap_tool_call`](/python/langchain/agents/middleware/types/wrap_tool_call) | Wrap and intercept tool calls |
| [`@dynamic_prompt`](/python/langchain/agents/middleware/types/dynamic_prompt) | Generate dynamic system prompts based on request context |
| [`@hook_config`](/python/langchain/agents/middleware/types/hook_config) | Configure hook behavior (e.g., conditional routing) |

## Types and utilities

Core types for building middleware:

| TYPE | DESCRIPTION |
| --- | --- |
| [`AgentState`](/python/langchain/agents/middleware/types/AgentState) | State container for agent execution |
| [`ModelRequest`](/python/langchain/agents/middleware/types/ModelRequest) | Request details passed to model calls |
| [`ModelResponse`](/python/langchain/agents/middleware/types/ModelResponse) | Response details from model calls |
| [`ClearToolUsesEdit`](/python/langchain/agents/middleware/context_editing/ClearToolUsesEdit) | Utility for clearing tool usage history from context |
| [`InterruptOnConfig`](/python/langchain/agents/middleware/human_in_the_loop/InterruptOnConfig) | Configuration for human-in-the-loop interruptions |

[`SummarizationMiddleware`](/python/langchain/agents/middleware/summarization/SummarizationMiddleware) types:

| TYPE | DESCRIPTION |
| --- | --- |
| [`ContextSize`](/python/langchain/agents/middleware/summarization/ContextSize) | Union type |
| [`ContextFraction`](/python/langchain/agents/middleware/summarization/ContextFraction) | Summarize at fraction of total context |
| [`ContextTokens`](/python/langchain/agents/middleware/summarization/ContextTokens) | Summarize at token threshold |
| [`ContextMessages`](/python/langchain/agents/middleware/summarization/ContextMessages) | Summarize at message threshold |

## Classes

[Class

### SummarizationMiddleware

Summarizes conversation history when token limits are approached.

This middleware monitors message token counts and automatically summarizes older
messages when a threshold is reached, preserving rec](/python/langchain/agents/middleware/summarization/SummarizationMiddleware)[Class

### HumanInTheLoopMiddleware

Human in the loop middleware.](/python/langchain/agents/middleware/human_in_the_loop/HumanInTheLoopMiddleware)[Class

### ModelCallLimitMiddleware

Tracks model call counts and enforces limits.

This middleware monitors the number of model calls made during agent execution
and can terminate the agent when specified limits are reached. It supports](/python/langchain/agents/middleware/model_call_limit/ModelCallLimitMiddleware)[Class

### ToolCallLimitMiddleware

Track tool call counts and enforces limits during agent execution.

This middleware monitors the number of tool calls made and can terminate or
restrict execution when limits are exceeded. It supports](/python/langchain/agents/middleware/tool_call_limit/ToolCallLimitMiddleware)[Class

### ModelFallbackMiddleware

Automatic fallback to alternative models on errors.

Retries failed model calls with alternative models in sequence until
success or all models exhausted. Primary model specified in `create_agent`.](/python/langchain/agents/middleware/model_fallback/ModelFallbackMiddleware)[Class

### PIIMiddleware

Detect and handle Personally Identifiable Information (PII) in conversations.

This middleware detects common PII types and applies configurable strategies
to handle them. It can detect emails, credit](/python/langchain/agents/middleware/pii/PIIMiddleware)[Class

### TodoListMiddleware

Middleware that provides todo list management capabilities to agents.

This middleware adds a `write_todos` tool that allows agents to create and manage
structured task lists for complex multi-step op](/python/langchain/agents/middleware/todo/TodoListMiddleware)[Class

### LLMToolSelectorMiddleware

Uses an LLM to select relevant tools before calling the main model.

When an agent has many tools available, this middleware filters them down
to only the most relevant ones for the user's query. This](/python/langchain/agents/middleware/tool_selection/LLMToolSelectorMiddleware)[Class

### ToolRetryMiddleware

Middleware that automatically retries failed tool calls with configurable backoff.

Supports retrying on specific exceptions and exponential backoff.](/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware)[Class

### LLMToolEmulator

Emulates specified tools using an LLM instead of executing them.

This middleware allows selective emulation of tools for testing purposes.

By default (when `tools=None`), all tools are emulated. You](/python/langchain/agents/middleware/tool_emulator/LLMToolEmulator)[Class

### ContextEditingMiddleware

Automatically prune tool results to manage context size.

The middleware applies a sequence of edits when the total input token count exceeds
configured thresholds.

Currently the `ClearToolUsesEdit`](/python/langchain/agents/middleware/context_editing/ContextEditingMiddleware)[Class

### ShellToolMiddleware

Middleware that registers a persistent shell tool for agents.

The middleware exposes a single long-lived shell session. Use the execution policy
to match your deployment's security posture:

* `HostE](/python/langchain/agents/middleware/shell_tool/ShellToolMiddleware)[Class

### FilesystemFileSearchMiddleware

Provides Glob and Grep search over filesystem files.

This middleware adds two tools that search through local filesystem:

* Glob: Fast file pattern matching by file path
* Grep: Fast content search](/python/langchain/agents/middleware/file_search/FilesystemFileSearchMiddleware)[Class

### AgentMiddleware

Base middleware class for an agent.

Subclass this and implement any of the defined methods to customize agent behavior
between steps in the main agent loop.](/python/langchain/agents/middleware/types/AgentMiddleware)[Class

### AgentState

State schema for the agent.](/python/langchain/agents/middleware/types/AgentState)[Class

### ModelRequest

Model request information for the agent.](/python/langchain/agents/middleware/types/ModelRequest)[Class

### ModelResponse

Response from model execution including messages and optional structured output.

The result will usually contain a single `AIMessage`, but may include an additional
`ToolMessage` if the model used a](/python/langchain/agents/middleware/types/ModelResponse)[Class

### ClearToolUsesEdit

Configuration for clearing tool outputs when token limits are exceeded.](/python/langchain/agents/middleware/context_editing/ClearToolUsesEdit)[Class

### InterruptOnConfig

Configuration for an action requiring human in the loop.

This is the configuration format used in the `HumanInTheLoopMiddleware.__init__`
method.](/python/langchain/agents/middleware/human_in_the_loop/InterruptOnConfig)

## Functions

[Function

### before\_agent

Decorator used to dynamically create a middleware with the `before_agent` hook.](/python/langchain/agents/middleware/types/before_agent)[Function

### before\_model

Decorator used to dynamically create a middleware with the `before_model` hook.](/python/langchain/agents/middleware/types/before_model)[Function

### after\_model

Decorator used to dynamically create a middleware with the `after_model` hook.](/python/langchain/agents/middleware/types/after_model)[Function

### after\_agent

Decorator used to dynamically create a middleware with the `after_agent` hook.

Async version is `aafter_agent`.](/python/langchain/agents/middleware/types/after_agent)[Function

### wrap\_model\_call

Create middleware with `wrap_model_call` hook from a function.

Converts a function with handler callback into middleware that can intercept model
calls, implement retry logic, handle errors, and rewr](/python/langchain/agents/middleware/types/wrap_model_call)[Function

### wrap\_tool\_call

Create middleware with `wrap_tool_call` hook from a function.

Async version is `awrap_tool_call`.

Converts a function with handler callback into middleware that can intercept
tool calls, implement r](/python/langchain/agents/middleware/types/wrap_tool_call)[Function

### dynamic\_prompt

Decorator used to dynamically generate system prompts for the model.

This is a convenience decorator that creates middleware using `wrap_model_call`
specifically for dynamic prompt generation. The de](/python/langchain/agents/middleware/types/dynamic_prompt)[Function

### hook\_config

Decorator to configure hook behavior in middleware methods.

Use this decorator on `before_model` or `after_model` methods in middleware classes
to configure their behavior. Currently supports specify](/python/langchain/agents/middleware/types/hook_config)

## Types

[Type

### ContextSize

Union type for context size specifications.

Can be either:

* `ContextFraction`: A
  fraction of the model's maximum input tokens.
* [`C](/python/langchain/agents/middleware/summarization/ContextSize)

## Constants

[Attribute

### ContextFraction

Fraction of model's maximum input tokens.](/python/langchain/agents/middleware/summarization/ContextFraction)[Attribute

### ContextTokens

Absolute number of tokens.](/python/langchain/agents/middleware/summarization/ContextTokens)[Attribute

### ContextMessages

Absolute number of messages.](/python/langchain/agents/middleware/summarization/ContextMessages)

Copy page

### On This Page

OverviewClasses19Functions8Types1Constants3