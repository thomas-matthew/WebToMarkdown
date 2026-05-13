Python[langgraph](/python/langgraph)[channels](/python/langgraph/channels)[ephemeral\_value](/python/langgraph/channels/ephemeral_value)EphemeralValue

Classv1.2.0 (latest)●Since v0.1

# EphemeralValue

Stores the value received in the step immediately preceding, clears after.

Copy

```
EphemeralValue(
    self,
    typ: Any,
    guard: bool = True,
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
| guard | [bool](https://docs.python.org/3/library/functions.html#bool) |

## Attributes

[attribute

value: Value | Any](/python/langgraph/channels/ephemeral_value/EphemeralValue/value)[attribute

guard: bool](/python/langgraph/channels/ephemeral_value/EphemeralValue/guard)[attribute

ValueType: type[Value]

The type of the value stored in the channel.](/python/langgraph/channels/ephemeral_value/EphemeralValue/ValueType)[attribute

UpdateType: type[Value]

The type of the update received by the channel.](/python/langgraph/channels/ephemeral_value/EphemeralValue/UpdateType)

## Methods

[method

copy

Return a copy of the channel.](/python/langgraph/channels/ephemeral_value/EphemeralValue/copy)[method

from\_checkpoint](/python/langgraph/channels/ephemeral_value/EphemeralValue/from_checkpoint)[method

update](/python/langgraph/channels/ephemeral_value/EphemeralValue/update)[method

get](/python/langgraph/channels/ephemeral_value/EphemeralValue/get)[method

is\_available](/python/langgraph/channels/ephemeral_value/EphemeralValue/is_available)[method

checkpoint](/python/langgraph/channels/ephemeral_value/EphemeralValue/checkpoint)

## Inherited from[BaseChannel](/python/langgraph/channels/base/BaseChannel)

### Attributes

[Atyp: typ](/python/langgraph/channels/base/BaseChannel/typ)[Akey: key](/python/langgraph/channels/base/BaseChannel/key)

### Methods

[Mconsume

—

Notify the channel that a subscribed task ran.](/python/langgraph/channels/base/BaseChannel/consume)[Mfinish

—

Notify the channel that the Pregel run is finishing.](/python/langgraph/channels/base/BaseChannel/finish)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/076e2a3627206f5a1aef573aaca4a01e5af897ca/libs/langgraph/langgraph/channels/ephemeral_value.py#L15)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Attributes

AvalueAguardAValueTypeAUpdateType

Methods

McopyMfrom\_checkpointMupdateMgetMis\_availableMcheckpoint

from BaseChannel

AAttributes

AtypAkey

MMethods

MconsumeMfinish