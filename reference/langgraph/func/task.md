Python[langgraph](/python/langgraph)[func](/python/langgraph/func)task

Functionv1.2.0 (latest)●Since v0.2

# task

Define a LangGraph task using the `task` decorator.

Requires python 3.11 or higher for async functions

The `task` decorator supports both sync and async functions. To use async
functions, ensure that you are using Python 3.11 or higher.

Tasks can only be called from within an [`entrypoint`](/python/langgraph/func/entrypoint) or
from within a `StateGraph`. A task can be called like a regular function with the
following differences:

* When a checkpointer is enabled, the function inputs and outputs must be serializable.
* The decorated function can only be called from within an entrypoint or `StateGraph`.
* Calling the function produces a future. This makes it easy to parallelize tasks.

Copy

```
task(
  __func_or_none__: Callable[P, Awaitable[T]] | Callable[P, T] | None = None,
  *,
  name: str | None = None,
  retry_policy: RetryPolicy | Sequence[RetryPolicy] | None = None,
  cache_policy: CachePolicy[Callable[P, str | bytes]] | None = None,
  timeout: float | timedelta | TimeoutPolicy | None = None,
  **kwargs: Unpack[DeprecatedKwargs] = {}
) -> Callable[[Callable[P, Awaitable[T]] | Callable[P, T]], _TaskFunction[P, T]] | _TaskFunction[P, T]
```

**Sync Task:**

```
from langgraph.func import entrypoint, task

@task
def add_one_task(a: int) -> int:
    return a + 1

@entrypoint()
def add_one(numbers: list[int]) -> list[int]:
    futures = [add_one_task(n) for n in numbers]
    results = [f.result() for f in futures]
    return results

# Call the entrypoint
add_one.invoke([1, 2, 3])  # Returns [2, 3, 4]
```

Copy

**Async Task:**

```
import asyncio
from langgraph.func import entrypoint, task

@task
async def add_one_task(a: int) -> int:
    return a + 1

@entrypoint()
async def add_one(numbers: list[int]) -> list[int]:
    futures = [add_one_task(n) for n in numbers]
    return asyncio.gather(*futures)

# Call the entrypoint
await add_one.ainvoke([1, 2, 3])  # Returns [2, 3, 4]
```

Copy

## Used in Docs

* [Choosing between Graph and Functional APIs](https://docs.langchain.com/oss/python/langgraph/choosing-apis)
* [Deploy other frameworks](https://docs.langchain.com/langsmith/deploy-other-frameworks)
* [Fault tolerance](https://docs.langchain.com/oss/python/langgraph/fault-tolerance)
* [Functional API overview](https://docs.langchain.com/oss/python/langgraph/functional-api)
* [Quickstart](https://docs.langchain.com/oss/python/langgraph/quickstart)

+2 more

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `name` | `str | None` | Default:`None`  An optional name for the task. If not provided, the function name will be used. |
| `retry_policy` | `RetryPolicy | Sequence[RetryPolicy] | None` | Default:`None`  An optional retry policy (or list of policies) to use for the task in case of a failure. |
| `cache_policy` | `CachePolicy[Callable[P, str | bytes]] | None` | Default:`None`  An optional cache policy to use for the task. This allows caching of the task results. |
| `timeout` | `float | timedelta | TimeoutPolicy | None` | Default:`None`  Timeout for each task attempt. A number or `timedelta` is a hard wall-clock cap and is not refreshed. Use `TimeoutPolicy` to configure both a wall-clock `run_timeout` and an `idle_timeout` refreshed by progress signals. For long-running work that doesn't naturally emit progress, call `runtime.heartbeat()` from inside the task. When the timeout fires, `NodeTimeoutError` is raised and the retry policy (if any) decides whether to retry. Supported only for async tasks; sync tasks cannot be safely cancelled in-process. |

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/aa322c13cd5f16a3f6254a931a4104e412cd687c/libs/langgraph/langgraph/func/__init__.py#L132)

Version History

Copy page

### On This Page

Related Documentation◇Parameters