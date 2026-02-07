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
    - Pregel

      [Pregel](https://reference.langchain.com/python/langgraph/pregel/)



      Table of contents
      * [NodeBuilder](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder)

        + [subscribe\_only](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.subscribe_only)
        + [subscribe\_to](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.subscribe_to)
        + [read\_from](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.read_from)
        + [do](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.do)
        + [write\_to](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.write_to)
        + [meta](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.meta)
        + [build](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.build)
      * [Pregel](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel)

        + [Overview](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--overview)
        + [Actors](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--actors)
        + [Channels](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--channels)

          - [Basic channels: LastValue and Topic](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--basic-channels-lastvalue-and-topic)
          - [Advanced channels: Context and BinaryOperatorAggregate](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--advanced-channels-context-and-binaryoperatoraggregate)
        + [Examples](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--examples)
        + [stream](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.stream)
        + [astream](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.astream)
        + [invoke](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.invoke)
        + [ainvoke](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.ainvoke)
        + [get\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_state)
        + [aget\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_state)
        + [get\_state\_history](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_state_history)
        + [aget\_state\_history](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_state_history)
        + [update\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.update_state)
        + [aupdate\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aupdate_state)
        + [bulk\_update\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.bulk_update_state)
        + [abulk\_update\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.abulk_update_state)
        + [get\_graph](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_graph)
        + [aget\_graph](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_graph)
        + [get\_subgraphs](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_subgraphs)
        + [aget\_subgraphs](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_subgraphs)
        + [with\_config](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.with_config)
    - [Checkpointing](https://reference.langchain.com/python/langgraph/checkpoints/)
    - [Storage](https://reference.langchain.com/python/langgraph/store/)
    - [Caching](https://reference.langchain.com/python/langgraph/cache/)
    - [Types](https://reference.langchain.com/python/langgraph/types/)
    - [Runtime](https://reference.langchain.com/python/langgraph/runtime/)
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

* [NodeBuilder](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder)

  + [subscribe\_only](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.subscribe_only)
  + [subscribe\_to](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.subscribe_to)
  + [read\_from](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.read_from)
  + [do](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.do)
  + [write\_to](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.write_to)
  + [meta](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.meta)
  + [build](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.build)
* [Pregel](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel)

  + [Overview](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--overview)
  + [Actors](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--actors)
  + [Channels](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--channels)

    - [Basic channels: LastValue and Topic](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--basic-channels-lastvalue-and-topic)
    - [Advanced channels: Context and BinaryOperatorAggregate](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--advanced-channels-context-and-binaryoperatoraggregate)
  + [Examples](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--examples)
  + [stream](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.stream)
  + [astream](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.astream)
  + [invoke](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.invoke)
  + [ainvoke](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.ainvoke)
  + [get\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_state)
  + [aget\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_state)
  + [get\_state\_history](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_state_history)
  + [aget\_state\_history](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_state_history)
  + [update\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.update_state)
  + [aupdate\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aupdate_state)
  + [bulk\_update\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.bulk_update_state)
  + [abulk\_update\_state](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.abulk_update_state)
  + [get\_graph](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_graph)
  + [aget\_graph](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_graph)
  + [get\_subgraphs](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_subgraphs)
  + [aget\_subgraphs](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_subgraphs)
  + [with\_config](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.with_config)

# Pregel

## NodeBuilder [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder "Copy anchor link to this section for reference")

| METHOD | DESCRIPTION |
| --- | --- |
| `subscribe_only` | Subscribe to a single channel. |
| `subscribe_to` | Add channels to subscribe to. |
| `read_from` | Adds the specified channels to read from, without subscribing to them. |
| `do` | Adds the specified node. |
| `write_to` | Add channel writes. |
| `meta` | Add tags or metadata to the node. |
| `build` | Builds the node. |

### subscribe\_only [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.subscribe_only "Copy anchor link to this section for reference")

```
subscribe_only(channel: str) -> Self
```

Subscribe to a single channel.

### subscribe\_to [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.subscribe_to "Copy anchor link to this section for reference")

```
subscribe_to(*channels: str, read: bool = True) -> Self
```

Add channels to subscribe to.

Node will be invoked when any of these channels are updated, with a dict of the
channel values as input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `channels` | Channel name(s) to subscribe to  **TYPE:** `str`  **DEFAULT:** `()` |
| `read` | If `True`, the channels will be included in the input to the node. Otherwise, they will trigger the node without being sent in input.  **TYPE:** `bool`  **DEFAULT:** `True` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | Self for chaining |

### read\_from [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.read_from "Copy anchor link to this section for reference")

```
read_from(*channels: str) -> Self
```

Adds the specified channels to read from, without subscribing to them.

### do [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.do "Copy anchor link to this section for reference")

```
do(node: RunnableLike) -> Self
```

Adds the specified node.

### write\_to [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.write_to "Copy anchor link to this section for reference")

```
write_to(*channels: str | ChannelWriteEntry, **kwargs: _WriteValue) -> Self
```

Add channel writes.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `*channels` | Channel names to write to.  **TYPE:** `str | ChannelWriteEntry`  **DEFAULT:** `()` |
| `**kwargs` | Channel name and value mappings.  **TYPE:** `_WriteValue`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | Self for chaining |

### meta [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.meta "Copy anchor link to this section for reference")

```
meta(*tags: str, **metadata: Any) -> Self
```

Add tags or metadata to the node.

### build [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.NodeBuilder.build "Copy anchor link to this section for reference")

```
build() -> PregelNode
```

Builds the node.

## Pregel [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel "Copy anchor link to this section for reference")

Bases: `PregelProtocol[StateT, ContextT, InputT, OutputT]`, `Generic[StateT, ContextT, InputT, OutputT]`

Pregel manages the runtime behavior for LangGraph applications.

#### Overview[¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--overview "Copy anchor link to this section for reference")

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

#### Actors[¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--actors "Copy anchor link to this section for reference")

An **actor** is a `PregelNode`.
It subscribes to channels, reads data from them, and writes data to them.
It can be thought of as an **actor** in the Pregel algorithm.
`PregelNodes` implement LangChain's
Runnable interface.

#### Channels[¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--channels "Copy anchor link to this section for reference")

Channels are used to communicate between actors (`PregelNodes`).
Each channel has a value type, an update type, and an update function – which
takes a sequence of updates and
modifies the stored value. Channels can be used to send data from one chain to
another, or to send data from a chain to itself in a future step. LangGraph
provides a number of built-in channels:

##### Basic channels: LastValue and Topic[¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--basic-channels-lastvalue-and-topic "Copy anchor link to this section for reference")

* `LastValue`: The default channel, stores the last value sent to the channel,
  useful for input and output values, or for sending data from one step to the next
* `Topic`: A configurable PubSub Topic, useful for sending multiple values
  between *actors*, or for accumulating output. Can be configured to deduplicate
  values, and/or to accumulate values over the course of multiple steps.

##### Advanced channels: Context and BinaryOperatorAggregate[¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--advanced-channels-context-and-binaryoperatoraggregate "Copy anchor link to this section for reference")

* `Context`: exposes the value of a context manager, managing its lifecycle.
  Useful for accessing external resources that require setup and/or teardown. e.g.
  `client = Context(httpx.Client)`
* `BinaryOperatorAggregate`: stores a persistent value, updated by applying
  a binary operator to the current value and each update
  sent to the channel, useful for computing aggregates over multiple steps. e.g.
  `total = BinaryOperatorAggregate(int, operator.add)`

#### Examples[¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel--examples "Copy anchor link to this section for reference")

Most users will interact with Pregel via a
[StateGraph (Graph API)](https://reference.langchain.com/python/langgraph/graphs/#langgraph.graph.state.StateGraph "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">StateGraph</span>") or via an
[entrypoint (Functional API)](https://reference.langchain.com/python/langgraph/func/#langgraph.func.entrypoint "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">entrypoint</span>").

However, for **advanced** use cases, Pregel can be used directly. If you're
not sure whether you need to use Pregel directly, then the answer is probably no
- you should use the Graph API or Functional API instead. These are higher-level
interfaces that will compile down to Pregel under the hood.

Here are some examples to give you a sense of how it works:

Single node application

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

```
{'b': 'foofoo'}
```


Using multiple nodes and multiple output channels

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

```
{'b': 'foofoo', 'c': 'foofoofoofoo'}
```


Using a Topic channel

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

```
{"c": ["foofoo", "foofoofoofoo"]}
```


Using a `BinaryOperatorAggregate` channel

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

```
{'c': 'foofoo | foofoofoofoo'}
```


Introducing a cycle

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

```
{'value': 'aaaaaaaaaaaaaaaa'}
```

| METHOD | DESCRIPTION |
| --- | --- |
| `stream` | Stream graph steps for a single input. |
| `astream` | Asynchronously stream graph steps for a single input. |
| `invoke` | Run the graph with a single input and config. |
| `ainvoke` | Asynchronously run the graph with a single input and config. |
| `get_state` | Get the current state of the graph. |
| `aget_state` | Get the current state of the graph. |
| `get_state_history` | Get the history of the state of the graph. |
| `aget_state_history` | Asynchronously get the history of the state of the graph. |
| `update_state` | Update the state of the graph with the given values, as if they came from |
| `aupdate_state` | Asynchronously update the state of the graph with the given values, as if they came from |
| `bulk_update_state` | Apply updates to the graph state in bulk. Requires a checkpointer to be set. |
| `abulk_update_state` | Asynchronously apply updates to the graph state in bulk. Requires a checkpointer to be set. |
| `get_graph` | Return a drawable representation of the computation graph. |
| `aget_graph` | Return a drawable representation of the computation graph. |
| `get_subgraphs` | Get the subgraphs of the graph. |
| `aget_subgraphs` | Get the subgraphs of the graph. |
| `with_config` | Create a copy of the Pregel object with an updated config. |

### stream [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.stream "Copy anchor link to this section for reference")

```
stream(
    input: InputT | Command | None,
    config: RunnableConfig | None = None,
    *,
    context: ContextT | None = None,
    stream_mode: StreamMode | Sequence[StreamMode] | None = None,
    print_mode: StreamMode | Sequence[StreamMode] = (),
    output_keys: str | Sequence[str] | None = None,
    interrupt_before: All | Sequence[str] | None = None,
    interrupt_after: All | Sequence[str] | None = None,
    durability: Durability | None = None,
    subgraphs: bool = False,
    debug: bool | None = None,
    **kwargs: Unpack[DeprecatedKwargs],
) -> Iterator[dict[str, Any] | Any]
```

Stream graph steps for a single input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the graph.  **TYPE:** `InputT | Command | None` |
| `config` | The configuration to use for the run.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `context` | The static context to use for the run.  Added in version 0.6.0  **TYPE:** `ContextT | None`  **DEFAULT:** `None` |
| `stream_mode` | The mode to stream output, defaults to `self.stream_mode`.  Options are:   * `"values"`: Emit all values in the state after each step, including interrupts.   When used with functional API, values are emitted once at the end of the workflow. * `"updates"`: Emit only the node or task names and updates returned by the nodes or tasks after each step.   If multiple updates are made in the same step (e.g. multiple nodes are run) then those updates are emitted separately. * `"custom"`: Emit custom data from inside nodes or tasks using `StreamWriter`. * `"messages"`: Emit LLM messages token-by-token together with metadata for any LLM invocations inside nodes or tasks.   + Will be emitted as 2-tuples `(LLM token, metadata)`. * `"checkpoints"`: Emit an event when a checkpoint is created, in the same format as returned by `get_state()`. * `"tasks"`: Emit events when tasks start and finish, including their results and errors. * `"debug"`: Emit debug events with as much information as possible for each step.   You can pass a list as the `stream_mode` parameter to stream multiple modes at once. The streamed outputs will be tuples of `(mode, data)`.  See [LangGraph streaming guide](https://docs.langchain.com/oss/python/langgraph/streaming) for more details.  **TYPE:** `StreamMode | Sequence[StreamMode] | None`  **DEFAULT:** `None` |
| `print_mode` | Accepts the same values as `stream_mode`, but only prints the output to the console, for debugging purposes.  Does not affect the output of the graph in any way.  **TYPE:** `StreamMode | Sequence[StreamMode]`  **DEFAULT:** `()` |
| `output_keys` | The keys to stream, defaults to all non-context channels.  **TYPE:** `str | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_before` | Nodes to interrupt before, defaults to all nodes in the graph.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_after` | Nodes to interrupt after, defaults to all nodes in the graph.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `durability` | The durability mode for the graph execution, defaults to `"async"`.  Options are:   * `"sync"`: Changes are persisted synchronously before the next step starts. * `"async"`: Changes are persisted asynchronously while the next step executes. * `"exit"`: Changes are persisted only when the graph exits.  **TYPE:** `Durability | None`  **DEFAULT:** `None` |
| `subgraphs` | Whether to stream events from inside subgraphs, defaults to `False`.  If `True`, the events will be emitted as tuples `(namespace, data)`, or `(namespace, mode, data)` if `stream_mode` is a list, where `namespace` is a tuple with the path to the node where a subgraph is invoked, e.g. `("parent_node:<task_id>", "child_node:<task_id>")`.  See [LangGraph streaming guide](https://docs.langchain.com/oss/python/langgraph/streaming) for more details.  **TYPE:** `bool`  **DEFAULT:** `False` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `dict[str, Any] | Any` | The output of each step in the graph. The output shape depends on the `stream_mode`. |

### astream `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.astream "Copy anchor link to this section for reference")

```
astream(
    input: InputT | Command | None,
    config: RunnableConfig | None = None,
    *,
    context: ContextT | None = None,
    stream_mode: StreamMode | Sequence[StreamMode] | None = None,
    print_mode: StreamMode | Sequence[StreamMode] = (),
    output_keys: str | Sequence[str] | None = None,
    interrupt_before: All | Sequence[str] | None = None,
    interrupt_after: All | Sequence[str] | None = None,
    durability: Durability | None = None,
    subgraphs: bool = False,
    debug: bool | None = None,
    **kwargs: Unpack[DeprecatedKwargs],
) -> AsyncIterator[dict[str, Any] | Any]
```

Asynchronously stream graph steps for a single input.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input to the graph.  **TYPE:** `InputT | Command | None` |
| `config` | The configuration to use for the run.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `context` | The static context to use for the run.  Added in version 0.6.0  **TYPE:** `ContextT | None`  **DEFAULT:** `None` |
| `stream_mode` | The mode to stream output, defaults to `self.stream_mode`.  Options are:   * `"values"`: Emit all values in the state after each step, including interrupts.   When used with functional API, values are emitted once at the end of the workflow. * `"updates"`: Emit only the node or task names and updates returned by the nodes or tasks after each step.   If multiple updates are made in the same step (e.g. multiple nodes are run) then those updates are emitted separately. * `"custom"`: Emit custom data from inside nodes or tasks using `StreamWriter`. * `"messages"`: Emit LLM messages token-by-token together with metadata for any LLM invocations inside nodes or tasks.   + Will be emitted as 2-tuples `(LLM token, metadata)`. * `"checkpoints"`: Emit an event when a checkpoint is created, in the same format as returned by `get_state()`. * `"tasks"`: Emit events when tasks start and finish, including their results and errors. * `"debug"`: Emit debug events with as much information as possible for each step.   You can pass a list as the `stream_mode` parameter to stream multiple modes at once. The streamed outputs will be tuples of `(mode, data)`.  See [LangGraph streaming guide](https://docs.langchain.com/oss/python/langgraph/streaming) for more details.  **TYPE:** `StreamMode | Sequence[StreamMode] | None`  **DEFAULT:** `None` |
| `print_mode` | Accepts the same values as `stream_mode`, but only prints the output to the console, for debugging purposes.  Does not affect the output of the graph in any way.  **TYPE:** `StreamMode | Sequence[StreamMode]`  **DEFAULT:** `()` |
| `output_keys` | The keys to stream, defaults to all non-context channels.  **TYPE:** `str | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_before` | Nodes to interrupt before, defaults to all nodes in the graph.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_after` | Nodes to interrupt after, defaults to all nodes in the graph.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `durability` | The durability mode for the graph execution, defaults to `"async"`.  Options are:   * `"sync"`: Changes are persisted synchronously before the next step starts. * `"async"`: Changes are persisted asynchronously while the next step executes. * `"exit"`: Changes are persisted only when the graph exits.  **TYPE:** `Durability | None`  **DEFAULT:** `None` |
| `subgraphs` | Whether to stream events from inside subgraphs, defaults to `False`.  If `True`, the events will be emitted as tuples `(namespace, data)`, or `(namespace, mode, data)` if `stream_mode` is a list, where `namespace` is a tuple with the path to the node where a subgraph is invoked, e.g. `("parent_node:<task_id>", "child_node:<task_id>")`.  See [LangGraph streaming guide](https://docs.langchain.com/oss/python/langgraph/streaming) for more details.  **TYPE:** `bool`  **DEFAULT:** `False` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[dict[str, Any] | Any]` | The output of each step in the graph. The output shape depends on the `stream_mode`. |

### invoke [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.invoke "Copy anchor link to this section for reference")

```
invoke(
    input: InputT | Command | None,
    config: RunnableConfig | None = None,
    *,
    context: ContextT | None = None,
    stream_mode: StreamMode = "values",
    print_mode: StreamMode | Sequence[StreamMode] = (),
    output_keys: str | Sequence[str] | None = None,
    interrupt_before: All | Sequence[str] | None = None,
    interrupt_after: All | Sequence[str] | None = None,
    durability: Durability | None = None,
    **kwargs: Any,
) -> dict[str, Any] | Any
```

Run the graph with a single input and config.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input data for the graph. It can be a dictionary or any other type.  **TYPE:** `InputT | Command | None` |
| `config` | The configuration for the graph run.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `context` | The static context to use for the run.  Added in version 0.6.0  **TYPE:** `ContextT | None`  **DEFAULT:** `None` |
| `stream_mode` | The stream mode for the graph run.  **TYPE:** `StreamMode`  **DEFAULT:** `'values'` |
| `print_mode` | Accepts the same values as `stream_mode`, but only prints the output to the console, for debugging purposes.  Does not affect the output of the graph in any way.  **TYPE:** `StreamMode | Sequence[StreamMode]`  **DEFAULT:** `()` |
| `output_keys` | The output keys to retrieve from the graph run.  **TYPE:** `str | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_before` | The nodes to interrupt the graph run before.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_after` | The nodes to interrupt the graph run after.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `durability` | The durability mode for the graph execution, defaults to `"async"`.  Options are:   * `"sync"`: Changes are persisted synchronously before the next step starts. * `"async"`: Changes are persisted asynchronously while the next step executes. * `"exit"`: Changes are persisted only when the graph exits.  **TYPE:** `Durability | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the graph run.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any] | Any` | The output of the graph run. If `stream_mode` is `"values"`, it returns the latest output. |
| `dict[str, Any] | Any` | If `stream_mode` is not `"values"`, it returns a list of output chunks. |

### ainvoke `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.ainvoke "Copy anchor link to this section for reference")

```
ainvoke(
    input: InputT | Command | None,
    config: RunnableConfig | None = None,
    *,
    context: ContextT | None = None,
    stream_mode: StreamMode = "values",
    print_mode: StreamMode | Sequence[StreamMode] = (),
    output_keys: str | Sequence[str] | None = None,
    interrupt_before: All | Sequence[str] | None = None,
    interrupt_after: All | Sequence[str] | None = None,
    durability: Durability | None = None,
    **kwargs: Any,
) -> dict[str, Any] | Any
```

Asynchronously run the graph with a single input and config.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `input` | The input data for the graph. It can be a dictionary or any other type.  **TYPE:** `InputT | Command | None` |
| `config` | The configuration for the graph run.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `context` | The static context to use for the run.  Added in version 0.6.0  **TYPE:** `ContextT | None`  **DEFAULT:** `None` |
| `stream_mode` | The stream mode for the graph run.  **TYPE:** `StreamMode`  **DEFAULT:** `'values'` |
| `print_mode` | Accepts the same values as `stream_mode`, but only prints the output to the console, for debugging purposes.  Does not affect the output of the graph in any way.  **TYPE:** `StreamMode | Sequence[StreamMode]`  **DEFAULT:** `()` |
| `output_keys` | The output keys to retrieve from the graph run.  **TYPE:** `str | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_before` | The nodes to interrupt the graph run before.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `interrupt_after` | The nodes to interrupt the graph run after.  **TYPE:** `All | Sequence[str] | None`  **DEFAULT:** `None` |
| `durability` | The durability mode for the graph execution, defaults to `"async"`.  Options are:   * `"sync"`: Changes are persisted synchronously before the next step starts. * `"async"`: Changes are persisted asynchronously while the next step executes. * `"exit"`: Changes are persisted only when the graph exits.  **TYPE:** `Durability | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments to pass to the graph run.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `dict[str, Any] | Any` | The output of the graph run. If `stream_mode` is `"values"`, it returns the latest output. |
| `dict[str, Any] | Any` | If `stream_mode` is not `"values"`, it returns a list of output chunks. |

### get\_state [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_state "Copy anchor link to this section for reference")

```
get_state(config: RunnableConfig, *, subgraphs: bool = False) -> StateSnapshot
```

Get the current state of the graph.

### aget\_state `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_state "Copy anchor link to this section for reference")

```
aget_state(config: RunnableConfig, *, subgraphs: bool = False) -> StateSnapshot
```

Get the current state of the graph.

### get\_state\_history [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_state_history "Copy anchor link to this section for reference")

```
get_state_history(
    config: RunnableConfig,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[StateSnapshot]
```

Get the history of the state of the graph.

### aget\_state\_history `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_state_history "Copy anchor link to this section for reference")

```
aget_state_history(
    config: RunnableConfig,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[StateSnapshot]
```

Asynchronously get the history of the state of the graph.

### update\_state [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.update_state "Copy anchor link to this section for reference")

```
update_state(
    config: RunnableConfig,
    values: dict[str, Any] | Any | None,
    as_node: str | None = None,
    task_id: str | None = None,
) -> RunnableConfig
```

Update the state of the graph with the given values, as if they came from
node `as_node`. If `as_node` is not provided, it will be set to the last node
that updated the state, if not ambiguous.

### aupdate\_state `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aupdate_state "Copy anchor link to this section for reference")

```
aupdate_state(
    config: RunnableConfig,
    values: dict[str, Any] | Any,
    as_node: str | None = None,
    task_id: str | None = None,
) -> RunnableConfig
```

Asynchronously update the state of the graph with the given values, as if they came from
node `as_node`. If `as_node` is not provided, it will be set to the last node
that updated the state, if not ambiguous.

### bulk\_update\_state [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.bulk_update_state "Copy anchor link to this section for reference")

```
bulk_update_state(
    config: RunnableConfig, supersteps: Sequence[Sequence[StateUpdate]]
) -> RunnableConfig
```

Apply updates to the graph state in bulk. Requires a checkpointer to be set.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to apply the updates to.  **TYPE:** `RunnableConfig` |
| `supersteps` | A list of supersteps, each including a list of updates to apply sequentially to a graph state.  Each update is a tuple of the form `(values, as_node, task_id)` where `task_id` is optional.  **TYPE:** `Sequence[Sequence[StateUpdate]]` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If no checkpointer is set or no updates are provided. |
| `InvalidUpdateError` | If an invalid update is provided. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | The updated config.  **TYPE:** `RunnableConfig` |

### abulk\_update\_state `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.abulk_update_state "Copy anchor link to this section for reference")

```
abulk_update_state(
    config: RunnableConfig, supersteps: Sequence[Sequence[StateUpdate]]
) -> RunnableConfig
```

Asynchronously apply updates to the graph state in bulk. Requires a checkpointer to be set.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to apply the updates to.  **TYPE:** `RunnableConfig` |
| `supersteps` | A list of supersteps, each including a list of updates to apply sequentially to a graph state.  Each update is a tuple of the form `(values, as_node, task_id)` where `task_id` is optional.  **TYPE:** `Sequence[Sequence[StateUpdate]]` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If no checkpointer is set or no updates are provided. |
| `InvalidUpdateError` | If an invalid update is provided. |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | The updated config.  **TYPE:** `RunnableConfig` |

### get\_graph [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_graph "Copy anchor link to this section for reference")

```
get_graph(config: RunnableConfig | None = None, *, xray: int | bool = False) -> Graph
```

Return a drawable representation of the computation graph.

### aget\_graph `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_graph "Copy anchor link to this section for reference")

```
aget_graph(config: RunnableConfig | None = None, *, xray: int | bool = False) -> Graph
```

Return a drawable representation of the computation graph.

### get\_subgraphs [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.get_subgraphs "Copy anchor link to this section for reference")

```
get_subgraphs(
    *, namespace: str | None = None, recurse: bool = False
) -> Iterator[tuple[str, PregelProtocol]]
```

Get the subgraphs of the graph.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | The namespace to filter the subgraphs by.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `recurse` | Whether to recurse into the subgraphs. If `False`, only the immediate subgraphs will be returned.  **TYPE:** `bool`  **DEFAULT:** `False` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Iterator[tuple[str, PregelProtocol]]` | An iterator of the `(namespace, subgraph)` pairs. |

### aget\_subgraphs `async` [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.aget_subgraphs "Copy anchor link to this section for reference")

```
aget_subgraphs(
    *, namespace: str | None = None, recurse: bool = False
) -> AsyncIterator[tuple[str, PregelProtocol]]
```

Get the subgraphs of the graph.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | The namespace to filter the subgraphs by.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `recurse` | Whether to recurse into the subgraphs. If `False`, only the immediate subgraphs will be returned.  **TYPE:** `bool`  **DEFAULT:** `False` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[tuple[str, PregelProtocol]]` | An iterator of the `(namespace, subgraph)` pairs. |

### with\_config [¶](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel.with_config "Copy anchor link to this section for reference")

```
with_config(config: RunnableConfig | None = None, **kwargs: Any) -> Self
```

Create a copy of the Pregel object with an updated config.

Back to top