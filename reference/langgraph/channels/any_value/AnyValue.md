Python[langgraph](/python/langgraph)[channels](/python/langgraph/channels)[any\_value](/python/langgraph/channels/any_value)AnyValue

Classv1.2.0 (latest)●Since v0.1

# AnyValue

Stores the last value received, assumes that if multiple values are
received, they are all equal.

Copy

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

\_\_init\_\_

| Name | Type |
| --- | --- |
| typ | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |
| key | [str](https://docs.python.org/3/library/stdtypes.html#str) |

## Attributes

[attribute

value: Value | Any](/python/langgraph/channels/any_value/AnyValue/value)[attribute

ValueType: type[Value]

The type of the value stored in the channel.](/python/langgraph/channels/any_value/AnyValue/ValueType)[attribute

UpdateType: type[Value]

The type of the update received by the channel.](/python/langgraph/channels/any_value/AnyValue/UpdateType)

## Methods

[method

copy

Return a copy of the channel.](/python/langgraph/channels/any_value/AnyValue/copy)[method

from\_checkpoint](/python/langgraph/channels/any_value/AnyValue/from_checkpoint)[method

update](/python/langgraph/channels/any_value/AnyValue/update)[method

get](/python/langgraph/channels/any_value/AnyValue/get)[method

is\_available](/python/langgraph/channels/any_value/AnyValue/is_available)[method

checkpoint](/python/langgraph/channels/any_value/AnyValue/checkpoint)

## Inherited from[BaseChannel](/python/langgraph/channels/base/BaseChannel)

### Attributes

[Atyp: typ](/python/langgraph/channels/base/BaseChannel/typ)[Akey: key](/python/langgraph/channels/base/BaseChannel/key)

### Methods

[Mconsume

—

Notify the channel that a subscribed task ran.](/python/langgraph/channels/base/BaseChannel/consume)[Mfinish

—

Notify the channel that the Pregel run is finishing.](/python/langgraph/channels/base/BaseChannel/finish)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/076e2a3627206f5a1aef573aaca4a01e5af897ca/libs/langgraph/langgraph/channels/any_value.py#L15)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Attributes

AvalueAValueTypeAUpdateType

Methods

McopyMfrom\_checkpointMupdateMgetMis\_availableMcheckpoint

from BaseChannel

AAttributes

AtypAkey

MMethods

MconsumeMfinish