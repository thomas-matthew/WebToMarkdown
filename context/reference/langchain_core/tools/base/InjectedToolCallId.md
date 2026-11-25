Classv1.8.4 (latest)●Since v0.3

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

```
InjectedToolCallId()
```

## Bases

`InjectedToolArg`

## Used in Docs

* [Subagents](https://docs.langchain.com/oss/python/langchain/multi-agent/subagents)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/tools/base.py#L1757)

Version History
