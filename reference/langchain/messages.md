Python[langchain](/python/langchain)Messages

# Messages

This page contains **reference documentation** for Messages. See [the docs](https://docs.langchain.com/oss/python/langchain/messages) for conceptual guides, tutorials, and examples on using Messages.

## Classes

[Class

### AIMessage

Message from an AI.](/python/langchain-core/messages/ai/AIMessage)[Class

### AIMessageChunk

Message chunk from an AI (yielded when streaming).](/python/langchain-core/messages/ai/AIMessageChunk)[Class

### HumanMessage

Message from the user.](/python/langchain-core/messages/human/HumanMessage)[Class

### SystemMessage

Message for priming AI behavior.](/python/langchain-core/messages/system/SystemMessage)[Class

### ToolMessage

Message for passing the result of executing a tool back to a model.](/python/langchain-core/messages/tool/ToolMessage)[Class

### ToolCall

Represents an AI's request to call a tool.](/python/langchain-core/messages/content/ToolCall)[Class

### InvalidToolCall

Allowance for errors made by LLM.](/python/langchain-core/messages/content/InvalidToolCall)[Class

### ToolCallChunk

A chunk of a tool call (yielded when streaming).](/python/langchain-core/messages/content/ToolCallChunk)[Class

### ServerToolCall

Tool call that is executed server-side.](/python/langchain-core/messages/content/ServerToolCall)[Class

### ServerToolCallChunk

A chunk of a server-side tool call (yielded when streaming).](/python/langchain-core/messages/content/ServerToolCallChunk)[Class

### ServerToolResult

Result of a server-side tool call.](/python/langchain-core/messages/content/ServerToolResult)[Class

### TextContentBlock

Text output from a LLM.](/python/langchain-core/messages/content/TextContentBlock)[Class

### Citation

Annotation for citing data from a document.](/python/langchain-core/messages/content/Citation)[Class

### NonStandardAnnotation

Provider-specific annotation format.](/python/langchain-core/messages/content/NonStandardAnnotation)[Class

### ReasoningContentBlock

Reasoning output from a LLM.](/python/langchain-core/messages/content/ReasoningContentBlock)[Class

### ImageContentBlock

Image data.](/python/langchain-core/messages/content/ImageContentBlock)[Class

### VideoContentBlock

Video data.](/python/langchain-core/messages/content/VideoContentBlock)[Class

### AudioContentBlock

Audio data.](/python/langchain-core/messages/content/AudioContentBlock)[Class

### PlainTextContentBlock

Plaintext data (e.g., from a `.txt` or `.md` document).](/python/langchain-core/messages/content/PlainTextContentBlock)[Class

### FileContentBlock

File data that doesn't fit into other multimodal block types.](/python/langchain-core/messages/content/FileContentBlock)[Class

### NonStandardContentBlock

Provider-specific content data.](/python/langchain-core/messages/content/NonStandardContentBlock)[Class

### UsageMetadata

Usage metadata for a message, such as token counts.](/python/langchain-core/messages/ai/UsageMetadata)[Class

### InputTokenDetails

Breakdown of input token counts.](/python/langchain-core/messages/ai/InputTokenDetails)[Class

### OutputTokenDetails

Breakdown of output token counts.](/python/langchain-core/messages/ai/OutputTokenDetails)

## Functions

[Function

### trim\_messages

Trim messages to be below a token count.](/python/langchain-core/messages/utils/trim_messages)

## Types

[Type

### MessageLikeRepresentation

A type representing the various ways a message can be represented.](/python/langchain-core/messages/utils/MessageLikeRepresentation)[Type

### ContentBlock

A union of all defined `ContentBlock` types and aliases.](/python/langchain-core/messages/content/ContentBlock)[Type

### Annotation

A union of all defined `Annotation` types.](/python/langchain-core/messages/content/Annotation)[Type

### DataContentBlock

A union of all defined multimodal data `ContentBlock` types.](/python/langchain-core/messages/content/DataContentBlock)

## Constants

[Attribute

### AnyMessage

A type representing any defined `Message` or `MessageChunk` type.](/python/langchain-core/messages/utils/AnyMessage)

Copy page

### On This Page

OverviewClasses24Functions1Types4Constants1