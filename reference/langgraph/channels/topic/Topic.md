Python[langgraph](/python/langgraph)[channels](/python/langgraph/channels)[topic](/python/langgraph/channels/topic)Topic

Classv1.2.0 (latest)●Since v0.1

# Topic

A configurable PubSub Topic.

Copy

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
| typ | [type](https://docs.python.org/3/library/functions.html#type)[[Value](/python/langgraph/channels/base/Value)] |
| accumulate | [bool](https://docs.python.org/3/library/functions.html#bool) |

## Attributes

[attribute

accumulate: accumulate](/python/langgraph/channels/topic/Topic/accumulate)[attribute

values](/python/langgraph/channels/topic/Topic/values)[attribute

ValueType: Any

The type of the value stored in the channel.](/python/langgraph/channels/topic/Topic/ValueType)[attribute

UpdateType: Any

The type of the update received by the channel.](/python/langgraph/channels/topic/Topic/UpdateType)

## Methods

[method

copy

Return a copy of the channel.](/python/langgraph/channels/topic/Topic/copy)[method

checkpoint](/python/langgraph/channels/topic/Topic/checkpoint)[method

from\_checkpoint](/python/langgraph/channels/topic/Topic/from_checkpoint)[method

update](/python/langgraph/channels/topic/Topic/update)[method

get](/python/langgraph/channels/topic/Topic/get)[method

is\_available](/python/langgraph/channels/topic/Topic/is_available)

## Inherited from[BaseChannel](/python/langgraph/channels/base/BaseChannel)

### Attributes

[Atyp: typ](/python/langgraph/channels/base/BaseChannel/typ)[Akey: key](/python/langgraph/channels/base/BaseChannel/key)

### Methods

[Mconsume

—

Notify the channel that a subscribed task ran.](/python/langgraph/channels/base/BaseChannel/consume)[Mfinish

—

Notify the channel that the Pregel run is finishing.](/python/langgraph/channels/base/BaseChannel/finish)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/channels/topic.py#L23)

Version History

Copy page

### On This Page

Related Documentation◇Parameters

Constructors

C\_\_init\_\_

Attributes

AaccumulateAvaluesAValueTypeAUpdateType

Methods

McopyMcheckpointMfrom\_checkpointMupdateMgetMis\_available

from BaseChannel

AAttributes

AtypAkey

MMethods

MconsumeMfinish