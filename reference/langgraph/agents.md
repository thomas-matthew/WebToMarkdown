Python[langgraph](/python/langgraph)Agents

# Agents

## Classes

[Class

### ToolNode

A node for executing tools in LangGraph workflows.](/python/langgraph.prebuilt/tool_node/ToolNode)[Class

### InjectedState

Annotation for injecting graph state into tool arguments.](/python/langgraph.prebuilt/tool_node/InjectedState)[Class

### InjectedStore

Annotation for injecting persistent store into tool arguments.](/python/langgraph.prebuilt/tool_node/InjectedStore)[Class

### ToolRuntime

Runtime context automatically injected into tools.](/python/langgraph.prebuilt/tool_node/ToolRuntime)[Class

### HumanResponse

The response provided by a human to an interrupt, which is returned when graph execution resumes.](/python/langgraph.prebuilt/interrupt/HumanResponse)[Class

### AgentState

deprecated

The state of the agent.](/python/langgraph.prebuilt/chat_agent_executor/AgentState)[Class

### ValidationNode

deprecated

A node that validates all tools requests from the last `AIMessage`.](/python/langgraph.prebuilt/tool_validator/ValidationNode)[Class

### HumanInterruptConfig

deprecated

Configuration that defines what actions are allowed for a human interrupt.](/python/langgraph.prebuilt/interrupt/HumanInterruptConfig)[Class

### ActionRequest

deprecated

Represents a request for human action within the graph execution.](/python/langgraph.prebuilt/interrupt/ActionRequest)[Class

### HumanInterrupt

deprecated

Represents an interrupt triggered by the graph that requires human intervention.](/python/langgraph.prebuilt/interrupt/HumanInterrupt)

## Functions

[Function

### tools\_condition

Conditional routing function for tool-calling workflows.](/python/langgraph.prebuilt/tool_node/tools_condition)[Function

### create\_react\_agent

deprecated

Creates an agent graph that calls tools in a loop until a stopping condition is met.](/python/langgraph.prebuilt/chat_agent_executor/create_react_agent)

Copy page

### On This Page

Classes10Functions2