Classv1.2.23 (latest)●Since v1.2

# Topic

A configurable PubSub Topic.

```
Topic(
    self,
    typ: type[Value],
    accumulate: bool = False,
)
```

## Bases

`Generic[Value]``BaseChannel[Sequence[Value], Value | list[Value], list[Value]]`

## Used in Docs

* [LangGraph runtime](https://docs.langchain.com/oss/python/langgraph/pregel)

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `typ`\* | `type[Value]` | The type of the value stored in the channel. |
| `accumulate` | `bool` | Default:`False`  Whether to accumulate values across steps. If `False`, the channel will be emptied after each step. |

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| typ | [type](https://docs.python.org/3/library/functions.html#type)[[Value](https://reference.langchain.com/python/langgraph/channels/base/Value)] |
| accumulate | [bool](https://docs.python.org/3/library/functions.html#bool) |

## Attributes

attribute

accumulate: accumulate

attribute

values

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

method

checkpoint

method

from\_checkpoint

method

update

method

get

method

is\_available

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

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/channels/topic.py#L23)

Version History
