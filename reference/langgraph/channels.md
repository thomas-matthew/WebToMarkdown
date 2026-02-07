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
    - [Config](https://reference.langchain.com/python/langgraph/config/)
    - [Errors](https://reference.langchain.com/python/langgraph/errors/)
    - [Constants](https://reference.langchain.com/python/langgraph/constants/)
    - Channels

      [Channels](https://reference.langchain.com/python/langgraph/channels/)



      Table of contents
      * [base](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base)

        + [BaseChannel](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel)

          - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.ValueType)
          - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.UpdateType)
          - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.copy)
          - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.checkpoint)
          - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.from_checkpoint)
          - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.get)
          - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.is_available)
          - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.update)
          - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.consume)
          - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.finish)
      * [channels](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels)

        + [Topic](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic)

          - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.ValueType)
          - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.UpdateType)
          - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.consume)
          - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.finish)
          - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.copy)
          - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.checkpoint)
          - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.from_checkpoint)
          - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.update)
          - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.get)
          - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.is_available)
        + [LastValue](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue)

          - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.ValueType)
          - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.UpdateType)
          - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.consume)
          - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.finish)
          - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.copy)
          - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.from_checkpoint)
          - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.update)
          - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.get)
          - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.is_available)
          - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.checkpoint)
        + [EphemeralValue](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue)

          - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.ValueType)
          - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.UpdateType)
          - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.consume)
          - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.finish)
          - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.copy)
          - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.from_checkpoint)
          - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.update)
          - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.get)
          - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.is_available)
          - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.checkpoint)
        + [BinaryOperatorAggregate](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate)

          - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.ValueType)
          - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.UpdateType)
          - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.consume)
          - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.finish)
          - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.copy)
          - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.from_checkpoint)
          - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.update)
          - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.get)
          - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.is_available)
          - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.checkpoint)
        + [AnyValue](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue)

          - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.ValueType)
          - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.UpdateType)
          - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.consume)
          - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.finish)
          - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.copy)
          - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.from_checkpoint)
          - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.update)
          - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.get)
          - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.is_available)
          - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.checkpoint)
  + Prebuilt




    Prebuilt
    - [Agents](https://reference.langchain.com/python/langgraph/agents/)
    - [Supervisor](https://reference.langchain.com/python/langgraph/supervisor/)
    - [Swarm](https://reference.langchain.com/python/langgraph/swarm/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [base](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base)

  + [BaseChannel](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel)

    - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.ValueType)
    - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.UpdateType)
    - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.copy)
    - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.checkpoint)
    - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.from_checkpoint)
    - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.get)
    - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.is_available)
    - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.update)
    - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.consume)
    - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.finish)
* [channels](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels)

  + [Topic](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic)

    - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.ValueType)
    - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.UpdateType)
    - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.consume)
    - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.finish)
    - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.copy)
    - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.checkpoint)
    - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.from_checkpoint)
    - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.update)
    - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.get)
    - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.is_available)
  + [LastValue](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue)

    - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.ValueType)
    - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.UpdateType)
    - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.consume)
    - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.finish)
    - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.copy)
    - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.from_checkpoint)
    - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.update)
    - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.get)
    - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.is_available)
    - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.checkpoint)
  + [EphemeralValue](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue)

    - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.ValueType)
    - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.UpdateType)
    - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.consume)
    - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.finish)
    - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.copy)
    - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.from_checkpoint)
    - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.update)
    - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.get)
    - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.is_available)
    - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.checkpoint)
  + [BinaryOperatorAggregate](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate)

    - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.ValueType)
    - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.UpdateType)
    - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.consume)
    - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.finish)
    - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.copy)
    - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.from_checkpoint)
    - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.update)
    - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.get)
    - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.is_available)
    - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.checkpoint)
  + [AnyValue](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue)

    - [ValueType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.ValueType)
    - [UpdateType](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.UpdateType)
    - [consume](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.consume)
    - [finish](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.finish)
    - [copy](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.copy)
    - [from\_checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.from_checkpoint)
    - [update](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.update)
    - [get](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.get)
    - [is\_available](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.is_available)
    - [checkpoint](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.checkpoint)

# Channels

## base [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base "Copy anchor link to this section for reference")

### BaseChannel [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel "Copy anchor link to this section for reference")

Bases: `Generic[Value, Update, Checkpoint]`, `ABC`

Base class for all channels.

| METHOD | DESCRIPTION |
| --- | --- |
| `copy` | Return a copy of the channel. |
| `checkpoint` | Return a serializable representation of the channel's current state. |
| `from_checkpoint` | Return a new identical channel, optionally initialized from a checkpoint. |
| `get` | Return the current value of the channel. |
| `is_available` | Return `True` if the channel is available (not empty), `False` otherwise. |
| `update` | Update the channel's value with the given sequence of updates. |
| `consume` | Notify the channel that a subscribed task ran. |
| `finish` | Notify the channel that the Pregel run is finishing. |

#### ValueType `abstractmethod` `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.ValueType "Copy anchor link to this section for reference")

```
ValueType: Any
```

The type of the value stored in the channel.

#### UpdateType `abstractmethod` `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.UpdateType "Copy anchor link to this section for reference")

```
UpdateType: Any
```

The type of the update received by the channel.

#### copy [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the channel.

By default, delegates to `checkpoint()` and `from_checkpoint()`.

Subclasses can override this method with a more efficient implementation.

#### checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.checkpoint "Copy anchor link to this section for reference")

```
checkpoint() -> Checkpoint | Any
```

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

#### from\_checkpoint `abstractmethod` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.from_checkpoint "Copy anchor link to this section for reference")

```
from_checkpoint(checkpoint: Checkpoint | Any) -> Self
```

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

#### get `abstractmethod` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.get "Copy anchor link to this section for reference")

```
get() -> Value
```

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

#### is\_available [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.is_available "Copy anchor link to this section for reference")

```
is_available() -> bool
```

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

#### update `abstractmethod` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.update "Copy anchor link to this section for reference")

```
update(values: Sequence[Update]) -> bool
```

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

#### consume [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.consume "Copy anchor link to this section for reference")

```
consume() -> bool
```

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

#### finish [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.base.BaseChannel.finish "Copy anchor link to this section for reference")

```
finish() -> bool
```

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

## channels [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels "Copy anchor link to this section for reference")

### Topic [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic "Copy anchor link to this section for reference")

Bases: `Generic[Value]`, `BaseChannel[Sequence[Value], Value | list[Value], list[Value]]`

A configurable PubSub Topic.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `typ` | The type of the value stored in the channel.  **TYPE:** `type[Value]` |
| `accumulate` | Whether to accumulate values across steps. If `False`, the channel will be emptied after each step.  **TYPE:** `bool`  **DEFAULT:** `False` |

| METHOD | DESCRIPTION |
| --- | --- |
| `consume` | Notify the channel that a subscribed task ran. |
| `finish` | Notify the channel that the Pregel run is finishing. |
| `copy` | Return a copy of the channel. |
| `checkpoint` | Return a serializable representation of the channel's current state. |
| `from_checkpoint` | Return a new identical channel, optionally initialized from a checkpoint. |
| `update` | Update the channel's value with the given sequence of updates. |
| `get` | Return the current value of the channel. |
| `is_available` | Return `True` if the channel is available (not empty), `False` otherwise. |

#### ValueType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.ValueType "Copy anchor link to this section for reference")

```
ValueType: Any
```

The type of the value stored in the channel.

#### UpdateType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.UpdateType "Copy anchor link to this section for reference")

```
UpdateType: Any
```

The type of the update received by the channel.

#### consume [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.consume "Copy anchor link to this section for reference")

```
consume() -> bool
```

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

#### finish [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.finish "Copy anchor link to this section for reference")

```
finish() -> bool
```

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

#### copy [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the channel.

#### checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.checkpoint "Copy anchor link to this section for reference")

```
checkpoint() -> list[Value]
```

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

#### from\_checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.from_checkpoint "Copy anchor link to this section for reference")

```
from_checkpoint(checkpoint: list[Value]) -> Self
```

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

#### update [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.update "Copy anchor link to this section for reference")

```
update(values: Sequence[Value | list[Value]]) -> bool
```

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

#### get [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.get "Copy anchor link to this section for reference")

```
get() -> Sequence[Value]
```

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

#### is\_available [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.Topic.is_available "Copy anchor link to this section for reference")

```
is_available() -> bool
```

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

### LastValue [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue "Copy anchor link to this section for reference")

Bases: `Generic[Value]`, `BaseChannel[Value, Value, Value]`

Stores the last value received, can receive at most one value per step.

| METHOD | DESCRIPTION |
| --- | --- |
| `consume` | Notify the channel that a subscribed task ran. |
| `finish` | Notify the channel that the Pregel run is finishing. |
| `copy` | Return a copy of the channel. |
| `from_checkpoint` | Return a new identical channel, optionally initialized from a checkpoint. |
| `update` | Update the channel's value with the given sequence of updates. |
| `get` | Return the current value of the channel. |
| `is_available` | Return `True` if the channel is available (not empty), `False` otherwise. |
| `checkpoint` | Return a serializable representation of the channel's current state. |

#### ValueType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.ValueType "Copy anchor link to this section for reference")

```
ValueType: type[Value]
```

The type of the value stored in the channel.

#### UpdateType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.UpdateType "Copy anchor link to this section for reference")

```
UpdateType: type[Value]
```

The type of the update received by the channel.

#### consume [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.consume "Copy anchor link to this section for reference")

```
consume() -> bool
```

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

#### finish [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.finish "Copy anchor link to this section for reference")

```
finish() -> bool
```

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

#### copy [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the channel.

#### from\_checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.from_checkpoint "Copy anchor link to this section for reference")

```
from_checkpoint(checkpoint: Value) -> Self
```

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

#### update [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.update "Copy anchor link to this section for reference")

```
update(values: Sequence[Value]) -> bool
```

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

#### get [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.get "Copy anchor link to this section for reference")

```
get() -> Value
```

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

#### is\_available [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.is_available "Copy anchor link to this section for reference")

```
is_available() -> bool
```

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

#### checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.LastValue.checkpoint "Copy anchor link to this section for reference")

```
checkpoint() -> Value
```

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

### EphemeralValue [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue "Copy anchor link to this section for reference")

Bases: `Generic[Value]`, `BaseChannel[Value, Value, Value]`

Stores the value received in the step immediately preceding, clears after.

| METHOD | DESCRIPTION |
| --- | --- |
| `consume` | Notify the channel that a subscribed task ran. |
| `finish` | Notify the channel that the Pregel run is finishing. |
| `copy` | Return a copy of the channel. |
| `from_checkpoint` | Return a new identical channel, optionally initialized from a checkpoint. |
| `update` | Update the channel's value with the given sequence of updates. |
| `get` | Return the current value of the channel. |
| `is_available` | Return `True` if the channel is available (not empty), `False` otherwise. |
| `checkpoint` | Return a serializable representation of the channel's current state. |

#### ValueType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.ValueType "Copy anchor link to this section for reference")

```
ValueType: type[Value]
```

The type of the value stored in the channel.

#### UpdateType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.UpdateType "Copy anchor link to this section for reference")

```
UpdateType: type[Value]
```

The type of the update received by the channel.

#### consume [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.consume "Copy anchor link to this section for reference")

```
consume() -> bool
```

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

#### finish [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.finish "Copy anchor link to this section for reference")

```
finish() -> bool
```

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

#### copy [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the channel.

#### from\_checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.from_checkpoint "Copy anchor link to this section for reference")

```
from_checkpoint(checkpoint: Value) -> Self
```

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

#### update [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.update "Copy anchor link to this section for reference")

```
update(values: Sequence[Value]) -> bool
```

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

#### get [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.get "Copy anchor link to this section for reference")

```
get() -> Value
```

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

#### is\_available [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.is_available "Copy anchor link to this section for reference")

```
is_available() -> bool
```

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

#### checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.EphemeralValue.checkpoint "Copy anchor link to this section for reference")

```
checkpoint() -> Value
```

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

### BinaryOperatorAggregate [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate "Copy anchor link to this section for reference")

Bases: `Generic[Value]`, `BaseChannel[Value, Value, Value]`

Stores the result of applying a binary operator to the current value and each new value.

```
import operator

total = Channels.BinaryOperatorAggregate(int, operator.add)
```

| METHOD | DESCRIPTION |
| --- | --- |
| `consume` | Notify the channel that a subscribed task ran. |
| `finish` | Notify the channel that the Pregel run is finishing. |
| `copy` | Return a copy of the channel. |
| `from_checkpoint` | Return a new identical channel, optionally initialized from a checkpoint. |
| `update` | Update the channel's value with the given sequence of updates. |
| `get` | Return the current value of the channel. |
| `is_available` | Return `True` if the channel is available (not empty), `False` otherwise. |
| `checkpoint` | Return a serializable representation of the channel's current state. |

#### ValueType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.ValueType "Copy anchor link to this section for reference")

```
ValueType: type[Value]
```

The type of the value stored in the channel.

#### UpdateType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.UpdateType "Copy anchor link to this section for reference")

```
UpdateType: type[Value]
```

The type of the update received by the channel.

#### consume [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.consume "Copy anchor link to this section for reference")

```
consume() -> bool
```

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

#### finish [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.finish "Copy anchor link to this section for reference")

```
finish() -> bool
```

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

#### copy [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the channel.

#### from\_checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.from_checkpoint "Copy anchor link to this section for reference")

```
from_checkpoint(checkpoint: Value) -> Self
```

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

#### update [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.update "Copy anchor link to this section for reference")

```
update(values: Sequence[Value]) -> bool
```

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

#### get [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.get "Copy anchor link to this section for reference")

```
get() -> Value
```

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

#### is\_available [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.is_available "Copy anchor link to this section for reference")

```
is_available() -> bool
```

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

#### checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.BinaryOperatorAggregate.checkpoint "Copy anchor link to this section for reference")

```
checkpoint() -> Value
```

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

### AnyValue [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue "Copy anchor link to this section for reference")

Bases: `Generic[Value]`, `BaseChannel[Value, Value, Value]`

Stores the last value received, assumes that if multiple values are
received, they are all equal.

| METHOD | DESCRIPTION |
| --- | --- |
| `consume` | Notify the channel that a subscribed task ran. |
| `finish` | Notify the channel that the Pregel run is finishing. |
| `copy` | Return a copy of the channel. |
| `from_checkpoint` | Return a new identical channel, optionally initialized from a checkpoint. |
| `update` | Update the channel's value with the given sequence of updates. |
| `get` | Return the current value of the channel. |
| `is_available` | Return `True` if the channel is available (not empty), `False` otherwise. |
| `checkpoint` | Return a serializable representation of the channel's current state. |

#### ValueType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.ValueType "Copy anchor link to this section for reference")

```
ValueType: type[Value]
```

The type of the value stored in the channel.

#### UpdateType `property` [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.UpdateType "Copy anchor link to this section for reference")

```
UpdateType: type[Value]
```

The type of the update received by the channel.

#### consume [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.consume "Copy anchor link to this section for reference")

```
consume() -> bool
```

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

#### finish [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.finish "Copy anchor link to this section for reference")

```
finish() -> bool
```

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

#### copy [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the channel.

#### from\_checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.from_checkpoint "Copy anchor link to this section for reference")

```
from_checkpoint(checkpoint: Value) -> Self
```

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

#### update [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.update "Copy anchor link to this section for reference")

```
update(values: Sequence[Value]) -> bool
```

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

#### get [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.get "Copy anchor link to this section for reference")

```
get() -> Value
```

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

#### is\_available [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.is_available "Copy anchor link to this section for reference")

```
is_available() -> bool
```

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

#### checkpoint [¶](https://reference.langchain.com/python/langgraph/channels/#langgraph.channels.AnyValue.checkpoint "Copy anchor link to this section for reference")

```
checkpoint() -> Value
```

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

Back to top