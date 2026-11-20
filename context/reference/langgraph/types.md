Python[langgraph](/python/langgraph)Types

# Types

## Classes

[Class

### RetryPolicy

Configuration for retrying nodes.](/python/langgraph/types/RetryPolicy)[Class

### CachePolicy

Configuration for caching nodes.](/python/langgraph/types/CachePolicy)[Class

### Interrupt

Information about an interrupt that occurred in a node.

Changed in version v0.4.0

* `interrupt_id` was introduced as a property](/python/langgraph/types/Interrupt)[Class

### PregelTask

A Pregel task.](/python/langgraph/types/PregelTask)[Class

### StateSnapshot

Snapshot of the state of the graph at the beginning of a step.](/python/langgraph/types/StateSnapshot)[Class

### Send

A message or packet to send to a specific node in the graph.

The `Send` class is used within a `StateGraph`'s conditional edges to
dynamically invoke a node with a custom state at the next step.

Imp](/python/langgraph/types/Send)[Class

### Command

One or more commands to update the graph's state and send messages to nodes.](/python/langgraph/types/Command)[Class

### Overwrite

Bypass a reducer and write the wrapped value directly to a `BinaryOperatorAggregate` channel.

Receiving multiple `Overwrite` values for the same channel in a single super-step
will raise an `InvalidU](/python/langgraph/types/Overwrite)

## Types

[Type

### Checkpointer

Type of the checkpointer to use for a subgraph.

* `True` enables persistent checkpointing for this subgraph.
* `False` disables checkpointing, even if the parent graph has a checkpointer.
* `None` in](/python/langgraph/types/Checkpointer)

## Constants

[Attribute

### All

Special value to indicate that graph should interrupt on all nodes.](/python/langgraph/types/All)[Attribute

### StreamMode

How the stream method should emit outputs.

* `"values"`: Emit all values in the state after each step, including interrupts.
  When used with functional API, values are emitted once at the end of t](/python/langgraph/types/StreamMode)[Attribute

### StreamWriter

`Callable` that accepts a single argument and writes it to the output stream.
Always injected into nodes if requested as a keyword argument, but it's a no-op
when not using `stream_mode="custom"`.](/python/langgraph/types/StreamWriter)

Copy page

### On This Page

Classes8Types1Constants3