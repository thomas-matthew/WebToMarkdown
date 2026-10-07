Python[langchain](/python/langchain)Messages

# Messages

This page contains **reference documentation** for Messages. See [the docs](https://docs.langchain.com/oss/python/langchain/messages) for conceptual guides, tutorials, and examples on using Messages.

## Classes

[Class

### AIMessage

Message from an AI.

An `AIMessage` is returned from a chat model as a response to a prompt.

This message represents the output of the model and consists of both
the raw output as returned by the mod](/python/langchain-core/messages/ai/AIMessage)[Class

### AIMessageChunk

Message chunk from an AI (yielded when streaming).](/python/langchain-core/messages/ai/AIMessageChunk)[Class

### HumanMessage

Message from the user.

A `HumanMessage` is a message that is passed in from a user to the model.](/python/langchain-core/messages/human/HumanMessage)[Class

### SystemMessage

Message for priming AI behavior.

The system message is usually passed in as the first of a sequence
of input messages.](/python/langchain-core/messages/system/SystemMessage)[Class

### ToolMessage

Message for passing the result of executing a tool back to a model.

`ToolMessage` objects contain the result of a tool invocation. Typically, the result
is encoded inside the `content` field.

`tool\_](/python/langchain-core/messages/tool/ToolMessage)[Class

### ToolCall

Represents an AI's request to call a tool.](/python/langchain-core/messages/content/ToolCall)[Class

### InvalidToolCall

Allowance for errors made by LLM.

Here we add an `error` key to surface errors made during generation
(e.g., invalid JSON arguments.)](/python/langchain-core/messages/content/InvalidToolCall)[Class

### ToolCallChunk

A chunk of a tool call (yielded when streaming).

When merging `ToolCallChunks` (e.g., via `AIMessageChunk.__add__`),
all string attributes are concatenated. Chunks are only merged if their
values of](/python/langchain-core/messages/content/ToolCallChunk)[Class

### ServerToolCall

Tool call that is executed server-side.

For example: code execution, web search, etc.](/python/langchain-core/messages/content/ServerToolCall)[Class

### ServerToolCallChunk

A chunk of a server-side tool call (yielded when streaming).](/python/langchain-core/messages/content/ServerToolCallChunk)[Class

### ServerToolResult

Result of a server-side tool call.](/python/langchain-core/messages/content/ServerToolResult)[Class

### TextContentBlock

Text output from a LLM.

This typically represents the main text content of a message, such as the response
from a language model or the text of a user message.

Factory function

`crea](/python/langchain-core/messages/content/TextContentBlock)[Class

### Citation

Annotation for citing data from a document.

Note

`start`/`end` indices refer to the **response text**,
not the source text. This means that the indices are relative to the model's
re](/python/langchain-core/messages/content/Citation)[Class

### NonStandardAnnotation

Provider-specific annotation format.](/python/langchain-core/messages/content/NonStandardAnnotation)[Class

### ReasoningContentBlock

Reasoning output from a LLM.

Factory function

`create_reasoning_block` may also be used as a factory to create a
`ReasoningContentBlock`. Benefits include:

* Automatic ID gen](/python/langchain-core/messages/content/ReasoningContentBlock)[Class

### ImageContentBlock

Image data.

Factory function

`create_image_block` may also be used as a factory to create an
`ImageContentBlock`. Benefits include:

* Automatic ID generation (when not provid](/python/langchain-core/messages/content/ImageContentBlock)[Class

### VideoContentBlock

Video data.

Factory function

`create_video_block` may also be used as a factory to create a
`VideoContentBlock`. Benefits include:

* Automatic ID generation (when not provide](/python/langchain-core/messages/content/VideoContentBlock)[Class

### AudioContentBlock

Audio data.

Factory function

`create_audio_block` may also be used as a factory to create an
`AudioContentBlock`. Benefits include:

* Automatic ID generation (when not provid](/python/langchain-core/messages/content/AudioContentBlock)[Class

### PlainTextContentBlock

Plaintext data (e.g., from a `.txt` or `.md` document).

Note

A `PlainTextContentBlock` existed in `langchain-core<1.0.0`. Although the
name has carried over, the structure has changed si](/python/langchain-core/messages/content/PlainTextContentBlock)[Class

### FileContentBlock

File data that doesn't fit into other multimodal block types.

This block is intended for files that are not images, audio, or plaintext. For
example, it can be used for PDFs, Word documents, etc.

If](/python/langchain-core/messages/content/FileContentBlock)[Class

### NonStandardContentBlock

Provider-specific content data.

This block contains data for which there is not yet a standard type.

The purpose of this block should be to simply hold a provider-specific payload.
If a provider's n](/python/langchain-core/messages/content/NonStandardContentBlock)[Class

### UsageMetadata

Usage metadata for a message, such as token counts.

This is a standard representation of token usage that is consistent across models.](/python/langchain-core/messages/ai/UsageMetadata)[Class

### InputTokenDetails

Breakdown of input token counts.

Does *not* need to sum to full input token count. Does *not* need to have all keys.](/python/langchain-core/messages/ai/InputTokenDetails)[Class

### OutputTokenDetails

Breakdown of output token counts.

Does *not* need to sum to full output token count. Does *not* need to have all keys.](/python/langchain-core/messages/ai/OutputTokenDetails)

## Functions

[Function

### trim\_messages

Trim messages to be below a token count.

`trim_messages` can be used to reduce the size of a chat history to a specified
token or message count.

In either case, if passing the trimmed chat history b](/python/langchain-core/messages/utils/trim_messages)

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