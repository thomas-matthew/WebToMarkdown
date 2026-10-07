Python[langgraph](/python/langgraph)Agents

# Agents

## Classes

[Class

### ToolNode

A node for executing tools in LangGraph workflows.

Handles tool execution patterns including function calls, state injection,
persistent storage, and control flow. Manages parallel execution,
error h](/python/langgraph.prebuilt/tool_node/ToolNode)[Class

### InjectedState

Annotation for injecting graph state into tool arguments.

This annotation enables tools to access graph state without exposing state
management details to the language model. Tools annotated with `In](/python/langgraph.prebuilt/tool_node/InjectedState)[Class

### InjectedStore

Annotation for injecting persistent store into tool arguments.

This annotation enables tools to access LangGraph's persistent storage system
without exposing storage details to the language model. To](/python/langgraph.prebuilt/tool_node/InjectedStore)[Class

### ToolRuntime

Runtime context automatically injected into tools.

Note

This is distinct from `Runtime` (from `langgraph.runtime`), which is injected
into graph nodes and middleware. `ToolRuntime` inclu](/python/langgraph.prebuilt/tool_node/ToolRuntime)[Class

### HumanResponse

The response provided by a human to an interrupt, which is returned when graph execution resumes.](/python/langgraph.prebuilt/interrupt/HumanResponse)[Class

### AgentState

deprecated

The state of the agent.](/python/langgraph.prebuilt/chat_agent_executor/AgentState)[Class

### ValidationNode

deprecated

A node that validates all tools requests from the last `AIMessage`.

It can be used either in `StateGraph` with a `'messages'` key.

Note

This node does not actually **run** the tools, it onl](/python/langgraph.prebuilt/tool_validator/ValidationNode)[Class

### HumanInterruptConfig

deprecated

Configuration that defines what actions are allowed for a human interrupt.

This controls the available interaction options when the graph is paused for human input.](/python/langgraph.prebuilt/interrupt/HumanInterruptConfig)[Class

### ActionRequest

deprecated

Represents a request for human action within the graph execution.

Contains the action type and any associated arguments needed for the action.](/python/langgraph.prebuilt/interrupt/ActionRequest)[Class

### HumanInterrupt

deprecated

Represents an interrupt triggered by the graph that requires human intervention.

This is passed to the `interrupt` function when execution is paused for human input.](/python/langgraph.prebuilt/interrupt/HumanInterrupt)

## Functions

[Function

### tools\_condition

Conditional routing function for tool-calling workflows.

This utility function implements the standard conditional logic for ReAct-style
agents: if the last `AIMessage` contains tool calls, route to](/python/langgraph.prebuilt/tool_node/tools_condition)[Function

### create\_react\_agent

deprecated

Creates an agent graph that calls tools in a loop until a stopping condition is met.

Warning

This function is deprecated in favor of
`create_agent` from](/python/langgraph.prebuilt/chat_agent_executor/create_react_agent)

Copy page

### On This Page

Classes10Functions2