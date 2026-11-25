# Errors

## Classes

Class

### [ErrorCode](https://reference.langchain.com/python/langgraph/errors/ErrorCode)

Class

### [GraphBubbleUp](https://reference.langchain.com/python/langgraph/errors/GraphBubbleUp)

Class

### [GraphDrained](https://reference.langchain.com/python/langgraph/errors/GraphDrained)

Raised when a graph run exits early due to a drain request.

This indicates the graph stopped cooperatively at a superstep boundary
because `RunControl.request_drain()` was called (e.g., in response t

Class

### [GraphRecursionError](https://reference.langchain.com/python/langgraph/errors/GraphRecursionError)

Raised when the graph has exhausted the maximum number of steps.

This prevents infinite loops. To increase the maximum number of steps,
run your graph with a config specifying a higher `recursion_lim

Class

### [InvalidUpdateError](https://reference.langchain.com/python/langgraph/errors/InvalidUpdateError)

Raised when attempting to update a channel with an invalid set of updates.

Troubleshooting guides:

* [`INVALID_CONCURRENT_GRAPH_UPDATE`](https://docs.langchain.com/oss/python/langgraph/INVALID_CONCU

Class

### [GraphInterrupt](https://reference.langchain.com/python/langgraph/errors/GraphInterrupt)

Raised when a subgraph is interrupted, suppressed by the root graph.
Never raised directly, or surfaced to the user.

Class

### [ParentCommand](https://reference.langchain.com/python/langgraph/errors/ParentCommand)

Class

### [EmptyInputError](https://reference.langchain.com/python/langgraph/errors/EmptyInputError)

Raised when graph receives an empty input.

Class

### [TaskNotFound](https://reference.langchain.com/python/langgraph/errors/TaskNotFound)

Raised when the executor is unable to find a task (for distributed mode).

Class

### [UnknownInterruptError](https://reference.langchain.com/python/langgraph/errors/UnknownInterruptError)

Raised in strict resume mode when a resume doesn't match the pending interrupts.

`reason` says how it doesn't match:

* `"not_pending"`: the resume names interrupts that aren't pending, listed in
  `

Class

### [NodeError](https://reference.langchain.com/python/langgraph/errors/NodeError)

Failure context passed to a node-level error handler.

Inject by adding a parameter typed `NodeError` to a handler registered via
`StateGraph.add_node(..., error_handler=...)`:

```
def handler(
```

Class

### [NodeCancelledError](https://reference.langchain.com/python/langgraph/errors/NodeCancelledError)

Raised when a node body raises `asyncio.CancelledError` itself.

`asyncio.CancelledError` is a `BaseException` and the pregel runner
treats cancelled task futures as silent tear-down (e.g. when

Class

### [NodeTimeoutError](https://reference.langchain.com/python/langgraph/errors/NodeTimeoutError)

Raised when a node invocation exceeds one of its configured timeouts.

Does **not** inherit from the built-in `TimeoutError` (a subclass of
`OSError`) so that the default `RetryPolicy` treats it as re

Class

### [NodeInterrupt](https://reference.langchain.com/python/langgraph/errors/NodeInterrupt)

deprecated

Raised by a node to interrupt execution.

## Functions

Function

### [create_error_message](https://reference.langchain.com/python/langgraph/errors/create_error_message)

Function

### [is_invalid_resume](https://reference.langchain.com/python/langgraph/errors/is_invalid_resume)

Whether `error` was raised because a resume value didn't match `response_schema`.

`interrupt()` raises a `pydantic.ValidationError` in that case. `ToolNode` uses
this to tell it apart from invalid to
