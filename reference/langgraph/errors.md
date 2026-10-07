Python[langgraph](/python/langgraph)Errors

# Errors

## Classes

[Class

### ErrorCode](/python/langgraph/errors/ErrorCode)[Class

### GraphBubbleUp](/python/langgraph/errors/GraphBubbleUp)[Class

### GraphDrained

Raised when a graph run exits early due to a drain request.

This indicates the graph stopped cooperatively at a superstep boundary
because `RunControl.request_drain()` was called (e.g., in response t](/python/langgraph/errors/GraphDrained)[Class

### GraphRecursionError

Raised when the graph has exhausted the maximum number of steps.

This prevents infinite loops. To increase the maximum number of steps,
run your graph with a config specifying a higher `recursion\_lim](/python/langgraph/errors/GraphRecursionError)[Class

### InvalidUpdateError

Raised when attempting to update a channel with an invalid set of updates.

Troubleshooting guides:

* [`INVALID_CONCURRENT_GRAPH_UPDATE`](https://docs.langchain.com/oss/python/langgraph/INVALID\_CONCU](/python/langgraph/errors/InvalidUpdateError)[Class

### GraphInterrupt

Raised when a subgraph is interrupted, suppressed by the root graph.
Never raised directly, or surfaced to the user.](/python/langgraph/errors/GraphInterrupt)[Class

### ParentCommand](/python/langgraph/errors/ParentCommand)[Class

### EmptyInputError

Raised when graph receives an empty input.](/python/langgraph/errors/EmptyInputError)[Class

### TaskNotFound

Raised when the executor is unable to find a task (for distributed mode).](/python/langgraph/errors/TaskNotFound)[Class

### NodeError

Failure context passed to a node-level error handler.

Inject by adding a parameter typed `NodeError` to a handler registered via
`StateGraph.add_node(..., error_handler=...)`:

```
def handler(
```](/python/langgraph/errors/NodeError)[Class

### NodeCancelledError

Raised when a node body raises `asyncio.CancelledError` itself.

`asyncio.CancelledError` is a `BaseException` and the pregel runner
treats cancelled task futures as silent tear-down (e.g. when](/python/langgraph/errors/NodeCancelledError)[Class

### NodeTimeoutError

Raised when a node invocation exceeds one of its configured timeouts.

Does **not** inherit from the built-in `TimeoutError` (a subclass of
`OSError`) so that the default `RetryPolicy` treats it as re](/python/langgraph/errors/NodeTimeoutError)[Class

### NodeInterrupt

deprecated

Raised by a node to interrupt execution.](/python/langgraph/errors/NodeInterrupt)

## Functions

[Function

### create\_error\_message](/python/langgraph/errors/create_error_message)

Copy page

### On This Page

Classes13Functions1