Python[langgraph](/python/langgraph)[channels](/python/langgraph/channels)[binop](/python/langgraph/channels/binop)BinaryOperatorAggregate

Classv1.2.7 (latest)●Since v0.1

# BinaryOperatorAggregate

Stores the result of applying a binary operator to the current value and each new value.

```
import operator

total = Channels.BinaryOperatorAggregate(int, operator.add)
```

Copy

Copy

```
BinaryOperatorAggregate(
  self,
  typ: type[Value],
  operator: Callable[[Value, Value], Value]
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
| typ | [type](https://docs.python.org/3/library/functions.html#type)[[Value](/python/langgraph/channels/base/Value)] |
| operator | [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[Value](/python/langgraph/channels/base/Value), [Value](/python/langgraph/channels/base/Value)], [Value](/python/langgraph/channels/base/Value)] |

## Attributes

[attribute

operator: operator](/python/langgraph/channels/binop/BinaryOperatorAggregate/operator)[attribute

value](/python/langgraph/channels/binop/BinaryOperatorAggregate/value)[attribute

ValueType: type[Value]

The type of the value stored in the channel.](/python/langgraph/channels/binop/BinaryOperatorAggregate/ValueType)[attribute

UpdateType: type[Value]

The type of the update received by the channel.](/python/langgraph/channels/binop/BinaryOperatorAggregate/UpdateType)

## Methods

[method

copy

Return a copy of the channel.](/python/langgraph/channels/binop/BinaryOperatorAggregate/copy)[method

from\_checkpoint](/python/langgraph/channels/binop/BinaryOperatorAggregate/from_checkpoint)[method

update](/python/langgraph/channels/binop/BinaryOperatorAggregate/update)[method

get](/python/langgraph/channels/binop/BinaryOperatorAggregate/get)[method

is\_available](/python/langgraph/channels/binop/BinaryOperatorAggregate/is_available)[method

checkpoint](/python/langgraph/channels/binop/BinaryOperatorAggregate/checkpoint)

## Inherited from[BaseChannel](/python/langgraph/channels/base/BaseChannel)

### Attributes

[Atyp: typ](/python/langgraph/channels/base/BaseChannel/typ)[Akey: key](/python/langgraph/channels/base/BaseChannel/key)

### Methods

[Mconsume

—

Notify the channel that a subscribed task ran.](/python/langgraph/channels/base/BaseChannel/consume)[Mfinish

—

Notify the channel that the Pregel run is finishing.](/python/langgraph/channels/base/BaseChannel/finish)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/5931a5f0b313feff24e2516a586c55601b868ac1/libs/langgraph/langgraph/channels/binop.py#L65)

Version History

Copy page

### On This Page

Related Documentation

Constructors

C\_\_init\_\_

Attributes

AoperatorAvalueAValueTypeAUpdateType

Methods

McopyMfrom\_checkpointMupdateMgetMis\_availableMcheckpoint

from BaseChannel

AAttributes

AtypAkey

MMethods

MconsumeMfinish