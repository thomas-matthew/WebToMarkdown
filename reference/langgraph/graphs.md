Python[langgraph](/python/langgraph)Graphs

# Graphs

## Classes

[Class

### StateGraph

A graph whose nodes communicate by reading and writing to a shared state.

The signature of each node is `State -> Partial<State>`.

Each state key can optionally be annotated with a reducer function](/python/langgraph/graph/state/StateGraph)[Class

### CompiledStateGraph](/python/langgraph/graph/state/CompiledStateGraph)

## Functions

[Function

### add\_messages

Merges two lists of messages, updating existing messages by ID.

By default, this ensures the state is "append-only", unless the
new message has the same ID as an existing message.](/python/langgraph/graph/message/add_messages)

Copy page

### On This Page

Classes2Functions1