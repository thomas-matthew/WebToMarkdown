Classv1.2.24 (latest)●Since v1.2

# AnyValue

Stores the last value received, assumes that if multiple values are
received, they are all equal.

```
AnyValue(
    self,
    typ: Any,
    key: str = '',
)
```

## Bases

`Generic[Value]``BaseChannel[Value, Value, Value]`

## Constructors

constructor

__init__

| Name | Type |
| --- | --- |
| typ | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |
| key | [str](https://docs.python.org/3/library/stdtypes.html#str) |

## Attributes

attribute

value: Value | Any

attribute

ValueType: type[Value]

The type of the value stored in the channel.

attribute

UpdateType: type[Value]

The type of the update received by the channel.

## Methods

method

copy

Return a copy of the channel.

method

from_checkpoint

method

update

method

get

method

is_available

method

checkpoint

## Inherited from[BaseChannel](https://reference.langchain.com/python/langgraph/channels/base/BaseChannel)

### Attributes

[Atyp: typ](https://reference.langchain.com/python/langgraph/channels/base/BaseChannel/typ)[Akey: key](https://reference.langchain.com/python/langgraph/channels/base/BaseChannel/key)

### Methods

Mconsume

—

Notify the channel that a subscribed task ran.

Mfinish

—

Notify the channel that the Pregel run is finishing.

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/channels/any_value.py#L15)

Version History
