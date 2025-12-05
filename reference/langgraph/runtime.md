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
    - Runtime

      [Runtime](https://reference.langchain.com/python/langgraph/runtime/)



      Table of contents
      * [Runtime](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime)

        + [context](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.context)
        + [store](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.store)
        + [stream\_writer](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.stream_writer)
        + [previous](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.previous)
      * [runtime](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime)

        + [get\_runtime](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.get_runtime)
    - [Config](https://reference.langchain.com/python/langgraph/config/)
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

* [Runtime](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime)

  + [context](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.context)
  + [store](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.store)
  + [stream\_writer](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.stream_writer)
  + [previous](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.previous)
* [runtime](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime)

  + [get\_runtime](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.get_runtime)

# Runtime

## Runtime `dataclass` [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime "Copy anchor link to this section for reference")

Bases: `Generic[ContextT]`

Convenience class that bundles run-scoped context and other runtime utilities.

Added in version v0.6.0

Example:

```
from typing import TypedDict
from langgraph.graph import StateGraph
from dataclasses import dataclass
from langgraph.runtime import Runtime
from langgraph.store.memory import InMemoryStore


@dataclass
class Context:  
    user_id: str


class State(TypedDict, total=False):
    response: str


store = InMemoryStore()  
store.put(("users",), "user_123", {"name": "Alice"})


def personalized_greeting(state: State, runtime: Runtime[Context]) -> State:
    '''Generate personalized greeting using runtime context and store.'''
    user_id = runtime.context.user_id  
    name = "unknown_user"
    if runtime.store:
        if memory := runtime.store.get(("users",), user_id):
            name = memory.value["name"]

    response = f"Hello {name}! Nice to see you again."
    return {"response": response}


graph = (
    StateGraph(state_schema=State, context_schema=Context)
    .add_node("personalized_greeting", personalized_greeting)
    .set_entry_point("personalized_greeting")
    .set_finish_point("personalized_greeting")
    .compile(store=store)
)

result = graph.invoke({}, context=Context(user_id="user_123"))
print(result)
# > {'response': 'Hello Alice! Nice to see you again.'}
```



### context `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.context "Copy anchor link to this section for reference")

```
context: ContextT = field(default=None)
```

Static context for the graph run, like `user_id`, `db_conn`, etc.

Can also be thought of as 'run dependencies'.

### store `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.store "Copy anchor link to this section for reference")

```
store: BaseStore | None = field(default=None)
```

Store for the graph run, enabling persistence and memory.

### stream\_writer `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.stream_writer "Copy anchor link to this section for reference")

```
stream_writer: StreamWriter = field(default=_no_op_stream_writer)
```

Function that writes to the custom stream.

### previous `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.Runtime.previous "Copy anchor link to this section for reference")

```
previous: Any = field(default=None)
```

The previous return value for the given thread.

Only available with the functional API when a checkpointer is provided.

## runtime [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime "Copy anchor link to this section for reference")

| FUNCTION | DESCRIPTION |
| --- | --- |
| `get_runtime` | Get the runtime for the current graph run. |

### get\_runtime [¶](https://reference.langchain.com/python/langgraph/runtime/#langgraph.runtime.get_runtime "Copy anchor link to this section for reference")

```
get_runtime(context_schema: type[ContextT] | None = None) -> Runtime[ContextT]
```

Get the runtime for the current graph run.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `context_schema` | Optional schema used for type hinting the return type of the runtime.  **TYPE:** `type[ContextT] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Runtime[ContextT]` | The runtime for the current graph run. |

Back to top