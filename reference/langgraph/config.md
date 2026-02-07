[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 230
* 1.8k](https://github.com/langchain-ai/docs "Go to repository")

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
    - Config

      [Config](https://reference.langchain.com/python/langgraph/config/)



      Table of contents
      * [config](https://reference.langchain.com/python/langgraph/config/#langgraph.config)

        + [get\_store](https://reference.langchain.com/python/langgraph/config/#langgraph.config.get_store)
        + [get\_stream\_writer](https://reference.langchain.com/python/langgraph/config/#langgraph.config.get_stream_writer)
    - [Errors](https://reference.langchain.com/python/langgraph/errors/)
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

* [config](https://reference.langchain.com/python/langgraph/config/#langgraph.config)

  + [get\_store](https://reference.langchain.com/python/langgraph/config/#langgraph.config.get_store)
  + [get\_stream\_writer](https://reference.langchain.com/python/langgraph/config/#langgraph.config.get_stream_writer)

# Config

## config [¶](https://reference.langchain.com/python/langgraph/config/#langgraph.config "Copy anchor link to this section for reference")

| FUNCTION | DESCRIPTION |
| --- | --- |
| `get_store` | Access LangGraph store from inside a graph node or entrypoint task at runtime. |
| `get_stream_writer` | Access LangGraph [`StreamWriter`](https://reference.langchain.com/python/langgraph/types/#langgraph.types.StreamWriter "<code class=\"doc-symbol doc-symbol-heading doc-symbol-attribute\"></code>            <span class=\"doc doc-object-name doc-attribute-name\">StreamWriter</span>     <span class=\"doc doc-labels\">       <small class=\"doc doc-label doc-label-module-attribute\"><code>module-attribute</code></small>   </span>") from inside a graph node or entrypoint task at runtime. |

### get\_store [¶](https://reference.langchain.com/python/langgraph/config/#langgraph.config.get_store "Copy anchor link to this section for reference")

```
get_store() -> BaseStore
```

Access LangGraph store from inside a graph node or entrypoint task at runtime.

Can be called from inside any [`StateGraph`](https://reference.langchain.com/python/langgraph/graphs/#langgraph.graph.state.StateGraph "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">StateGraph</span>") node or
functional API [`task`](https://reference.langchain.com/python/langgraph/func/#langgraph.func.task "<code class=\"doc-symbol doc-symbol-heading doc-symbol-function\"></code>            <span class=\"doc doc-object-name doc-function-name\">task</span>"), as long as the `StateGraph` or the [`entrypoint`](https://reference.langchain.com/python/langgraph/func/#langgraph.func.entrypoint "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">entrypoint</span>")
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

Async with Python < 3.11

If you are using Python < 3.11 and are running LangGraph asynchronously,
`get_store()` won't work since it uses [`contextvar`](https://docs.python.org/3/library/contextvars.html) propagation (only available in [Python >= 3.11](https://docs.python.org/3/library/asyncio-task.html#asyncio.create_task)).

Using with `StateGraph`

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

```
{"foo": 3}
```


Using with functional API

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

```
3
```

### get\_stream\_writer [¶](https://reference.langchain.com/python/langgraph/config/#langgraph.config.get_stream_writer "Copy anchor link to this section for reference")

```
get_stream_writer() -> StreamWriter
```

Access LangGraph [`StreamWriter`](https://reference.langchain.com/python/langgraph/types/#langgraph.types.StreamWriter "<code class=\"doc-symbol doc-symbol-heading doc-symbol-attribute\"></code>            <span class=\"doc doc-object-name doc-attribute-name\">StreamWriter</span>


  <span class=\"doc doc-labels\">
      <small class=\"doc doc-label doc-label-module-attribute\"><code>module-attribute</code></small>
  </span>") from inside a graph node or entrypoint task at runtime.

Can be called from inside any [`StateGraph`](https://reference.langchain.com/python/langgraph/graphs/#langgraph.graph.state.StateGraph "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">StateGraph</span>") node or
functional API [`task`](https://reference.langchain.com/python/langgraph/func/#langgraph.func.task "<code class=\"doc-symbol doc-symbol-heading doc-symbol-function\"></code>            <span class=\"doc doc-object-name doc-function-name\">task</span>").

Async with Python < 3.11

If you are using Python < 3.11 and are running LangGraph asynchronously,
`get_stream_writer()` won't work since it uses [`contextvar`](https://docs.python.org/3/library/contextvars.html) propagation (only available in [Python >= 3.11](https://docs.python.org/3/library/asyncio-task.html#asyncio.create_task)).

Using with `StateGraph`

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

```
{"custom_data": "Hello!"}
```


Using with functional API

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

```
{"custom_data": "Hello!"}
```

Back to top