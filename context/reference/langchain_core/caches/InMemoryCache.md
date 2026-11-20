Classv1.8.3 (latest)●Since v1.8

# InMemoryCache

Cache that stores things in memory.

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

method

lookup

Look up based on `prompt` and `llm_string`.

method

update

Update cache based on `prompt` and `llm_string`.

method

clear

Clear cache.

method

alookup

Async look up based on `prompt` and `llm_string`.

method

aupdate

Async update cache based on `prompt` and `llm_string`.

method

aclear

Async clear cache.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/caches.py#L155)

Version History
