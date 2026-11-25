# Agents

## Classes

Class

### [ToolNode](https://reference.langchain.com/python/langgraph.prebuilt/tool_node/ToolNode)

A node for executing tools in LangGraph workflows.

Handles tool execution patterns including function calls, state injection,
persistent storage, and control flow. Manages parallel execution,
error h

Class

### [InjectedState](https://reference.langchain.com/python/langgraph.prebuilt/tool_node/InjectedState)

Annotation for injecting graph state into tool arguments.

This annotation enables tools to access graph state without exposing state
management details to the language model. Tools annotated with `In

Class

### [InjectedStore](https://reference.langchain.com/python/langgraph.prebuilt/tool_node/InjectedStore)

Annotation for injecting persistent store into tool arguments.

This annotation enables tools to access LangGraph's persistent storage system
without exposing storage details to the language model. To

Class

### [ToolRuntime](https://reference.langchain.com/python/langgraph.prebuilt/tool_node/ToolRuntime)

Runtime context automatically injected into tools.

Note

This is distinct from `Runtime` (from `langgraph.runtime`), which is injected
into graph nodes and middleware. `ToolRuntime` inclu

Class

### [HumanResponse](https://reference.langchain.com/python/langgraph.prebuilt/interrupt/HumanResponse)

The response provided by a human to an interrupt, which is returned when graph execution resumes.

Class

### [AgentState](https://reference.langchain.com/python/langgraph.prebuilt/chat_agent_executor/AgentState)

deprecated

The state of the agent.

Class

### [ValidationNode](https://reference.langchain.com/python/langgraph.prebuilt/tool_validator/ValidationNode)

deprecated

A node that validates all tools requests from the last `AIMessage`.

It can be used either in `StateGraph` with a `'messages'` key.

Note

This node does not actually **run** the tools, it onl

Class

### [HumanInterruptConfig](https://reference.langchain.com/python/langgraph.prebuilt/interrupt/HumanInterruptConfig)

deprecated

Configuration that defines what actions are allowed for a human interrupt.

This controls the available interaction options when the graph is paused for human input.

Class

### [ActionRequest](https://reference.langchain.com/python/langgraph.prebuilt/interrupt/ActionRequest)

deprecated

Represents a request for human action within the graph execution.

Contains the action type and any associated arguments needed for the action.

Class

### [HumanInterrupt](https://reference.langchain.com/python/langgraph.prebuilt/interrupt/HumanInterrupt)

deprecated

Represents an interrupt triggered by the graph that requires human intervention.

This is passed to the `interrupt` function when execution is paused for human input.

## Functions

Function

### [tools_condition](https://reference.langchain.com/python/langgraph.prebuilt/tool_node/tools_condition)

Conditional routing function for tool-calling workflows.

This utility function implements the standard conditional logic for ReAct-style
agents: if the last `AIMessage` contains tool calls, route to

Function

### [create_react_agent](https://reference.langchain.com/python/langgraph.prebuilt/chat_agent_executor/create_react_agent)

deprecated

Creates an agent graph that calls tools in a loop until a stopping condition is met.

Warning

This function is deprecated in favor of
`create_agent` from
