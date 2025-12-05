[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 131
* 1.2k](https://github.com/langchain-ai/docs "Go to repository")

* [Get started](https://reference.langchain.com/python/)
* [LangChain](https://reference.langchain.com/python/langchain/)
* [LangGraph](https://reference.langchain.com/python/langgraph/)

  LangGraph
  + langgraph




    langgraph
    - [Graphs](https://reference.langchain.com/python/langgraph/graphs/)
    - [Functional API](https://reference.langchain.com/python/langgraph/func/)
    - [Pregel](https://reference.langchain.com/python/langgraph/pregel/)
    - [Checkpointing](https://reference.langchain.com/python/langgraph/checkpoints/)
    - [Storage](https://reference.langchain.com/python/langgraph/store/)
    - [Caching](https://reference.langchain.com/python/langgraph/cache/)
    - [Types](https://reference.langchain.com/python/langgraph/types/)
    - [Runtime](https://reference.langchain.com/python/langgraph/runtime/)
    - [Config](https://reference.langchain.com/python/langgraph/config/)
    - Errors

      [Errors](https://reference.langchain.com/python/langgraph/errors/)



      Table of contents
      * [errors](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors)

        + [EmptyChannelError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.EmptyChannelError)
        + [GraphRecursionError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.GraphRecursionError)
        + [InvalidUpdateError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.InvalidUpdateError)
        + [GraphInterrupt](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.GraphInterrupt)
        + [NodeInterrupt](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.NodeInterrupt)
        + [EmptyInputError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.EmptyInputError)
        + [TaskNotFound](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.TaskNotFound)
    - [Constants](https://reference.langchain.com/python/langgraph/constants/)
    - [Channels](https://reference.langchain.com/python/langgraph/channels/)
  + Prebuilt




    Prebuilt
    - [Agents](https://reference.langchain.com/python/langgraph/agents/)
    - [Supervisor](https://reference.langchain.com/python/langgraph/supervisor/)
    - [Swarm](https://reference.langchain.com/python/langgraph/swarm/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [errors](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors)

  + [EmptyChannelError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.EmptyChannelError)
  + [GraphRecursionError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.GraphRecursionError)
  + [InvalidUpdateError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.InvalidUpdateError)
  + [GraphInterrupt](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.GraphInterrupt)
  + [NodeInterrupt](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.NodeInterrupt)
  + [EmptyInputError](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.EmptyInputError)
  + [TaskNotFound](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.TaskNotFound)

# Errors

## errors [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors "Copy anchor link to this section for reference")

### EmptyChannelError [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.EmptyChannelError "Copy anchor link to this section for reference")

Bases: `Exception`

Raised when attempting to get the value of a channel that hasn't been updated
for the first time yet.

### GraphRecursionError [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.GraphRecursionError "Copy anchor link to this section for reference")

Bases: `RecursionError`

Raised when the graph has exhausted the maximum number of steps.

This prevents infinite loops. To increase the maximum number of steps,
run your graph with a config specifying a higher `recursion_limit`.

Troubleshooting guides:

* [`GRAPH_RECURSION_LIMIT`](https://docs.langchain.com/oss/python/langgraph/GRAPH_RECURSION_LIMIT)

Examples:

```
graph = builder.compile()
graph.invoke(
    {"messages": [("user", "Hello, world!")]},
    # The config is the second positional argument
    {"recursion_limit": 1000},
)
```

### InvalidUpdateError [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.InvalidUpdateError "Copy anchor link to this section for reference")

Bases: `Exception`

Raised when attempting to update a channel with an invalid set of updates.

Troubleshooting guides:

* [`INVALID_CONCURRENT_GRAPH_UPDATE`](https://docs.langchain.com/oss/python/langgraph/INVALID_CONCURRENT_GRAPH_UPDATE)
* [`INVALID_GRAPH_NODE_RETURN_VALUE`](https://docs.langchain.com/oss/python/langgraph/INVALID_GRAPH_NODE_RETURN_VALUE)

### GraphInterrupt [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.GraphInterrupt "Copy anchor link to this section for reference")

Bases: `GraphBubbleUp`

Raised when a subgraph is interrupted, suppressed by the root graph.
Never raised directly, or surfaced to the user.

### NodeInterrupt `deprecated` [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.NodeInterrupt "Copy anchor link to this section for reference")

Bases: `GraphInterrupt`

Deprecated

NodeInterrupt is deprecated. Please use [`interrupt`](https://reference.langchain.com/python/langgraph/types/#langgraph.types.interrupt "<code class=\"doc-symbol doc-symbol-heading doc-symbol-function\"></code>            <span class=\"doc doc-object-name doc-function-name\">interrupt</span>") instead.

Raised by a node to interrupt execution.

### EmptyInputError [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.EmptyInputError "Copy anchor link to this section for reference")

Bases: `Exception`

Raised when graph receives an empty input.

### TaskNotFound [¶](https://reference.langchain.com/python/langgraph/errors/#langgraph.errors.TaskNotFound "Copy anchor link to this section for reference")

Bases: `Exception`

Raised when the executor is unable to find a task (for distributed mode).

Back to top