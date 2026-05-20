Python[langgraph](/python/langgraph)[config](/python/langgraph/config)get\_stream\_writer

Functionv1.2.0 (latest)●Since v0.2

# get\_stream\_writer

Access LangGraph [`StreamWriter`](/python/langgraph/types/StreamWriter) from inside a graph node or entrypoint task at runtime.

Can be called from inside any [`StateGraph`](/python/langgraph/graph/state/StateGraph) node or
functional API [`task`](/python/langgraph/func/task).

Async with Python < 3.11

If you are using Python < 3.11 and are running LangGraph asynchronously,
`get_stream_writer()` won't work since it uses [`contextvar`](https://docs.python.org/3/library/contextvars.html) propagation (only available in [Python >= 3.11](https://docs.python.org/3/library/asyncio-task.html#asyncio.create_task)).

Copy

```
get_stream_writer() -> StreamWriter
```

**Using with `StateGraph`:**

```
from typing_extensions import TypedDict
from langgraph.graph import StateGraph, START
from langgraph.config import get_stream_writer

class State(TypedDict):
    foo: int

def my_node(state: State):
    my_stream_writer = get_stream_writer()
    my_stream_writer({"custom_data": "Hello!"})
    return {"foo": state["foo"] + 1}

graph = (
    StateGraph(State)
    .add_node(my_node)
    .add_edge(START, "my_node")
    .compile(store=store)
)

for chunk in graph.stream({"foo": 1}, stream_mode="custom"):
    print(chunk)
```

Copy

```
{"custom_data": "Hello!"}
```

Copy

**Using with functional API:**

```
from langgraph.func import entrypoint, task
from langgraph.config import get_stream_writer

@task
def my_task(value: int):
    my_stream_writer = get_stream_writer()
    my_stream_writer({"custom_data": "Hello!"})
    return value + 1

@entrypoint(store=store)
def workflow(value: int):
    return my_task(value).result()

for chunk in workflow.stream(1, stream_mode="custom"):
    print(chunk)
```

Copy

```
{"custom_data": "Hello!"}
```

Copy

## Used in Docs

* [Event streaming](https://docs.langchain.com/oss/python/langgraph/event-streaming)
* [Streaming](https://docs.langchain.com/oss/python/deepagents/streaming)
* [Streaming](https://docs.langchain.com/oss/python/langchain/streaming)
* [Streaming](https://docs.langchain.com/oss/python/langgraph/streaming)
* [Use the functional API](https://docs.langchain.com/oss/python/langgraph/use-functional-api)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/config.py#L126)

Version History

Copy page

### On This Page

Related Documentation