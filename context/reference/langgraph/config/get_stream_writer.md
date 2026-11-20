Functionv1.2.23 (latest)●Since v1.2

# get\_stream\_writer

Access LangGraph [`StreamWriter`](https://reference.langchain.com/python/langgraph/types/StreamWriter) from inside a graph node or entrypoint task at runtime.

Can be called from inside any [`StateGraph`](https://reference.langchain.com/python/langgraph/graph/state/StateGraph) node or
functional API [`task`](https://reference.langchain.com/python/langgraph/func/task).

Async with Python < 3.11

If you are using Python < 3.11 and are running LangGraph asynchronously,
`get_stream_writer()` won't work since it uses [`contextvar`](https://docs.python.org/3/library/contextvars.html) propagation (only available in [Python >= 3.11](https://docs.python.org/3/library/asyncio-task.html#asyncio.create_task)).

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
* [Streaming](https://docs.langchain.com/oss/python/langchain/streaming)
* [Streaming](https://docs.langchain.com/oss/python/langgraph/streaming)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/config.py#L126)

Version History
