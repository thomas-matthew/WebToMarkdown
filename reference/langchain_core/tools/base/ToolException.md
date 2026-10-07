Python[langchain-core](/python/langchain-core)[tools](/python/langchain-core/tools)[base](/python/langchain-core/tools/base)ToolException

Classv1.6.7 (latest)●Since v0.2

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/f40f58d50499700f98051be6bb610bee5dd11cc2/libs/core/langchain_core/tools/base.py#L371)

Version History