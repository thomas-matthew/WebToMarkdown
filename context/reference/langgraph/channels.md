# Channels

## Classes

Class

### [BaseChannel](https://reference.langchain.com/python/langgraph/channels/base/BaseChannel)

Base class for all channels.

Class

### [Topic](https://reference.langchain.com/python/langgraph/channels/topic/Topic)

A configurable PubSub Topic.

Class

### [LastValue](https://reference.langchain.com/python/langgraph/channels/last_value/LastValue)

Stores the last value received, can receive at most one value per step.

Class

### [EphemeralValue](https://reference.langchain.com/python/langgraph/channels/ephemeral_value/EphemeralValue)

Stores the value received in the step immediately preceding, clears after.

Class

### [BinaryOperatorAggregate](https://reference.langchain.com/python/langgraph/channels/binop/BinaryOperatorAggregate)

Stores the result of applying a binary operator to the current value and each new value.

```
import operator

total = Channels.BinaryOperatorAggregate(int, operator.add)
```

Class

### [AnyValue](https://reference.langchain.com/python/langgraph/channels/any_value/AnyValue)

Stores the last value received, assumes that if multiple values are
received, they are all equal.
