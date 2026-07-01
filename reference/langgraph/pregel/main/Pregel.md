Python[langgraph](/python/langgraph)[pregel](/python/langgraph/pregel)[main](/python/langgraph/pregel/main)Pregel

Classv1.2.7 (latest)●Since v0.6

# Pregel

Pregel manages the runtime behavior for LangGraph applications.

## Overview

Pregel combines [**actors**](https://en.wikipedia.org/wiki/Actor_model)
and **channels** into a single application.
**Actors** read data from channels and write data to channels.
Pregel organizes the execution of the application into multiple steps,
following the **Pregel Algorithm**/**Bulk Synchronous Parallel** model.

Each step consists of three phases:

* **Plan**: Determine which **actors** to execute in this step. For example,
  in the first step, select the **actors** that subscribe to the special
  **input** channels; in subsequent steps,
  select the **actors** that subscribe to channels updated in the previous step.
* **Execution**: Execute all selected **actors** in parallel,
  until all complete, or one fails, or a timeout is reached. During this
  phase, channel updates are invisible to actors until the next step.
* **Update**: Update the channels with the values written by the **actors**
  in this step.

Repeat until no **actors** are selected for execution, or a maximum number of
steps is reached.

## Actors

An **actor** is a `PregelNode`.
It subscribes to channels, reads data from them, and writes data to them.
It can be thought of as an **actor** in the Pregel algorithm.
`PregelNodes` implement LangChain's
Runnable interface.

## Channels

Channels are used to communicate between actors (`PregelNodes`).
Each channel has a value type, an update type, and an update function – which
takes a sequence of updates and
modifies the stored value. Channels can be used to send data from one chain to
another, or to send data from a chain to itself in a future step. LangGraph
provides a number of built-in channels:

### Basic channels: LastValue and Topic

* `LastValue`: The default channel, stores the last value sent to the channel,
  useful for input and output values, or for sending data from one step to the next
* `Topic`: A configurable PubSub Topic, useful for sending multiple values
  between *actors*, or for accumulating output. Can be configured to deduplicate
  values, and/or to accumulate values over the course of multiple steps.

### Advanced channels: Context and BinaryOperatorAggregate

* `Context`: exposes the value of a context manager, managing its lifecycle.
  Useful for accessing external resources that require setup and/or teardown. e.g.
  `client = Context(httpx.Client)`
* `BinaryOperatorAggregate`: stores a persistent value, updated by applying
  a binary operator to the current value and each update
  sent to the channel, useful for computing aggregates over multiple steps. e.g.
  `total = BinaryOperatorAggregate(int, operator.add)`

## Examples

Most users will interact with Pregel via a
[StateGraph (Graph API)](/python/langgraph/graph/state/StateGraph) or via an
[entrypoint (Functional API)](/python/langgraph/func/entrypoint).

However, for **advanced** use cases, Pregel can be used directly. If you're
not sure whether you need to use Pregel directly, then the answer is probably no

* you should use the Graph API or Functional API instead. These are higher-level
  interfaces that will compile down to Pregel under the hood.

Here are some examples to give you a sense of how it works:

Copy

```
Pregel(
  self,
  *,
  nodes: dict[str, PregelNode | NodeBuilder],
  channels: dict[str, BaseChannel | ManagedValueSpec] | None,
  auto_validate: bool = True,
  stream_mode: StreamMode = 'values',
  stream_eager: bool = False,
  output_channels: str | Sequence[str],
  stream_channels: str | Sequence[str] | None = None,
  interrupt_after_nodes: All | Sequence[str] = (),
  interrupt_before_nodes: All | Sequence[str] = (),
  input_channels: str | Sequence[str],
  step_timeout: float | None = None,
  debug: bool | None = None,
  checkpointer: Checkpointer = None,
  store: BaseStore | None = None,
  cache: BaseCache | None = None,
  retry_policy: RetryPolicy | Sequence[RetryPolicy] = (),
  cache_policy: CachePolicy | None = None,
  context_schema: type[ContextT] | None = None,
  config: RunnableConfig | None = None,
  trigger_to_nodes: Mapping[str, Sequence[str]] | None = None,
  node_error_handler_map: Mapping[str, str] | None = None,
  name: str = 'LangGraph',
  stream_transformers: Sequence[Callable[[tuple[str, ...]], Any]] | None = None,
  **deprecated_kwargs: Unpack[DeprecatedKwargs] = {}
)
```

## Bases

`PregelProtocol[StateT, ContextT, InputT, OutputT]``Generic[StateT, ContextT, InputT, OutputT]`

**Single node application:**

```
from langgraph.channels import EphemeralValue
from langgraph.pregel import Pregel, NodeBuilder

node1 = (
    NodeBuilder().subscribe_only("a")
    .do(lambda x: x + x)
    .write_to("b")
)

app = Pregel(
    nodes={"node1": node1},
    channels={
        "a": EphemeralValue(str),
        "b": EphemeralValue(str),
    },
    input_channels=["a"],
    output_channels=["b"],
)

app.invoke({"a": "foo"})
```

Copy

```
{'b': 'foofoo'}
```

Copy

**Using multiple nodes and multiple output channels:**

```
from langgraph.channels import LastValue, EphemeralValue
from langgraph.pregel import Pregel, NodeBuilder

node1 = (
    NodeBuilder().subscribe_only("a")
    .do(lambda x: x + x)
    .write_to("b")
)

node2 = (
    NodeBuilder().subscribe_to("b")
    .do(lambda x: x["b"] + x["b"])
    .write_to("c")
)

app = Pregel(
    nodes={"node1": node1, "node2": node2},
    channels={
        "a": EphemeralValue(str),
        "b": LastValue(str),
        "c": EphemeralValue(str),
    },
    input_channels=["a"],
    output_channels=["b", "c"],
)

app.invoke({"a": "foo"})
```

Copy

```
{'b': 'foofoo', 'c': 'foofoofoofoo'}
```

Copy

**Using a Topic channel:**

```
from langgraph.channels import LastValue, EphemeralValue, Topic
from langgraph.pregel import Pregel, NodeBuilder

node1 = (
    NodeBuilder().subscribe_only("a")
    .do(lambda x: x + x)
    .write_to("b", "c")
)

node2 = (
    NodeBuilder().subscribe_only("b")
    .do(lambda x: x + x)
    .write_to("c")
)

app = Pregel(
    nodes={"node1": node1, "node2": node2},
    channels={
        "a": EphemeralValue(str),
        "b": EphemeralValue(str),
        "c": Topic(str, accumulate=True),
    },
    input_channels=["a"],
    output_channels=["c"],
)

app.invoke({"a": "foo"})
```

Copy

```
{"c": ["foofoo", "foofoofoofoo"]}
```

Copy

**Using a `BinaryOperatorAggregate` channel:**

```
from langgraph.channels import EphemeralValue, BinaryOperatorAggregate
from langgraph.pregel import Pregel, NodeBuilder

node1 = (
    NodeBuilder().subscribe_only("a")
    .do(lambda x: x + x)
    .write_to("b", "c")
)

node2 = (
    NodeBuilder().subscribe_only("b")
    .do(lambda x: x + x)
    .write_to("c")
)

def reducer(current, update):
    if current:
        return current + " | " + update
    else:
        return update

app = Pregel(
    nodes={"node1": node1, "node2": node2},
    channels={
        "a": EphemeralValue(str),
        "b": EphemeralValue(str),
        "c": BinaryOperatorAggregate(str, operator=reducer),
    },
    input_channels=["a"],
    output_channels=["c"],
)

app.invoke({"a": "foo"})
```

Copy

```
{'c': 'foofoo | foofoofoofoo'}
```

Copy

**Introducing a cycle:**

This example demonstrates how to introduce a cycle in the graph, by having
a chain write to a channel it subscribes to.

Execution will continue until a `None` value is written to the channel.

```
from langgraph.channels import EphemeralValue
from langgraph.pregel import Pregel, NodeBuilder, ChannelWriteEntry

example_node = (
    NodeBuilder()
    .subscribe_only("value")
    .do(lambda x: x + x if len(x) < 10 else None)
    .write_to(ChannelWriteEntry(channel="value", skip_none=True))
)

app = Pregel(
    nodes={"example_node": example_node},
    channels={
        "value": EphemeralValue(str),
    },
    input_channels=["value"],
    output_channels=["value"],
)

app.invoke({"value": "a"})
```

Copy

```
{'value': 'aaaaaaaaaaaaaaaa'}
```

Copy

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| nodes | [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[str](https://docs.python.org/3/library/stdtypes.html#str), [PregelNode](/python/langgraph/pregel/_read/PregelNode) | [NodeBuilder](/python/langgraph/pregel/main/NodeBuilder)] |
| channels | [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[str](https://docs.python.org/3/library/stdtypes.html#str), [BaseChannel](/python/langgraph/channels/base/BaseChannel) | [ManagedValueSpec](/python/langgraph/managed/base/ManagedValueSpec)] | None |
| auto\_validate | [bool](https://docs.python.org/3/library/functions.html#bool) |
| stream\_mode | [StreamMode](/python/langgraph/types/StreamMode) |
| stream\_eager | [bool](https://docs.python.org/3/library/functions.html#bool) |
| output\_channels | [str](https://docs.python.org/3/library/stdtypes.html#str) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| stream\_channels | [str](https://docs.python.org/3/library/stdtypes.html#str) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] | None |
| interrupt\_after\_nodes | [All](/python/langgraph/types/All) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| interrupt\_before\_nodes | [All](/python/langgraph/types/All) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| input\_channels | [str](https://docs.python.org/3/library/stdtypes.html#str) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| step\_timeout | [float](https://docs.python.org/3/library/functions.html#float) | None |
| debug | [bool](https://docs.python.org/3/library/functions.html#bool) | None |
| checkpointer | [Checkpointer](/python/langgraph/types/Checkpointer) |
| store | [BaseStore](/python/langgraph.store/base/BaseStore) | None |
| cache | [BaseCache](/python/langchain-core/caches/BaseCache) | None |
| retry\_policy | [RetryPolicy](/python/langgraph/types/RetryPolicy) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[RetryPolicy](/python/langgraph/types/RetryPolicy)] |
| cache\_policy | [CachePolicy](/python/langgraph/types/CachePolicy) | None |
| context\_schema | [type](https://docs.python.org/3/library/functions.html#type)[[ContextT](/python/langgraph/typing/ContextT)] | None |
| config | [RunnableConfig](/python/langchain-core/runnables/config/RunnableConfig) | None |
| trigger\_to\_nodes | [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] | None |
| node\_error\_handler\_map | [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [str](https://docs.python.org/3/library/stdtypes.html#str)] | None |
| name | [str](https://docs.python.org/3/library/stdtypes.html#str) |
| stream\_transformers | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[tuple](https://docs.python.org/3/library/stdtypes.html#tuple)[[str](https://docs.python.org/3/library/stdtypes.html#str), ...]], [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] | None |

## Attributes

[attribute

nodes: dict[str, PregelNode]](/python/langgraph/pregel/main/Pregel/nodes)[attribute

channels: dict[str, BaseChannel | ManagedValueSpec]](/python/langgraph/pregel/main/Pregel/channels)[attribute

stream\_mode: StreamMode

Mode to stream output, defaults to 'values'.](/python/langgraph/pregel/main/Pregel/stream_mode)[attribute

stream\_eager: bool

Whether to force emitting stream events eagerly, automatically turned on
for stream\_mode "messages" and "custom".](/python/langgraph/pregel/main/Pregel/stream_eager)[attribute

output\_channels: str | Sequence[str]](/python/langgraph/pregel/main/Pregel/output_channels)[attribute

stream\_channels: str | Sequence[str] | None

Channels to stream, defaults to all channels not in reserved channels](/python/langgraph/pregel/main/Pregel/stream_channels)[attribute

interrupt\_after\_nodes: All | Sequence[str]](/python/langgraph/pregel/main/Pregel/interrupt_after_nodes)[attribute

interrupt\_before\_nodes: All | Sequence[str]](/python/langgraph/pregel/main/Pregel/interrupt_before_nodes)[attribute

input\_channels: str | Sequence[str]](/python/langgraph/pregel/main/Pregel/input_channels)[attribute

step\_timeout: float | None

Maximum time to wait for a step to complete, in seconds.](/python/langgraph/pregel/main/Pregel/step_timeout)[attribute

debug: bool

Whether to print debug information during execution.](/python/langgraph/pregel/main/Pregel/debug)[attribute

checkpointer: Checkpointer

`Checkpointer` used to save and load graph state.](/python/langgraph/pregel/main/Pregel/checkpointer)[attribute

store: BaseStore | None

Memory store to use for SharedValues.](/python/langgraph/pregel/main/Pregel/store)[attribute

cache: BaseCache | None

Cache to use for storing node results.](/python/langgraph/pregel/main/Pregel/cache)[attribute

retry\_policy: Sequence[RetryPolicy]

Retry policies to use when running tasks. Empty set disables retries.](/python/langgraph/pregel/main/Pregel/retry_policy)[attribute

cache\_policy: CachePolicy | None

Cache policy to use for all nodes. Can be overridden by individual nodes.](/python/langgraph/pregel/main/Pregel/cache_policy)[attribute

context\_schema: type[ContextT] | None

Specifies the schema for the context object that will be passed to the workflow.](/python/langgraph/pregel/main/Pregel/context_schema)[attribute

config: RunnableConfig | None](/python/langgraph/pregel/main/Pregel/config)[attribute

name: str](/python/langgraph/pregel/main/Pregel/name)[attribute

trigger\_to\_nodes: Mapping[str, Sequence[str]]](/python/langgraph/pregel/main/Pregel/trigger_to_nodes)[attribute

node\_error\_handler\_map: Mapping[str, str]](/python/langgraph/pregel/main/Pregel/node_error_handler_map)[attribute

stream\_transformers: tuple[Callable[[tuple[str, ...]], Any], ...]](/python/langgraph/pregel/main/Pregel/stream_transformers)[attribute

InputType: Any](/python/langgraph/pregel/main/Pregel/InputType)[attribute

OutputType: Any](/python/langgraph/pregel/main/Pregel/OutputType)[attribute

stream\_channels\_list: Sequence[str]](/python/langgraph/pregel/main/Pregel/stream_channels_list)[attribute

stream\_channels\_asis: str | Sequence[str]](/python/langgraph/pregel/main/Pregel/stream_channels_asis)

## Methods

[method

get\_graph

Return a drawable representation of the computation graph.](/python/langgraph/pregel/main/Pregel/get_graph)[method

aget\_graph

Return a drawable representation of the computation graph.](/python/langgraph/pregel/main/Pregel/aget_graph)[method

copy](/python/langgraph/pregel/main/Pregel/copy)[method

with\_config

Create a copy of the Pregel object with an updated config.](/python/langgraph/pregel/main/Pregel/with_config)[method

validate](/python/langgraph/pregel/main/Pregel/validate)[method

get\_context\_jsonschema](/python/langgraph/pregel/main/Pregel/get_context_jsonschema)[method

get\_input\_schema](/python/langgraph/pregel/main/Pregel/get_input_schema)[method

get\_input\_jsonschema](/python/langgraph/pregel/main/Pregel/get_input_jsonschema)[method

get\_output\_schema](/python/langgraph/pregel/main/Pregel/get_output_schema)[method

get\_output\_jsonschema](/python/langgraph/pregel/main/Pregel/get_output_jsonschema)[method

get\_subgraphs

Get the subgraphs of the graph.](/python/langgraph/pregel/main/Pregel/get_subgraphs)[method

aget\_subgraphs

Get the subgraphs of the graph.](/python/langgraph/pregel/main/Pregel/aget_subgraphs)[method

get\_state

Get the current state of the graph.](/python/langgraph/pregel/main/Pregel/get_state)[method

aget\_state

Get the current state of the graph.](/python/langgraph/pregel/main/Pregel/aget_state)[method

get\_state\_history

Get the history of the state of the graph.](/python/langgraph/pregel/main/Pregel/get_state_history)[method

aget\_state\_history

Asynchronously get the history of the state of the graph.](/python/langgraph/pregel/main/Pregel/aget_state_history)[method

bulk\_update\_state

Apply updates to the graph state in bulk. Requires a checkpointer to be set.](/python/langgraph/pregel/main/Pregel/bulk_update_state)[method

abulk\_update\_state

Asynchronously apply updates to the graph state in bulk. Requires a checkpointer to be set.](/python/langgraph/pregel/main/Pregel/abulk_update_state)[method

update\_state

Update the state of the graph with the given values, as if they came from
node `as_node`. If `as_node` is not provided, it will be set to the last node
that updated the state, if not ambiguous.](/python/langgraph/pregel/main/Pregel/update_state)[method

aupdate\_state

Asynchronously update the state of the graph with the given values, as if they came from
node `as_node`. If `as_node` is not provided, it will be set to the last node
that updated the state, if not ambiguous.](/python/langgraph/pregel/main/Pregel/aupdate_state)[method

stream

Stream graph steps for a single input.](/python/langgraph/pregel/main/Pregel/stream)[method

astream

Asynchronously stream graph steps for a single input.](/python/langgraph/pregel/main/Pregel/astream)[method

stream\_events

Stream events from this graph.

For `version="v1"` / `"v2"`, yields `StreamEvent` dicts (see
`Runnable.stream_events`). For `version="v3"`, returns a
`GraphRunStream` whose typed projections the caller drives by
iterating — no background thread.

Warning

The `version="v3"` API is experimental and may change.

Builds a `StreamMux` from the built-in transformers, this
graph's compile-time `stream_transformers`, and any additional
`transformers=` supplied at the call site. `run.output`,
`run.interrupted`, and `run.interrupts` work regardless of
which transformers are registered.](/python/langgraph/pregel/main/Pregel/stream_events)[method

astream\_events

Async variant of `stream_events`.

For `version="v3"`, returns an `AsyncGraphRunStream` whose
projections can be awaited concurrently; each subscribed cursor
drives the pump when its buffer is empty. The same nesting
limitation as the sync path applies — see `stream_events` for
details.

Warning

The `version="v3"` API is experimental and may change.

See `stream_events` for full argument and return documentation.](/python/langgraph/pregel/main/Pregel/astream_events)[method

invoke

Run the graph with a single input and config.](/python/langgraph/pregel/main/Pregel/invoke)[method

ainvoke

Asynchronously run the graph with a single input and config.](/python/langgraph/pregel/main/Pregel/ainvoke)[method

clear\_cache

Clear the cache for the given nodes.](/python/langgraph/pregel/main/Pregel/clear_cache)[method

aclear\_cache

Asynchronously clear the cache for the given nodes.](/python/langgraph/pregel/main/Pregel/aclear_cache)[deprecatedmethod

config\_schema](/python/langgraph/pregel/main/Pregel/config_schema)[deprecatedmethod

get\_config\_jsonschema](/python/langgraph/pregel/main/Pregel/get_config_jsonschema)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/5931a5f0b313feff24e2516a586c55601b868ac1/libs/langgraph/langgraph/pregel/main.py#L449)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Attributes

AnodesAchannelsAstream\_modeAstream\_eagerAoutput\_channelsAstream\_channelsAinterrupt\_after\_nodesAinterrupt\_before\_nodesAinput\_channelsAstep\_timeoutAdebugAcheckpointerAstoreAcacheAretry\_policyAcache\_policyAcontext\_schemaAconfigAnameAtrigger\_to\_nodesAnode\_error\_handler\_mapAstream\_transformersAInputTypeAOutputTypeAstream\_channels\_listAstream\_channels\_asis

Methods

Mget\_graphMaget\_graphMcopyMwith\_configMvalidateMconfig\_schemaMget\_config\_jsonschemaMget\_context\_jsonschemaMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMget\_subgraphsMaget\_subgraphsMget\_stateMaget\_stateMget\_state\_historyMaget\_state\_historyMbulk\_update\_stateMabulk\_update\_stateMupdate\_stateMaupdate\_stateMstreamMastreamMstream\_eventsMastream\_eventsMinvokeMainvokeMclear\_cacheMaclear\_cache

from Runnable

AAttributes

Ainput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_promptsMpipeMpickMassignMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMastream\_logMtransformMatransformMbindMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool