Python[langgraph](/python/langgraph)[graph](/python/langgraph/graph)[state](/python/langgraph/graph/state)StateGraph

Classv1.2.0 (latest)●Since v0.1

# StateGraph

A graph whose nodes communicate by reading and writing to a shared state.

The signature of each node is `State -> Partial<State>`.

Each state key can optionally be annotated with a reducer function that
will be used to aggregate the values of that key received from multiple nodes.
The signature of a reducer function is `(Value, Value) -> Value`.

Warning

`StateGraph` is a builder class and cannot be used directly for execution.
You must first call `.compile()` to create an executable graph that supports
methods like `invoke()`, `stream()`, `astream()`, and `ainvoke()`. See the
`CompiledStateGraph` documentation for more details.

Copy

```
StateGraph(
  self,
  state_schema: type[StateT],
  context_schema: type[ContextT] | None = None,
  *,
  input_schema: type[InputT] | None = None,
  output_schema: type[OutputT] | None = None,
  **kwargs: Unpack[DeprecatedKwargs] = {}
)
```

## Bases

`Generic[StateT, ContextT, InputT, OutputT]`

The `config_schema` parameter is deprecated in v0.6.0 and support will be removed in v2.0.0.
Please use `context_schema` instead to specify the schema for run-scoped context.

**Example:**

```
from langchain_core.runnables import RunnableConfig
from typing_extensions import Annotated, TypedDict
from langgraph.checkpoint.memory import InMemorySaver
from langgraph.graph import StateGraph
from langgraph.runtime import Runtime

def reducer(a: list, b: int | None) -> list:
    if b is not None:
        return a + [b]
    return a

class State(TypedDict):
    x: Annotated[list, reducer]

class Context(TypedDict):
    r: float

graph = StateGraph(state_schema=State, context_schema=Context)

def node(state: State, runtime: Runtime[Context]) -> dict:
    r = runtime.context.get("r", 1.0)
    x = state["x"][-1]
    next_value = x * r * (1 - x)
    return {"x": next_value}

graph.add_node("A", node)
graph.set_entry_point("A")
graph.set_finish_point("A")
compiled = graph.compile()

step1 = compiled.invoke({"x": 0.5}, context={"r": 3.0})
# {'x': [0.5, 0.75]}
```

Copy

## Used in Docs

* [A2A endpoint in Agent Server](https://docs.langchain.com/langsmith/server-a2a)
* [Backward compatibility](https://docs.langchain.com/oss/python/langgraph/backward-compatibility)
* [Build a custom SQL agent](https://docs.langchain.com/oss/python/langgraph/sql-agent)
* [Build a multi-source knowledge base with routing](https://docs.langchain.com/oss/python/langchain/multi-agent/router-knowledge-base)
* [Choosing between Graph and Functional APIs](https://docs.langchain.com/oss/python/langgraph/choosing-apis)

+15 more(19 more not shown)

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `state_schema`\* | `type[StateT]` | The schema class that defines the state. |
| `context_schema` | `type[ContextT] | None` | Default:`None`  The schema class that defines the runtime context.  Use this to expose immutable context data to your nodes, like `user_id`, `db_conn`, etc. |
| `input_schema` | `type[InputT] | None` | Default:`None`  The schema class that defines the input to the graph. |
| `output_schema` | `type[OutputT] | None` | Default:`None`  The schema class that defines the output from the graph. |

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| state\_schema | [type](https://docs.python.org/3/library/functions.html#type)[[StateT](/python/langgraph/types/StateT)] |
| context\_schema | [type](https://docs.python.org/3/library/functions.html#type)[[ContextT](/python/langgraph/typing/ContextT)] | None |
| input\_schema | [type](https://docs.python.org/3/library/functions.html#type)[[InputT](/python/langgraph/typing/InputT)] | None |
| output\_schema | [type](https://docs.python.org/3/library/functions.html#type)[[OutputT](/python/langgraph/types/OutputT)] | None |

## Attributes

[attribute

edges: set[tuple[str, str]]](/python/langgraph/graph/state/StateGraph/edges)[attribute

nodes: dict[str, StateNodeSpec[Any, ContextT]]](/python/langgraph/graph/state/StateGraph/nodes)[attribute

branches: defaultdict[str, dict[str, BranchSpec]]](/python/langgraph/graph/state/StateGraph/branches)[attribute

channels: dict[str, BaseChannel]](/python/langgraph/graph/state/StateGraph/channels)[attribute

managed: dict[str, ManagedValueSpec]](/python/langgraph/graph/state/StateGraph/managed)[attribute

schemas: dict[type[Any], dict[str, BaseChannel | ManagedValueSpec]]](/python/langgraph/graph/state/StateGraph/schemas)[attribute

waiting\_edges: set[tuple[tuple[str, ...], str]]](/python/langgraph/graph/state/StateGraph/waiting_edges)[attribute

compiled: bool](/python/langgraph/graph/state/StateGraph/compiled)[attribute

state\_schema: type[StateT]](/python/langgraph/graph/state/StateGraph/state_schema)[attribute

context\_schema: type[ContextT] | None](/python/langgraph/graph/state/StateGraph/context_schema)[attribute

input\_schema: type[InputT]](/python/langgraph/graph/state/StateGraph/input_schema)[attribute

output\_schema: type[OutputT]](/python/langgraph/graph/state/StateGraph/output_schema)

## Methods

[method

set\_node\_defaults

Set default node policies that apply to every node in this graph.

Per-node values passed to `add_node` always take precedence over these
defaults. Defaults are applied at `compile()` time. Policies set here
are **not** inherited by subgraphs.

`retry_policy` and `timeout` defaults apply to **all** nodes,
including error-handler nodes. `cache_policy` and `error_handler`
defaults only apply to regular nodes -- caching error-handler results
is unsafe, and handlers must never catch themselves.](/python/langgraph/graph/state/StateGraph/set_node_defaults)[method

add\_node

Add a new node to the `StateGraph`.](/python/langgraph/graph/state/StateGraph/add_node)[method

add\_edge

Add a directed edge from the start node (or list of start nodes) to the end node.

When a single start node is provided, the graph will wait for that node to complete
before executing the end node. When multiple start nodes are provided,
the graph will wait for ALL of the start nodes to complete before executing the end node.](/python/langgraph/graph/state/StateGraph/add_edge)[method

add\_conditional\_edges

Add a conditional edge from the starting node to any number of destination nodes.](/python/langgraph/graph/state/StateGraph/add_conditional_edges)[method

add\_sequence

Add a sequence of nodes that will be executed in the provided order.](/python/langgraph/graph/state/StateGraph/add_sequence)[method

set\_entry\_point

Specifies the first node to be called in the graph.

Equivalent to calling `add_edge(START, key)`.](/python/langgraph/graph/state/StateGraph/set_entry_point)[method

set\_conditional\_entry\_point

Sets a conditional entry point in the graph.](/python/langgraph/graph/state/StateGraph/set_conditional_entry_point)[method

set\_finish\_point

Marks a node as a finish point of the graph.

If the graph reaches this node, it will cease execution.](/python/langgraph/graph/state/StateGraph/set_finish_point)[method

validate](/python/langgraph/graph/state/StateGraph/validate)[method

compile

Compiles the `StateGraph` into a `CompiledStateGraph` object.

The compiled graph implements the `Runnable` interface and can be invoked,
streamed, batched, and run asynchronously.](/python/langgraph/graph/state/StateGraph/compile)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/076e2a3627206f5a1aef573aaca4a01e5af897ca/libs/langgraph/langgraph/graph/state.py#L130)

Version History

Copy page

### On This Page

Related Documentation◇Parameters

Constructors

C\_\_init\_\_

Attributes

AedgesAnodesAbranchesAchannelsAmanagedAschemasAwaiting\_edgesAcompiledAstate\_schemaAcontext\_schemaAinput\_schemaAoutput\_schema

Methods

Mset\_node\_defaultsMadd\_nodeMadd\_edgeMadd\_conditional\_edgesMadd\_sequenceMset\_entry\_pointMset\_conditional\_entry\_pointMset\_finish\_pointMvalidateMcompile