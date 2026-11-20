# Types

## Classes

Class

### [RetryPolicy](https://reference.langchain.com/python/langgraph/types/RetryPolicy)

Configuration for retrying nodes.

Class

### [CachePolicy](https://reference.langchain.com/python/langgraph/types/CachePolicy)

Configuration for caching nodes.

Class

### [Interrupt](https://reference.langchain.com/python/langgraph/types/Interrupt)

Information about an interrupt that occurred in a node.

Changed in version v0.4.0

* `interrupt_id` was introduced as a property

Class

### [PregelTask](https://reference.langchain.com/python/langgraph/types/PregelTask)

A Pregel task.

Class

### [StateSnapshot](https://reference.langchain.com/python/langgraph/types/StateSnapshot)

Snapshot of the state of the graph at the beginning of a step.

Class

### [Send](https://reference.langchain.com/python/langgraph/types/Send)

A message or packet to send to a specific node in the graph.

The `Send` class is used within a `StateGraph`'s conditional edges to
dynamically invoke a node with a custom state at the next step.

Imp

Class

### [Command](https://reference.langchain.com/python/langgraph/types/Command)

One or more commands to update the graph's state and send messages to nodes.

Class

### [Overwrite](https://reference.langchain.com/python/langgraph/types/Overwrite)

Bypass a reducer and write the wrapped value directly to a `BinaryOperatorAggregate` channel.

Receiving multiple `Overwrite` values for the same channel in a single super-step
will raise an `InvalidU

## Types

Type

### [Checkpointer](https://reference.langchain.com/python/langgraph/types/Checkpointer)

Type of the checkpointer to use for a subgraph.

* `True` enables persistent checkpointing for this subgraph.
* `False` disables checkpointing, even if the parent graph has a checkpointer.
* `None` in

## Constants

Attribute

### [All](https://reference.langchain.com/python/langgraph/types/All)

Special value to indicate that graph should interrupt on all nodes.

Attribute

### [StreamMode](https://reference.langchain.com/python/langgraph/types/StreamMode)

How the stream method should emit outputs.

* `"values"`: Emit all values in the state after each step, including interrupts.
  When used with functional API, values are emitted once at the end of t

Attribute

### [StreamWriter](https://reference.langchain.com/python/langgraph/types/StreamWriter)

`Callable` that accepts a single argument and writes it to the output stream.
Always injected into nodes if requested as a keyword argument, but it's a no-op
when not using `stream_mode="custom"`.
