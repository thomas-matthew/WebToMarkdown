Python[langgraph](/python/langgraph)Types

# Types

## Classes

[Class

### RetryPolicy

Configuration for retrying nodes.](/python/langgraph/types/RetryPolicy)[Class

### CachePolicy

Configuration for caching nodes.](/python/langgraph/types/CachePolicy)[Class

### Interrupt

Information about an interrupt that occurred in a node.](/python/langgraph/types/Interrupt)[Class

### PregelTask

A Pregel task.](/python/langgraph/types/PregelTask)[Class

### StateSnapshot

Snapshot of the state of the graph at the beginning of a step.](/python/langgraph/types/StateSnapshot)[Class

### Send

A message or packet to send to a specific node in the graph.](/python/langgraph/types/Send)[Class

### Command

One or more commands to update the graph's state and send messages to nodes.](/python/langgraph/types/Command)[Class

### Overwrite

Bypass a reducer and write the wrapped value directly to a `BinaryOperatorAggregate` channel.](/python/langgraph/types/Overwrite)

## Types

[Type

### Checkpointer

Type of the checkpointer to use for a subgraph.](/python/langgraph/types/Checkpointer)

## Constants

[Attribute

### All

Special value to indicate that graph should interrupt on all nodes.](/python/langgraph/types/All)[Attribute

### StreamMode

How the stream method should emit outputs.](/python/langgraph/types/StreamMode)[Attribute

### StreamWriter

`Callable` that accepts a single argument and writes it to the output stream.](/python/langgraph/types/StreamWriter)

Copy page

### On This Page

Classes8Types1Constants3