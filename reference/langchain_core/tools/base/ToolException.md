Python[langchain-core](/python/langchain-core)[tools](/python/langchain-core/tools)[base](/python/langchain-core/tools/base)ToolException

Classv1.4.0 (latest)●Since v0.2

# ToolException

Exception thrown when a tool execution error occurs.

This exception allows tools to signal errors without stopping the agent.

The error is handled according to the tool's `handle_tool_error` setting, and the
result is returned as an observation to the agent.

Copy

```
ToolException()
```

## Bases

`Exception`

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/c4c91d9cd34ac53c7c73162671f98b7769a40123/libs/core/langchain_core/tools/base.py#L390)

Version History