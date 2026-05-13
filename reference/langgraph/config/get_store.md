Python[langgraph](/python/langgraph)[config](/python/langgraph/config)get\_store

Functionv1.2.0 (latest)●Since v0.2

# get\_store

Access LangGraph store from inside a graph node or entrypoint task at runtime.

Can be called from inside any [`StateGraph`](/python/langgraph/graph/state/StateGraph) node or
functional API [`task`](/python/langgraph/func/task), as long as the `StateGraph` or the [`entrypoint`](/python/langgraph/func/entrypoint)
was initialized with a store, e.g.:

```
# with StateGraph
graph = (
    StateGraph(...)
    ...
    .compile(store=store)
)

# or with entrypoint
@entrypoint(store=store)
def workflow(inputs):
    ...
```

Copy

Async with Python < 3.11

If you are using Python < 3.11 and are running LangGraph asynchronously,
`get_store()` won't work since it uses [`contextvar`](https://docs.python.org/3/library/contextvars.html) propagation (only available in [Python >= 3.11](https://docs.python.org/3/library/asyncio-task.html#asyncio.create_task)).

Copy

```
get_store() -> BaseStore
```

**Using with `StateGraph`:**

```
from typing_extensions import TypedDict
from langgraph.graph import StateGraph, START
from langgraph.store.memory import InMemoryStore
from langgraph.config import get_store

store = InMemoryStore()
store.put(("values",), "foo", {"bar": 2})

class State(TypedDict):
    foo: int

def my_node(state: State):
    my_store = get_store()
    stored_value = my_store.get(("values",), "foo").value["bar"]
    return {"foo": stored_value + 1}

graph = (
    StateGraph(State)
    .add_node(my_node)
    .add_edge(START, "my_node")
    .compile(store=store)
)

graph.invoke({"foo": 1})
```

Copy

```
{"foo": 3}
```

Copy

**Using with functional API:**

```
from langgraph.func import entrypoint, task
from langgraph.store.memory import InMemoryStore
from langgraph.config import get_store

store = InMemoryStore()
store.put(("values",), "foo", {"bar": 2})

@task
def my_task(value: int):
    my_store = get_store()
    stored_value = my_store.get(("values",), "foo").value["bar"]
    return stored_value + 1

@entrypoint(store=store)
def workflow(value: int):
    return my_task(value).result()

workflow.invoke(1)
```

Copy

```
3
```

Copy

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/076e2a3627206f5a1aef573aaca4a01e5af897ca/libs/langgraph/langgraph/config.py#L32)

Version History