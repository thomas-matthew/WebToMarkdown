Classv1.2.23 (latest)●Since v1.2

# NodeBuilder

```
NodeBuilder(
    self,
)
```

## Constructors

constructor

\_\_init\_\_

## Methods

method

subscribe\_only

Subscribe to a single channel.

method

subscribe\_to

Add channels to subscribe to.

Node will be invoked when any of these channels are updated, with a dict of the
channel values as input.

method

read\_from

Adds the specified channels to read from, without subscribing to them.

method

do

Adds the specified node.

method

write\_to

Add channel writes.

method

meta

Add tags or metadata to the node.

method

add\_retry\_policies

Adds retry policies to the node.

method

add\_cache\_policy

Adds cache policies to the node.

method

set\_timeout

Set the per-attempt timeout policy for this node.

method

build

Builds the node.

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/pregel/main.py#L212)

Version History
