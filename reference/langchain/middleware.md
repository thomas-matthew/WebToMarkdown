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

Summarizes conversation history when token limits are approached.](/python/langchain/agents/middleware/summarization/SummarizationMiddleware)[Class

### HumanInTheLoopMiddleware

Human in the loop middleware.](/python/langchain/agents/middleware/human_in_the_loop/HumanInTheLoopMiddleware)[Class

### ModelCallLimitMiddleware

Tracks model call counts and enforces limits.](/python/langchain/agents/middleware/model_call_limit/ModelCallLimitMiddleware)[Class

### ToolCallLimitMiddleware

Track tool call counts and enforces limits during agent execution.](/python/langchain/agents/middleware/tool_call_limit/ToolCallLimitMiddleware)[Class

### ModelFallbackMiddleware

Automatic fallback to alternative models on errors.](/python/langchain/agents/middleware/model_fallback/ModelFallbackMiddleware)[Class

### PIIMiddleware

Detect and handle Personally Identifiable Information (PII) in conversations.](/python/langchain/agents/middleware/pii/PIIMiddleware)[Class

### TodoListMiddleware

Middleware that provides todo list management capabilities to agents.](/python/langchain/agents/middleware/todo/TodoListMiddleware)[Class

### LLMToolSelectorMiddleware

Uses an LLM to select relevant tools before calling the main model.](/python/langchain/agents/middleware/tool_selection/LLMToolSelectorMiddleware)[Class

### ToolRetryMiddleware

Middleware that automatically retries failed tool calls with configurable backoff.](/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware)[Class

### LLMToolEmulator

Emulates specified tools using an LLM instead of executing them.](/python/langchain/agents/middleware/tool_emulator/LLMToolEmulator)[Class

### ContextEditingMiddleware

Automatically prune tool results to manage context size.](/python/langchain/agents/middleware/context_editing/ContextEditingMiddleware)[Class

### ShellToolMiddleware

Middleware that registers a persistent shell tool for agents.](/python/langchain/agents/middleware/shell_tool/ShellToolMiddleware)[Class

### FilesystemFileSearchMiddleware

Provides Glob and Grep search over filesystem files.](/python/langchain/agents/middleware/file_search/FilesystemFileSearchMiddleware)[Class

### AgentMiddleware

Base middleware class for an agent.](/python/langchain/agents/middleware/types/AgentMiddleware)[Class

### AgentState

State schema for the agent.](/python/langchain/agents/middleware/types/AgentState)[Class

### ModelRequest

Model request information for the agent.](/python/langchain/agents/middleware/types/ModelRequest)[Class

### ModelResponse

Response from model execution including messages and optional structured output.](/python/langchain/agents/middleware/types/ModelResponse)[Class

### ClearToolUsesEdit

Configuration for clearing tool outputs when token limits are exceeded.](/python/langchain/agents/middleware/context_editing/ClearToolUsesEdit)[Class

### InterruptOnConfig

Configuration for an action requiring human in the loop.](/python/langchain/agents/middleware/human_in_the_loop/InterruptOnConfig)

## Functions

[Function

### before\_agent

Decorator used to dynamically create a middleware with the `before_agent` hook.](/python/langchain/agents/middleware/types/before_agent)[Function

### before\_model

Decorator used to dynamically create a middleware with the `before_model` hook.](/python/langchain/agents/middleware/types/before_model)[Function

### after\_model

Decorator used to dynamically create a middleware with the `after_model` hook.](/python/langchain/agents/middleware/types/after_model)[Function

### after\_agent

Decorator used to dynamically create a middleware with the `after_agent` hook.](/python/langchain/agents/middleware/types/after_agent)[Function

### wrap\_model\_call

Create middleware with `wrap_model_call` hook from a function.](/python/langchain/agents/middleware/types/wrap_model_call)[Function

### wrap\_tool\_call

Create middleware with `wrap_tool_call` hook from a function.](/python/langchain/agents/middleware/types/wrap_tool_call)[Function

### dynamic\_prompt

Decorator used to dynamically generate system prompts for the model.](/python/langchain/agents/middleware/types/dynamic_prompt)[Function

### hook\_config

Decorator to configure hook behavior in middleware methods.](/python/langchain/agents/middleware/types/hook_config)

## Types

[Type

### ContextSize

Union type for context size specifications.](/python/langchain/agents/middleware/summarization/ContextSize)

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