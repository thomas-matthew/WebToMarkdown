Python[langgraph](/python/langgraph)[channels](/python/langgraph/channels)[base](/python/langgraph/channels/base)BaseChannel

Classv1.2.0 (latest)●Since v0.1

# BaseChannel

Base class for all channels.

Copy

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

[attribute

typ: typ](/python/langgraph/channels/base/BaseChannel/typ)[attribute

key: key](/python/langgraph/channels/base/BaseChannel/key)[attribute

ValueType: Any

The type of the value stored in the channel.](/python/langgraph/channels/base/BaseChannel/ValueType)[attribute

UpdateType: Any

The type of the update received by the channel.](/python/langgraph/channels/base/BaseChannel/UpdateType)

## Methods

[method

copy

Return a copy of the channel.

By default, delegates to `checkpoint()` and `from_checkpoint()`.

Subclasses can override this method with a more efficient implementation.](/python/langgraph/channels/base/BaseChannel/copy)[method

checkpoint

Return a serializable representation of the channel's current state.

Raises `EmptyChannelError` if the channel is empty (never updated yet),
or doesn't support checkpoints.](/python/langgraph/channels/base/BaseChannel/checkpoint)[method

from\_checkpoint

Return a new identical channel, optionally initialized from a checkpoint.

If the checkpoint contains complex data structures, they should be copied.](/python/langgraph/channels/base/BaseChannel/from_checkpoint)[method

get

Return the current value of the channel.

Raises `EmptyChannelError` if the channel is empty (never updated yet).](/python/langgraph/channels/base/BaseChannel/get)[method

is\_available

Return `True` if the channel is available (not empty), `False` otherwise.

Subclasses should override this method to provide a more efficient
implementation than calling `get()` and catching `EmptyChannelError`.](/python/langgraph/channels/base/BaseChannel/is_available)[method

update

Update the channel's value with the given sequence of updates.
The order of the updates in the sequence is arbitrary.
This method is called by Pregel for all channels at the end of each step.

If there are no updates, it is called with an empty sequence.

Raises `InvalidUpdateError` if the sequence of updates is invalid.

Returns `True` if the channel was updated, `False` otherwise.](/python/langgraph/channels/base/BaseChannel/update)[method

consume

Notify the channel that a subscribed task ran.

By default, no-op.

A channel can use this method to modify its state, preventing the value from being consumed again.

Returns `True` if the channel was updated, `False` otherwise.](/python/langgraph/channels/base/BaseChannel/consume)[method

finish

Notify the channel that the Pregel run is finishing.

By default, no-op.

A channel can use this method to modify its state, preventing finish.

Returns `True` if the channel was updated, `False` otherwise.](/python/langgraph/channels/base/BaseChannel/finish)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/channels/base.py#L19)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Attributes

AtypAkeyAValueTypeAUpdateType

Methods

McopyMcheckpointMfrom\_checkpointMgetMis\_availableMupdateMconsumeMfinish