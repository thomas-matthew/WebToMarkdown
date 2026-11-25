Classv1.2.24 (latest)●Since v1.2

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
[StateGraph (Graph API)](https://reference.langchain.com/python/langgraph/graph/state/StateGraph) or via an
[entrypoint (Functional API)](https://reference.langchain.com/python/langgraph/func/entrypoint).

However, for **advanced** use cases, Pregel can be used directly. If you're
not sure whether you need to use Pregel directly, then the answer is probably no

* you should use the Graph API or Functional API instead. These are higher-level
  interfaces that will compile down to Pregel under the hood.

Here are some examples to give you a sense of how it works:

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
  deprecated_kwargs: Unpack[DeprecatedKwargs] = {}
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

__init__

| Name | Type |
| --- | --- |
| nodes | [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[str](https://docs.python.org/3/library/stdtypes.html#str), [PregelNode](https://reference.langchain.com/python/langgraph/pregel/_read/PregelNode) | [NodeBuilder](https://reference.langchain.com/python/langgraph/pregel/main/NodeBuilder)] |
| channels | [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[str](https://docs.python.org/3/library/stdtypes.html#str), [BaseChannel](https://reference.langchain.com/python/langgraph/channels/base/BaseChannel) | [ManagedValueSpec](https://reference.langchain.com/python/langgraph/managed/base/ManagedValueSpec)] | None |
| auto_validate | [bool](https://docs.python.org/3/library/functions.html#bool) |
| stream_mode | [StreamMode](https://reference.langchain.com/python/langgraph/types/StreamMode) |
| stream_eager | [bool](https://docs.python.org/3/library/functions.html#bool) |
| output_channels | [str](https://docs.python.org/3/library/stdtypes.html#str) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| stream_channels | [str](https://docs.python.org/3/library/stdtypes.html#str) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] | None |
| interrupt_after_nodes | [All](https://reference.langchain.com/python/langgraph/types/All) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| interrupt_before_nodes | [All](https://reference.langchain.com/python/langgraph/types/All) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| input_channels | [str](https://docs.python.org/3/library/stdtypes.html#str) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)] |
| step_timeout | [float](https://docs.python.org/3/library/functions.html#float) | None |
| debug | [bool](https://docs.python.org/3/library/functions.html#bool) | None |
| checkpointer | [Checkpointer](https://reference.langchain.com/python/langgraph/types/Checkpointer) |
| store | [BaseStore](https://reference.langchain.com/python/langchain-core/stores/BaseStore) | None |
| cache | [BaseCache](https://reference.langchain.com/python/langchain-core/caches/BaseCache) | None |
| retry_policy | [RetryPolicy](https://reference.langchain.com/python/langgraph/types/RetryPolicy) | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[RetryPolicy](https://reference.langchain.com/python/langgraph/types/RetryPolicy)] |
| cache_policy | [CachePolicy](https://reference.langchain.com/python/langgraph/types/CachePolicy) | None |
| context_schema | [type](https://docs.python.org/3/library/functions.html#type)[[ContextT](https://reference.langchain.com/python/langgraph/typing/ContextT)] | None |
| config | [RunnableConfig](https://reference.langchain.com/python/langchain-core/runnables/config/RunnableConfig) | None |
| trigger_to_nodes | [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[str](https://docs.python.org/3/library/stdtypes.html#str)]] | None |
| node_error_handler_map | [Mapping](https://docs.python.org/3/library/typing.html#typing.Mapping)[[str](https://docs.python.org/3/library/stdtypes.html#str), [str](https://docs.python.org/3/library/stdtypes.html#str)] | None |
| name | [str](https://docs.python.org/3/library/stdtypes.html#str) |
| stream_transformers | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[tuple](https://docs.python.org/3/library/stdtypes.html#tuple)[[str](https://docs.python.org/3/library/stdtypes.html#str), ...]], [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] | None |
| deprecated_kwargs | Unpack[[DeprecatedKwargs](https://reference.langchain.com/python/langgraph/_internal/_typing/DeprecatedKwargs)] |

## Attributes

attribute

nodes: dict[str, PregelNode]

attribute

channels: dict[str, BaseChannel | ManagedValueSpec]

attribute

stream_mode: StreamMode

Mode to stream output, defaults to 'values'.

attribute

stream_eager: bool

Whether to force emitting stream events eagerly, automatically turned on
for stream_mode "messages" and "custom".

attribute

output_channels: str | Sequence[str]

attribute

stream_channels: str | Sequence[str] | None

Channels to stream, defaults to all channels not in reserved channels

attribute

interrupt_after_nodes: All | Sequence[str]

attribute

interrupt_before_nodes: All | Sequence[str]

attribute

input_channels: str | Sequence[str]

attribute

step_timeout: float | None

Maximum time to wait for a step to complete, in seconds.

attribute

debug: bool

Whether to print debug information during execution.

attribute

checkpointer: Checkpointer

`Checkpointer` used to save and load graph state.

attribute

store: BaseStore | None

Memory store to use for SharedValues.

attribute

cache: BaseCache | None

Cache to use for storing node results.

attribute

retry_policy: Sequence[RetryPolicy]

Retry policies to use when running tasks. Empty set disables retries.

attribute

cache_policy: CachePolicy | None

Cache policy to use for all nodes. Can be overridden by individual nodes.

attribute

context_schema: type[ContextT] | None

Specifies the schema for the context object that will be passed to the workflow.

attribute

config: RunnableConfig | None

attribute

name: str

attribute

trigger_to_nodes: Mapping[str, Sequence[str]]

attribute

node_error_handler_map: Mapping[str, str]

attribute

stream_transformers: tuple[Callable[[tuple[str, ...]], Any], ...]

attribute

InputType: Any

attribute

OutputType: Any

attribute

stream_channels_list: Sequence[str]

attribute

stream_channels_asis: str | Sequence[str]

## Methods

method

get_graph

Return a drawable representation of the computation graph.

method

aget_graph

Return a drawable representation of the computation graph.

method

copy

method

with_config

Create a copy of the Pregel object with an updated config.

method

validate

method

get_context_jsonschema

method

get_input_schema

method

get_input_jsonschema

method

get_output_schema

method

get_output_jsonschema

method

get_subgraphs

Get the subgraphs of the graph.

method

aget_subgraphs

Get the subgraphs of the graph.

method

get_state

Get the current state of the graph.

method

aget_state

Get the current state of the graph.

method

get_state_history

Get the history of the state of the graph.

method

aget_state_history

Asynchronously get the history of the state of the graph.

method

bulk_update_state

Apply updates to the graph state in bulk. Requires a checkpointer to be set.

method

abulk_update_state

Asynchronously apply updates to the graph state in bulk. Requires a checkpointer to be set.

method

update_state

Update the state of the graph with the given values, as if they came from
node `as_node`. If `as_node` is not provided, it will be set to the last node
that updated the state, if not ambiguous.

method

aupdate_state

Asynchronously update the state of the graph with the given values, as if they came from
node `as_node`. If `as_node` is not provided, it will be set to the last node
that updated the state, if not ambiguous.

method

stream

Stream graph steps for a single input.

method

astream

Asynchronously stream graph steps for a single input.

method

stream_events

Stream events from this graph.

For `version="v1"` / `"v2"`, delegates to
`Runnable.(a)stream_events`; synchronous v1/v2 event streaming is
not implemented in langchain-core, so use `astream_events` for
those versions. For `version="v3"`, returns a
`GraphRunStream` whose typed projections the caller drives by
iterating — no background thread.

Warning

The `version="v3"` API is experimental and may change.

Builds a `StreamMux` from the built-in transformers, this
graph's compile-time `stream_transformers`, and any additional
`transformers=` supplied at the call site. `run.output`,
`run.interrupted`, and `run.interrupts` work regardless of
which transformers are registered.

method

astream_events

Async variant of `stream_events`.

For `version="v3"`, returns an `AsyncGraphRunStream` whose
projections can be awaited concurrently; each subscribed cursor
drives the pump when its buffer is empty. The same nesting
limitation as the sync path applies — see `stream_events` for
details.

Warning

The `version="v3"` API is experimental and may change.

See `stream_events` for full argument and return documentation.

method

invoke

Run the graph with a single input and config.

method

ainvoke

Asynchronously run the graph with a single input and config.

method

clear_cache

Clear the cache for the given nodes.

method

aclear_cache

Asynchronously clear the cache for the given nodes.

deprecatedmethod

config_schema

deprecatedmethod

get_config_jsonschema

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)(langchain_core)

### Attributes

[Ainput_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name)[Mget_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick)[Massign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign)[Mbatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch)[Mbatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mastream_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log)[Mtransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform)[Matransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind)[Mwith_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types)[Mwith_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map)[Mwith_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/pregel/main.py#L456)

Version History
