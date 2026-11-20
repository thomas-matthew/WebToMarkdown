# Middleware

Reference docs

This page contains **reference documentation** for Middleware. See [the docs](https://docs.langchain.com/oss/python/langchain/middleware) for conceptual guides, tutorials, and examples on using Middleware.

## Middleware classes

LangChain provides prebuilt middleware for common agent use cases:

| CLASS | DESCRIPTION |
| --- | --- |
| [`SummarizationMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/summarization/SummarizationMiddleware) | Automatically summarize conversation history when approaching token limits |
| [`HumanInTheLoopMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/human_in_the_loop/HumanInTheLoopMiddleware) | Pause execution for human approval of tool calls |
| [`ModelCallLimitMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/model_call_limit/ModelCallLimitMiddleware) | Limit the number of model calls to prevent excessive costs |
| [`ToolCallLimitMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/tool_call_limit/ToolCallLimitMiddleware) | Control tool execution by limiting call counts |
| [`ModelFallbackMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/model_fallback/ModelFallbackMiddleware) | Automatically fallback to alternative models when primary fails |
| [`PIIMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/pii/PIIMiddleware) | Detect and handle Personally Identifiable Information |
| [`TodoListMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/todo/TodoListMiddleware) | Equip agents with task planning and tracking capabilities |
| [`LLMToolSelectorMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/tool_selection/LLMToolSelectorMiddleware) | Use an LLM to select relevant tools before calling main model |
| [`ToolRetryMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware) | Automatically retry failed tool calls with exponential backoff |
| [`LLMToolEmulator`](https://reference.langchain.com/python/langchain/agents/middleware/tool_emulator/LLMToolEmulator) | Emulate tool execution using LLM for testing purposes |
| [`ContextEditingMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/context_editing/ContextEditingMiddleware) | Manage conversation context by trimming or clearing tool uses |
| [`ShellToolMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/shell_tool/ShellToolMiddleware) | Expose a persistent shell session to agents for command execution |
| [`FilesystemFileSearchMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/file_search/FilesystemFileSearchMiddleware) | Provide Glob and Grep search tools over filesystem files |
| [`AgentMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/types/AgentMiddleware) | Base middleware class for creating custom middleware |

## Decorators

Create custom middleware using these decorators:

| DECORATOR | DESCRIPTION |
| --- | --- |
| [`@before_agent`](https://reference.langchain.com/python/langchain/agents/middleware/types/before_agent) | Execute logic before agent execution starts |
| [`@before_model`](https://reference.langchain.com/python/langchain/agents/middleware/types/before_model) | Execute logic before each model call |
| [`@after_model`](https://reference.langchain.com/python/langchain/agents/middleware/types/after_model) | Execute logic after each model receives a response |
| [`@after_agent`](https://reference.langchain.com/python/langchain/agents/middleware/types/after_agent) | Execute logic after agent execution completes |
| [`@wrap_model_call`](https://reference.langchain.com/python/langchain/agents/middleware/types/wrap_model_call) | Wrap and intercept model calls |
| [`@wrap_tool_call`](https://reference.langchain.com/python/langchain/agents/middleware/types/wrap_tool_call) | Wrap and intercept tool calls |
| [`@dynamic_prompt`](https://reference.langchain.com/python/langchain/agents/middleware/types/dynamic_prompt) | Generate dynamic system prompts based on request context |
| [`@hook_config`](https://reference.langchain.com/python/langchain/agents/middleware/types/hook_config) | Configure hook behavior (e.g., conditional routing) |

## Types and utilities

Core types for building middleware:

| TYPE | DESCRIPTION |
| --- | --- |
| [`AgentState`](https://reference.langchain.com/python/langchain/agents/middleware/types/AgentState) | State container for agent execution |
| [`ModelRequest`](https://reference.langchain.com/python/langchain/agents/middleware/types/ModelRequest) | Request details passed to model calls |
| [`ModelResponse`](https://reference.langchain.com/python/langchain/agents/middleware/types/ModelResponse) | Response details from model calls |
| [`ClearToolUsesEdit`](https://reference.langchain.com/python/langchain/agents/middleware/context_editing/ClearToolUsesEdit) | Utility for clearing tool usage history from context |
| [`InterruptOnConfig`](https://reference.langchain.com/python/langchain/agents/middleware/human_in_the_loop/InterruptOnConfig) | Configuration for human-in-the-loop interruptions |

[`SummarizationMiddleware`](https://reference.langchain.com/python/langchain/agents/middleware/summarization/SummarizationMiddleware) types:

| TYPE | DESCRIPTION |
| --- | --- |
| [`ContextSize`](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextSize) | Union type |
| [`ContextFraction`](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextFraction) | Summarize at fraction of total context |
| [`ContextTokens`](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextTokens) | Summarize at token threshold |
| [`ContextMessages`](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextMessages) | Summarize at message threshold |

## Classes

Class

### [SummarizationMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/summarization/SummarizationMiddleware)

Summarizes conversation history when token limits are approached.

This middleware monitors message token counts and automatically summarizes older
messages when a threshold is reached, preserving rec

Class

### [HumanInTheLoopMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/human_in_the_loop/HumanInTheLoopMiddleware)

Pause the agent so a person can review tool calls before they run.

Each tool in `interrupt_on` needs a decision before it runs: approve, edit, reject,
or respond. The pause is a LangGraph `interrupt`

Class

### [ModelCallLimitMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/model_call_limit/ModelCallLimitMiddleware)

Tracks model call counts and enforces limits.

This middleware monitors the number of model calls made during agent execution
and can terminate the agent when specified limits are reached. It supports

Class

### [ToolCallLimitMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/tool_call_limit/ToolCallLimitMiddleware)

Track tool call counts and enforces limits during agent execution.

This middleware monitors the number of tool calls made and can terminate or
restrict execution when limits are exceeded. It supports

Class

### [ModelFallbackMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/model_fallback/ModelFallbackMiddleware)

Automatic fallback to alternative models on errors.

Retries failed model calls with alternative models in sequence until
success or all models exhausted. Primary model specified in `create_agent`.

Class

### [PIIMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/pii/PIIMiddleware)

Detect and handle Personally Identifiable Information (PII) in conversations.

This middleware detects common PII types and applies configurable strategies
to handle them. It can detect emails, credit

Class

### [TodoListMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/todo/TodoListMiddleware)

Middleware that provides todo list management capabilities to agents.

This middleware adds a `write_todos` tool that allows agents to create and manage
structured task lists for complex multi-step op

Class

### [LLMToolSelectorMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/tool_selection/LLMToolSelectorMiddleware)

Uses an LLM to select relevant tools before calling the main model.

When an agent has many tools available, this middleware filters them down
to only the most relevant ones for the user's query. This

Class

### [ToolRetryMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware)

Middleware that automatically retries failed tool calls with configurable backoff.

Supports retrying on specific exceptions and exponential backoff.

Class

### [LLMToolEmulator](https://reference.langchain.com/python/langchain/agents/middleware/tool_emulator/LLMToolEmulator)

Emulates specified tools using an LLM instead of executing them.

This middleware allows selective emulation of tools for testing purposes.

By default (when `tools=None`), all tools are emulated. You

Class

### [ContextEditingMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/context_editing/ContextEditingMiddleware)

Automatically prune tool results to manage context size.

The middleware applies a sequence of edits when the total input token count exceeds
configured thresholds.

Currently the `ClearToolUsesEdit`

Class

### [ShellToolMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/shell_tool/ShellToolMiddleware)

Middleware that registers a persistent shell tool for agents.

The middleware exposes a single long-lived shell session. Use the execution policy
to match your deployment's security posture:

* `HostE

Class

### [FilesystemFileSearchMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/file_search/FilesystemFileSearchMiddleware)

Provides Glob and Grep search over filesystem files.

This middleware adds two tools that search through local filesystem:

* Glob: Fast file pattern matching by file path
* Grep: Fast content search

Class

### [AgentMiddleware](https://reference.langchain.com/python/langchain/agents/middleware/types/AgentMiddleware)

Base middleware class for an agent.

Subclass this and implement any of the defined methods to customize agent behavior
between steps in the main agent loop.

Class

### [AgentState](https://reference.langchain.com/python/langchain/agents/middleware/types/AgentState)

State schema for the agent.

Class

### [ModelRequest](https://reference.langchain.com/python/langchain/agents/middleware/types/ModelRequest)

Model request information for the agent.

Class

### [ModelResponse](https://reference.langchain.com/python/langchain/agents/middleware/types/ModelResponse)

Response from model execution including messages and optional structured output.

The result will usually contain a single `AIMessage`, but may include an additional
`ToolMessage` if the model used a

Class

### [ClearToolUsesEdit](https://reference.langchain.com/python/langchain/agents/middleware/context_editing/ClearToolUsesEdit)

Configuration for clearing tool outputs when token limits are exceeded.

Class

### [InterruptOnConfig](https://reference.langchain.com/python/langchain/agents/middleware/human_in_the_loop/InterruptOnConfig)

Configuration for an action requiring human in the loop.

This is the configuration format used in the `HumanInTheLoopMiddleware.__init__`
method.

## Functions

Function

### [before\_agent](https://reference.langchain.com/python/langchain/agents/middleware/types/before_agent)

Decorator used to dynamically create a middleware with the `before_agent` hook.

Function

### [before\_model](https://reference.langchain.com/python/langchain/agents/middleware/types/before_model)

Decorator used to dynamically create a middleware with the `before_model` hook.

Function

### [after\_model](https://reference.langchain.com/python/langchain/agents/middleware/types/after_model)

Decorator used to dynamically create a middleware with the `after_model` hook.

Function

### [after\_agent](https://reference.langchain.com/python/langchain/agents/middleware/types/after_agent)

Decorator used to dynamically create a middleware with the `after_agent` hook.

Async version is `aafter_agent`.

Function

### [wrap\_model\_call](https://reference.langchain.com/python/langchain/agents/middleware/types/wrap_model_call)

Create middleware with `wrap_model_call` hook from a function.

Converts a function with handler callback into middleware that can intercept model
calls, implement retry logic, handle errors, and rewr

Function

### [wrap\_tool\_call](https://reference.langchain.com/python/langchain/agents/middleware/types/wrap_tool_call)

Create middleware with `wrap_tool_call` hook from a function.

Async version is `awrap_tool_call`.

Converts a function with handler callback into middleware that can intercept
tool calls, implement r

Function

### [dynamic\_prompt](https://reference.langchain.com/python/langchain/agents/middleware/types/dynamic_prompt)

Decorator used to dynamically generate system prompts for the model.

This is a convenience decorator that creates middleware using `wrap_model_call`
specifically for dynamic prompt generation. The de

Function

### [hook\_config](https://reference.langchain.com/python/langchain/agents/middleware/types/hook_config)

Decorator to configure hook behavior in middleware methods.

Use this decorator on `before_model` or `after_model` methods in middleware classes
to configure their behavior. Currently supports specify

## Types

Type

### [ContextSize](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextSize)

Union type for context size specifications.

Can be either:

* `ContextFraction`: A
  fraction of the model's maximum input tokens.
* [`C

## Constants

Attribute

### [ContextFraction](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextFraction)

Fraction of model's maximum input tokens.

Attribute

### [ContextTokens](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextTokens)

Absolute number of tokens.

Attribute

### [ContextMessages](https://reference.langchain.com/python/langchain/agents/middleware/summarization/ContextMessages)

Absolute number of messages.
