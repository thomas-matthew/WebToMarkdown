Python[langgraph](/python/langgraph)[runtime](/python/langgraph/runtime)Runtime

Classv1.2.0 (latest)●Since v0.6

# Runtime

Convenience class that bundles run-scoped context and other runtime utilities.

This class is injected into graph nodes and middleware. It provides access to
`context`, `store`, `stream_writer`, `previous`, and `execution_info`.

Accessing `config`

`Runtime` does not include `config`. To access `RunnableConfig`, you can inject
it directly by adding a `config: RunnableConfig` parameter to your node function
(recommended), or use `get_config()` from `langgraph.config`.

Note

`ToolRuntime` (from `langgraph.prebuilt`) is a subclass that provides similar
functionality but is designed specifically for tools. It shares `context`, `store`,
and `stream_writer` with `Runtime`, and adds tool-specific attributes like `config`,
`state`, and `tool_call_id`.

Example:

```
from typing import TypedDict
from langgraph.graph import StateGraph
from dataclasses import dataclass
from langgraph.runtime import Runtime
from langgraph.store.memory import InMemoryStore

@dataclass
class Context:  # (1)!
    user_id: str

class State(TypedDict, total=False):
    response: str

store = InMemoryStore()  # (2)!
store.put(("users",), "user_123", {"name": "Alice"})

def personalized_greeting(state: State, runtime: Runtime[Context]) -> State:
    '''Generate personalized greeting using runtime context and store.'''
    user_id = runtime.context.user_id  # (3)!
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

Copy

1. Define a schema for the runtime context.
2. Create a store to persist memories and other information.
3. Use the runtime context to access the `user_id`.

Copy

```
Runtime(
  self,
  *,
  context: ContextT = None,
  store: BaseStore | None = None,
  stream_writer: StreamWriter = _no_op_stream_writer,
  heartbeat: Callable[[], None] = _no_op_heartbeat,
  previous: Any = None,
  execution_info: ExecutionInfo | None = None,
  server_info: ServerInfo | None = None,
  control: RunControl | None = None
)
```

## Bases

`Generic[ContextT]`

## Used in Docs

* [A2A endpoint in Agent Server](https://docs.langchain.com/langsmith/server-a2a)
* [Custom middleware](https://docs.langchain.com/oss/python/langchain/middleware/custom)
* [Durable execution](https://docs.langchain.com/oss/python/langgraph/durable-execution)
* [Fault tolerance](https://docs.langchain.com/oss/python/langgraph/fault-tolerance)
* [Going to production](https://docs.langchain.com/oss/python/deepagents/going-to-production)

+9 more

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| context | [ContextT](/python/langgraph/typing/ContextT) |
| store | BaseStore | None |
| stream\_writer | [StreamWriter](/python/langgraph/types/StreamWriter) |
| heartbeat | [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[], None] |
| previous | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |
| execution\_info | [ExecutionInfo](/python/langgraph/runtime/ExecutionInfo) | None |
| server\_info | [ServerInfo](/python/langgraph/runtime/ServerInfo) | None |
| control | [RunControl](/python/langgraph/runtime/RunControl) | None |

## Attributes

[attribute

context: ContextT

Static context for the graph run, like `user_id`, `db_conn`, etc.

Can also be thought of as 'run dependencies'.](/python/langgraph/runtime/Runtime/context)[attribute

store: BaseStore | None

Store for the graph run, enabling persistence and memory.](/python/langgraph/runtime/Runtime/store)[attribute

stream\_writer: StreamWriter

Function that writes to the custom stream.](/python/langgraph/runtime/Runtime/stream_writer)[attribute

heartbeat: Callable[[], None]

Record progress for the current node's `idle_timeout`.

Call this from inside long-running work that does not naturally emit
writes, stream chunks, child tasks, or LangChain callback events, to
prevent the node from being treated as idle. It is also the only
progress signal honored under `TimeoutPolicy(refresh_on="heartbeat")`.
Outside an idle-timed attempt this is a no-op.](/python/langgraph/runtime/Runtime/heartbeat)[attribute

previous: Any

The previous return value for the given thread.

Only available with the functional API when a checkpointer is provided.](/python/langgraph/runtime/Runtime/previous)[attribute

execution\_info: ExecutionInfo | None

Read-only execution information/metadata for the current node run.

None before task preparation populates it.](/python/langgraph/runtime/Runtime/execution_info)[attribute

server\_info: ServerInfo | None

Metadata injected by LangGraph Server. None when running open-source LangGraph without LangSmith deployments.](/python/langgraph/runtime/Runtime/server_info)[attribute

control: RunControl | None

Run-scoped control plane for cooperative draining.

Populated automatically during graph runs. None outside an active
graph runtime.](/python/langgraph/runtime/Runtime/control)[attribute

drain\_requested: bool](/python/langgraph/runtime/Runtime/drain_requested)[attribute

drain\_reason: str | None](/python/langgraph/runtime/Runtime/drain_reason)

## Methods

[method

merge

Merge two runtimes together.

If a value is not provided in the other runtime, the value from the current runtime is used.](/python/langgraph/runtime/Runtime/merge)[method

override

Replace the runtime with a new runtime with the given overrides.](/python/langgraph/runtime/Runtime/override)[method

patch\_execution\_info

Return a new runtime with selected execution\_info fields replaced.](/python/langgraph/runtime/Runtime/patch_execution_info)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/runtime.py#L124)

Version History

Copy page

### On This Page

Related Documentation

Constructors

C\_\_init\_\_

Attributes

AcontextAstoreAstream\_writerAheartbeatApreviousAexecution\_infoAserver\_infoAcontrolAdrain\_requestedAdrain\_reason

Methods

MmergeMoverrideMpatch\_execution\_info