Python[langchain](/python/langchain)Agents

# Agents

Reference docs

This page contains **reference documentation** for Agents. See [the docs](https://docs.langchain.com/oss/python/langchain/agents) for conceptual guides, tutorials, and examples on using Agents.

## Classes

[Class

### AgentState

State schema for the agent.](/python/langchain/agents/middleware/types/AgentState)[Class

### ModelRequest

Model request information for the agent.](/python/langchain/agents/middleware/types/ModelRequest)[Class

### ToolStrategy

Use a tool calling strategy for model responses.](/python/langchain/agents/structured_output/ToolStrategy)[Class

### ProviderStrategy

Use the model provider's native structured output method.](/python/langchain/agents/structured_output/ProviderStrategy)[Class

### AutoStrategy

Automatically select the best strategy for structured output.](/python/langchain/agents/structured_output/AutoStrategy)

## Functions

[Function

### create\_agent

Creates an agent graph that calls tools in a loop until a stopping condition is met.

For more details on using `create_agent`,
visit the [Agents](https://docs.langchain.com/oss/python/langchain/agent](/python/langchain/agents/factory/create_agent)[Function

### before\_model

Decorator used to dynamically create a middleware with the `before_model` hook.](/python/langchain/agents/middleware/types/before_model)[Function

### after\_model

Decorator used to dynamically create a middleware with the `after_model` hook.](/python/langchain/agents/middleware/types/after_model)[Function

### wrap\_model\_call

Create middleware with `wrap_model_call` hook from a function.

Converts a function with handler callback into middleware that can intercept model
calls, implement retry logic, handle errors, and rewr](/python/langchain/agents/middleware/types/wrap_model_call)[Function

### wrap\_tool\_call

Create middleware with `wrap_tool_call` hook from a function.

Async version is `awrap_tool_call`.

Converts a function with handler callback into middleware that can intercept
tool calls, implement r](/python/langchain/agents/middleware/types/wrap_tool_call)

## Types

[Type

### ResponseFormat

Union type for all supported response format strategies.](/python/langchain/agents/structured_output/ResponseFormat)

Copy page

### On This Page

OverviewClasses5Functions5Types1