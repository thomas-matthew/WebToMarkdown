Python[langchain-core](/python/langchain-core)[caches](/python/langchain-core/caches)InMemoryCache

Classv1.4.0 (latest)●Since v0.1

# InMemoryCache

Cache that stores things in memory.

Copy

```
InMemoryCache(
    self,
    *,
    maxsize: int | None = None,
)
```

## Bases

`BaseCache`

**Example:**

```
from langchain_core.caches import InMemoryCache
from langchain_core.outputs import Generation

# Initialize cache
cache = InMemoryCache()

# Update cache
cache.update(
    prompt="What is the capital of France?",
    llm_string="model='gpt-5.4-mini',
    return_val=[Generation(text="Paris")],
)

# Lookup cache
result = cache.lookup(
    prompt="What is the capital of France?",
    llm_string="model='gpt-5.4-mini',
)
# result is [Generation(text="Paris")]
```

Copy

## Used in Docs

* [Graph API overview](https://docs.langchain.com/oss/python/langgraph/graph-api)
* [Use the functional API](https://docs.langchain.com/oss/python/langgraph/use-functional-api)
* [Use the graph API](https://docs.langchain.com/oss/python/langgraph/use-graph-api)

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `maxsize` | `int | None` | Default:`None`  The maximum number of items to store in the cache.  If `None`, the cache has no maximum size.  If the cache exceeds the maximum size, the oldest items are removed. |

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| maxsize | [int](https://docs.python.org/3/library/functions.html#int) | None |

## Methods

[method

lookup

Look up based on `prompt` and `llm_string`.](/python/langchain-core/caches/InMemoryCache/lookup)[method

update

Update cache based on `prompt` and `llm_string`.](/python/langchain-core/caches/InMemoryCache/update)[method

clear

Clear cache.](/python/langchain-core/caches/InMemoryCache/clear)[method

alookup

Async look up based on `prompt` and `llm_string`.](/python/langchain-core/caches/InMemoryCache/alookup)[method

aupdate

Async update cache based on `prompt` and `llm_string`.](/python/langchain-core/caches/InMemoryCache/aupdate)[method

aclear

Async clear cache.](/python/langchain-core/caches/InMemoryCache/aclear)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/core/langchain_core/caches.py#L155)

Version History

Copy page

### On This Page

Related Documentation◇Parameters

Constructors

C\_\_init\_\_

Methods

MlookupMupdateMclearMalookupMaupdateMaclear