Python[langchain-core](/python/langchain-core)[tools](/python/langchain-core/tools)[base](/python/langchain-core/tools/base)InjectedToolCallId

Classv1.4.0 (latest)●Since v0.3

# InjectedToolCallId

Annotation for injecting the tool call ID.

This annotation is used to mark a tool parameter that should receive the tool call
ID at runtime.

```
from typing import Annotated
from langchain_core.messages import ToolMessage
from langchain_core.tools import tool, InjectedToolCallId

@tool
def foo(
    x: int, tool_call_id: Annotated[str, InjectedToolCallId]
) -> ToolMessage:
    """Return x."""
    return ToolMessage(
        str(x),
        artifact=x,
        name="foo",
        tool_call_id=tool_call_id
    )
```

Copy

Copy

```
InjectedToolCallId()
```

## Bases

`InjectedToolArg`

## Used in Docs

* [Subagents](https://docs.langchain.com/oss/python/langchain/multi-agent/subagents)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/core/langchain_core/tools/base.py#L1404)

Version History

Copy page

### On This Page

Related Documentation