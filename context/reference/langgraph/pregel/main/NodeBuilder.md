Classv1.2.24 (latest)●Since v1.2

# NodeBuilder

```
NodeBuilder(
    self,
)
```

## Constructors

constructor

__init__

## Methods

method

subscribe_only

Subscribe to a single channel.

method

subscribe_to

Add channels to subscribe to.

Node will be invoked when any of these channels are updated, with a dict of the
channel values as input.

method

read_from

Adds the specified channels to read from, without subscribing to them.

method

do

Adds the specified node.

method

write_to

Add channel writes.

method

meta

Add tags or metadata to the node.

method

add_retry_policies

Adds retry policies to the node.

method

add_cache_policy

Adds cache policies to the node.

method

set_timeout

Set the per-attempt timeout policy for this node.

method

build

Builds the node.

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/pregel/main.py#L212)

Version History
