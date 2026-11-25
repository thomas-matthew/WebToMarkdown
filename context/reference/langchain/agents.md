# Agents

Reference docs

This page contains **reference documentation** for Agents. See [the docs](https://docs.langchain.com/oss/python/langchain/agents) for conceptual guides, tutorials, and examples on using Agents.

## Classes

Class

### [AgentState](https://reference.langchain.com/python/langchain/agents/middleware/types/AgentState)

State schema for the agent.

Class

### [ModelRequest](https://reference.langchain.com/python/langchain/agents/middleware/types/ModelRequest)

Model request information for the agent.

Class

### [ToolStrategy](https://reference.langchain.com/python/langchain/agents/structured_output/ToolStrategy)

Use a tool calling strategy for model responses.

Class

### [ProviderStrategy](https://reference.langchain.com/python/langchain/agents/structured_output/ProviderStrategy)

Use the model provider's native structured output method.

Class

### [AutoStrategy](https://reference.langchain.com/python/langchain/agents/structured_output/AutoStrategy)

Automatically select the best strategy for structured output.

## Functions

Function

### [create_agent](https://reference.langchain.com/python/langchain/agents/factory/create_agent)

Creates an agent graph that calls tools in a loop until a stopping condition is met.

For more details on using `create_agent`,
visit the [Agents](https://docs.langchain.com/oss/python/langchain/agent

Function

### [before_model](https://reference.langchain.com/python/langchain/agents/middleware/types/before_model)

Decorator used to dynamically create a middleware with the `before_model` hook.

Function

### [after_model](https://reference.langchain.com/python/langchain/agents/middleware/types/after_model)

Decorator used to dynamically create a middleware with the `after_model` hook.

Function

### [wrap_model_call](https://reference.langchain.com/python/langchain/agents/middleware/types/wrap_model_call)

Create middleware with `wrap_model_call` hook from a function.

Converts a function with handler callback into middleware that can intercept model
calls, implement retry logic, handle errors, and rewr

Function

### [wrap_tool_call](https://reference.langchain.com/python/langchain/agents/middleware/types/wrap_tool_call)

Create middleware with `wrap_tool_call` hook from a function.

Async version is `awrap_tool_call`.

Converts a function with handler callback into middleware that can intercept
tool calls, implement r

## Types

Type

### [ResponseFormat](https://reference.langchain.com/python/langchain/agents/structured_output/ResponseFormat)

Union type for all supported response format strategies.
