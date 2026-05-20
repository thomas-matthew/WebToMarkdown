Python[langgraph](/python/langgraph)[pregel](/python/langgraph/pregel)[main](/python/langgraph/pregel/main)NodeBuilder

Classv1.2.0 (latest)●Since v0.6

# NodeBuilder

Copy

```
NodeBuilder(
    self,
)
```

## Constructors

[constructor

\_\_init\_\_](/python/langgraph/pregel/main/NodeBuilder/__init__)

## Methods

[method

subscribe\_only

Subscribe to a single channel.](/python/langgraph/pregel/main/NodeBuilder/subscribe_only)[method

subscribe\_to

Add channels to subscribe to.

Node will be invoked when any of these channels are updated, with a dict of the
channel values as input.](/python/langgraph/pregel/main/NodeBuilder/subscribe_to)[method

read\_from

Adds the specified channels to read from, without subscribing to them.](/python/langgraph/pregel/main/NodeBuilder/read_from)[method

do

Adds the specified node.](/python/langgraph/pregel/main/NodeBuilder/do)[method

write\_to

Add channel writes.](/python/langgraph/pregel/main/NodeBuilder/write_to)[method

meta

Add tags or metadata to the node.](/python/langgraph/pregel/main/NodeBuilder/meta)[method

add\_retry\_policies

Adds retry policies to the node.](/python/langgraph/pregel/main/NodeBuilder/add_retry_policies)[method

add\_cache\_policy

Adds cache policies to the node.](/python/langgraph/pregel/main/NodeBuilder/add_cache_policy)[method

set\_timeout

Set the per-attempt timeout policy for this node.](/python/langgraph/pregel/main/NodeBuilder/set_timeout)[method

build

Builds the node.](/python/langgraph/pregel/main/NodeBuilder/build)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/pregel/main.py#L204)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Methods

Msubscribe\_onlyMsubscribe\_toMread\_fromMdoMwrite\_toMmetaMadd\_retry\_policiesMadd\_cache\_policyMset\_timeoutMbuild