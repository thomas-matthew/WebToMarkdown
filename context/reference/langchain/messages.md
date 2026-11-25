# Messages

This page contains **reference documentation** for Messages. See [the docs](https://docs.langchain.com/oss/python/langchain/messages) for conceptual guides, tutorials, and examples on using Messages.

## Classes

Class

### [AIMessage](https://reference.langchain.com/python/langchain-core/messages/ai/AIMessage)

Message from an AI.

An `AIMessage` is returned from a chat model as a response to a prompt.

This message represents the output of the model and consists of both
the raw output as returned by the mod

Class

### [AIMessageChunk](https://reference.langchain.com/python/langchain-core/messages/ai/AIMessageChunk)

Message chunk from an AI (yielded when streaming).

Class

### [HumanMessage](https://reference.langchain.com/python/langchain-core/messages/human/HumanMessage)

Message from the user.

A `HumanMessage` is a message that is passed in from a user to the model.

Class

### [SystemMessage](https://reference.langchain.com/python/langchain-core/messages/system/SystemMessage)

Message for priming AI behavior.

The system message is usually passed in as the first of a sequence
of input messages.

Class

### [ToolMessage](https://reference.langchain.com/python/langchain-core/messages/tool/ToolMessage)

Message for passing the result of executing a tool back to a model.

`ToolMessage` objects contain the result of a tool invocation. Typically, the result
is encoded inside the `content` field.

`tool_

Class

### [ToolCall](https://reference.langchain.com/python/langchain-core/messages/content/ToolCall)

Represents an AI's request to call a tool.

Class

### [InvalidToolCall](https://reference.langchain.com/python/langchain-core/messages/content/InvalidToolCall)

Allowance for errors made by LLM.

Here we add an `error` key to surface errors made during generation
(e.g., invalid JSON arguments.)

Class

### [ToolCallChunk](https://reference.langchain.com/python/langchain-core/messages/content/ToolCallChunk)

A chunk of a tool call (yielded when streaming).

When merging `ToolCallChunks` (e.g., via `AIMessageChunk.__add__`),
all string attributes are concatenated. Chunks are only merged if their
values of

Class

### [ServerToolCall](https://reference.langchain.com/python/langchain-core/messages/content/ServerToolCall)

Tool call that is executed server-side.

For example: code execution, web search, etc.

Class

### [ServerToolCallChunk](https://reference.langchain.com/python/langchain-core/messages/content/ServerToolCallChunk)

A chunk of a server-side tool call (yielded when streaming).

Class

### [ServerToolResult](https://reference.langchain.com/python/langchain-core/messages/content/ServerToolResult)

Result of a server-side tool call.

Class

### [TextContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/TextContentBlock)

Text output from a LLM.

This typically represents the main text content of a message, such as the response
from a language model or the text of a user message.

Factory function

`crea

Class

### [Citation](https://reference.langchain.com/python/langchain-core/messages/content/Citation)

Annotation for citing data from a document.

Note

`start`/`end` indices refer to the **response text**,
not the source text. This means that the indices are relative to the model's
re

Class

### [NonStandardAnnotation](https://reference.langchain.com/python/langchain-core/messages/content/NonStandardAnnotation)

Provider-specific annotation format.

Class

### [ReasoningContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/ReasoningContentBlock)

Reasoning output from a LLM.

Factory function

`create_reasoning_block` may also be used as a factory to create a
`ReasoningContentBlock`. Benefits include:

* Automatic ID gen

Class

### [ImageContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/ImageContentBlock)

Image data.

Factory function

`create_image_block` may also be used as a factory to create an
`ImageContentBlock`. Benefits include:

* Automatic ID generation (when not provid

Class

### [VideoContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/VideoContentBlock)

Video data.

Factory function

`create_video_block` may also be used as a factory to create a
`VideoContentBlock`. Benefits include:

* Automatic ID generation (when not provide

Class

### [AudioContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/AudioContentBlock)

Audio data.

Factory function

`create_audio_block` may also be used as a factory to create an
`AudioContentBlock`. Benefits include:

* Automatic ID generation (when not provid

Class

### [PlainTextContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/PlainTextContentBlock)

Plaintext data (e.g., from a `.txt` or `.md` document).

Note

A `PlainTextContentBlock` existed in `langchain-core<1.0.0`. Although the
name has carried over, the structure has changed si

Class

### [FileContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/FileContentBlock)

File data that doesn't fit into other multimodal block types.

This block is intended for files that are not images, audio, or plaintext. For
example, it can be used for PDFs, Word documents, etc.

If

Class

### [NonStandardContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/NonStandardContentBlock)

Provider-specific content data.

This block contains data for which there is not yet a standard type.

The purpose of this block should be to simply hold a provider-specific payload.
If a provider's n

Class

### [UsageMetadata](https://reference.langchain.com/python/langchain-core/messages/ai/UsageMetadata)

Usage metadata for a message, such as token counts.

This is a standard representation of token usage that is consistent across models.

Class

### [InputTokenDetails](https://reference.langchain.com/python/langchain-core/messages/ai/InputTokenDetails)

Breakdown of input token counts.

Does *not* need to sum to full input token count. Does *not* need to have all keys.

Class

### [OutputTokenDetails](https://reference.langchain.com/python/langchain-core/messages/ai/OutputTokenDetails)

Breakdown of output token counts.

Does *not* need to sum to full output token count. Does *not* need to have all keys.

## Functions

Function

### [trim_messages](https://reference.langchain.com/python/langchain-core/messages/utils/trim_messages)

Trim messages to be below a token count.

`trim_messages` can be used to reduce the size of a chat history to a specified
token or message count.

In either case, if passing the trimmed chat history b

## Types

Type

### [MessageLikeRepresentation](https://reference.langchain.com/python/langchain-core/messages/utils/MessageLikeRepresentation)

A type representing the various ways a message can be represented.

Type

### [ContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/ContentBlock)

A union of all defined `ContentBlock` types and aliases.

Type

### [Annotation](https://reference.langchain.com/python/langchain-core/messages/content/Annotation)

A union of all defined `Annotation` types.

Type

### [DataContentBlock](https://reference.langchain.com/python/langchain-core/messages/content/DataContentBlock)

A union of all defined multimodal data `ContentBlock` types.

## Constants

Attribute

### [AnyMessage](https://reference.langchain.com/python/langchain-core/messages/utils/AnyMessage)

A type representing any defined `Message` or `MessageChunk` type.
