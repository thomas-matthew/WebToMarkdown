Python[langchain-core](/python/langchain-core)[tools](/python/langchain-core/tools)[base](/python/langchain-core/tools/base)ToolException

Classv1.7.1 (latest)●Since v1.7

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/6419339aa163a49f32d9b80ff20d6adc3b446d49/libs/core/langchain_core/tools/base.py#L371)

Version History