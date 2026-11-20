Classv1.2.23 (latest)●Since v1.2

# BaseChannel

Base class for all channels.

```
BaseChannel(
    self,
    typ: Any,
    key: str = '',
)
```

## Bases

`Generic[Value, Update, Checkpoint]``ABC`

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| typ | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |
| key | [str](https://docs.python.org/3/library/stdtypes.html#str) |

## Attributes

attribute

typ: typ

attribute

key: key

attribute

ValueType: Any

The type of the value stored in the channel.

attribute

UpdateType: Any

The type of the update received by the channel.

## Methods

method

copy

Return a copy of the channel.

By default, delegates to `checkpoint()` and `from_checkpoint()`.

Subclasses can override this method with a more efficient implementation.

method

checkpoint

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.

method

from\_checkpoint

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.

method

get

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).

method

is\_available

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.

method

update

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.

method

consume

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.

method

finish

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/channels/base.py#L19)

Version History
