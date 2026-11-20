# Tools

This page contains **reference documentation** for Tools. See [the docs](https://docs.langchain.com/oss/python/langchain/tools) for conceptual guides, tutorials, and examples on using Tools.

## Classes

Class

### [BaseTool](https://reference.langchain.com/python/langchain-core/tools/base/BaseTool)

Base class for all LangChain tools.

This abstract class defines the interface that all LangChain tools must implement.

Tools are components that can be called by agents to perform specific actions.

Class

### [InjectedToolArg](https://reference.langchain.com/python/langchain-core/tools/base/InjectedToolArg)

Annotation for tool arguments that are injected at runtime.

Tool arguments annotated with this class are not included in the tool
schema sent to language models and are instead injected during execut

Class

### [InjectedToolCallId](https://reference.langchain.com/python/langchain-core/tools/base/InjectedToolCallId)

Annotation for injecting the tool call ID.

This annotation is used to mark a tool parameter that should receive the tool call
ID at runtime.

```
from typing import Annotated
from langchain_cor
```

Class

### [ToolException](https://reference.langchain.com/python/langchain-core/tools/base/ToolException)

Exception thrown when a tool execution error occurs.

This exception allows tools to signal errors without stopping the agent.

The error is handled according to the tool's `handle_tool_error` setting

## Constants

Attribute

### [tool](https://reference.langchain.com/python/langchain/agents/structured_output/OutputToolBinding/tool)

LangChain tool instance created from the schema for model binding.
