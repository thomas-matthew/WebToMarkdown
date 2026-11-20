Classv1.2.23 (latest)●Since v1.2

# BinaryOperatorAggregate

Stores the result of applying a binary operator to the current value and each new value.

```
import operator

total = Channels.BinaryOperatorAggregate(int, operator.add)
```

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
| typ | [type](https://docs.python.org/3/library/functions.html#type)[[Value](https://reference.langchain.com/python/langgraph/channels/base/Value)] |
| operator | [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[Value](https://reference.langchain.com/python/langgraph/channels/base/Value), [Value](https://reference.langchain.com/python/langgraph/channels/base/Value)], [Value](https://reference.langchain.com/python/langgraph/channels/base/Value)] |

## Attributes

attribute

operator: operator

attribute

value

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

from\_checkpoint

method

update

method

get

method

is\_available

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

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/channels/binop.py#L66)

Version History
