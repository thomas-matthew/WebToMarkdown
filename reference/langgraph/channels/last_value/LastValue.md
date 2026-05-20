Python[langgraph](/python/langgraph)[channels](/python/langgraph/channels)[last\_value](/python/langgraph/channels/last_value)LastValue

Classv1.2.0 (latest)●Since v0.1

# LastValue

Stores the last value received, can receive at most one value per step.

Copy

```
LastValue(
    self,
    typ: Any,
    key: str = '',
)
```

## Bases

`Generic[Value]``BaseChannel[Value, Value, Value]`

## Used in Docs

* [LangGraph runtime](https://docs.langchain.com/oss/python/langgraph/pregel)

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| typ | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |
| key | [str](https://docs.python.org/3/library/stdtypes.html#str) |

## Attributes

[attribute

value: Value | Any](/python/langgraph/channels/last_value/LastValue/value)[attribute

ValueType: type[Value]

The type of the value stored in the channel.](/python/langgraph/channels/last_value/LastValue/ValueType)[attribute

UpdateType: type[Value]

The type of the update received by the channel.](/python/langgraph/channels/last_value/LastValue/UpdateType)

## Methods

[method

copy

Return a copy of the channel.](/python/langgraph/channels/last_value/LastValue/copy)[method

from\_checkpoint](/python/langgraph/channels/last_value/LastValue/from_checkpoint)[method

update](/python/langgraph/channels/last_value/LastValue/update)[method

get](/python/langgraph/channels/last_value/LastValue/get)[method

is\_available](/python/langgraph/channels/last_value/LastValue/is_available)[method

checkpoint](/python/langgraph/channels/last_value/LastValue/checkpoint)

## Inherited from[BaseChannel](/python/langgraph/channels/base/BaseChannel)

### Attributes

[Atyp: typ](/python/langgraph/channels/base/BaseChannel/typ)[Akey: key](/python/langgraph/channels/base/BaseChannel/key)

### Methods

[Mconsume

—

Notify the channel that a subscribed task ran.](/python/langgraph/channels/base/BaseChannel/consume)[Mfinish

—

Notify the channel that the Pregel run is finishing.](/python/langgraph/channels/base/BaseChannel/finish)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/channels/last_value.py#L20)

Version History

Copy page

### On This Page

Related Documentation

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