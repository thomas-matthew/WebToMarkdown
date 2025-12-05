[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 131
* 1.2k](https://github.com/langchain-ai/docs "Go to repository")

* [Get started](https://reference.langchain.com/python/)
* [LangChain](https://reference.langchain.com/python/langchain/)

  LangChain
  + [langchain](https://reference.langchain.com/python/langchain/langchain/)

    langchain
    - [Agents](https://reference.langchain.com/python/langchain/agents/)
    - [Middleware](https://reference.langchain.com/python/langchain/middleware/)
    - [Models](https://reference.langchain.com/python/langchain/models/)
    - Messages

      [Messages](https://reference.langchain.com/python/langchain/messages/)



      Table of contents
      * [messages](https://reference.langchain.com/python/langchain/messages/#langchain.messages)

        + [AIMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage)

          - [tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.tool_calls)
          - [invalid\_tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.invalid_tool_calls)
          - [usage\_metadata](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.usage_metadata)
          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.type)
          - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.__init__)
          - [lc\_attributes](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.lc_attributes)
          - [content\_blocks](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.content_blocks)
          - [pretty\_repr](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.pretty_repr)
        + [AIMessageChunk](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.type)
          - [tool\_call\_chunks](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.tool_call_chunks)
          - [chunk\_position](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.chunk_position)
          - [lc\_attributes](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.lc_attributes)
          - [content\_blocks](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.content_blocks)
          - [init\_tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.init_tool_calls)
          - [init\_server\_tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.init_server_tool_calls)
          - [\_\_add\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.__add__)
        + [HumanMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage.type)
          - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage.__init__)
        + [SystemMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage.type)
          - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage.__init__)
        + [AnyMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AnyMessage)
        + [MessageLikeRepresentation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.MessageLikeRepresentation)
        + [ToolMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage)

          - [tool\_call\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.tool_call_id)
          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.type)
          - [artifact](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.artifact)
          - [status](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.status)
          - [additional\_kwargs](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.additional_kwargs)
          - [response\_metadata](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.response_metadata)
          - [coerce\_args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.coerce_args)
          - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.__init__)
        + [ToolCall](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall)

          - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.name)
          - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.args)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.id)
        + [InvalidToolCall](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.id)
          - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.name)
          - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.args)
          - [error](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.error)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.index)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.extras)
        + [ToolCallChunk](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk)

          - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.name)
          - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.args)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.id)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.index)
        + [ServerToolCall](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.id)
          - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.name)
          - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.args)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.index)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.extras)
        + [ServerToolCallChunk](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.type)
          - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.name)
          - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.args)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.id)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.index)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.extras)
        + [ServerToolResult](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.id)
          - [tool\_call\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.tool_call_id)
          - [status](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.status)
          - [output](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.output)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.index)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.extras)
        + [ContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ContentBlock)
        + [TextContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.id)
          - [text](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.text)
          - [annotations](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.annotations)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.index)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.extras)
        + [Annotation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Annotation)
        + [Citation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.id)
          - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.url)
          - [title](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.title)
          - [start\_index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.start_index)
          - [end\_index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.end_index)
          - [cited\_text](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.cited_text)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.extras)
        + [NonStandardAnnotation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.id)
          - [value](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.value)
        + [ReasoningContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.id)
          - [reasoning](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.reasoning)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.index)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.extras)
        + [DataContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.DataContentBlock)
        + [ImageContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.id)
          - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.file_id)
          - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.mime_type)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.index)
          - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.url)
          - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.base64)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.extras)
        + [VideoContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.id)
          - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.file_id)
          - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.mime_type)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.index)
          - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.url)
          - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.base64)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.extras)
        + [AudioContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.id)
          - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.file_id)
          - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.mime_type)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.index)
          - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.url)
          - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.base64)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.extras)
        + [PlainTextContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.id)
          - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.file_id)
          - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.mime_type)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.index)
          - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.url)
          - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.base64)
          - [text](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.text)
          - [title](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.title)
          - [context](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.context)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.extras)
        + [FileContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.id)
          - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.file_id)
          - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.mime_type)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.index)
          - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.url)
          - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.base64)
          - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.extras)
        + [NonStandardContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock)

          - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.type)
          - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.id)
          - [value](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.value)
          - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.index)
        + [trim\_messages](https://reference.langchain.com/python/langchain/messages/#langchain.messages.trim_messages)
        + [UsageMetadata](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata)

          - [input\_tokens](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.input_tokens)
          - [output\_tokens](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.output_tokens)
          - [total\_tokens](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.total_tokens)
          - [input\_token\_details](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.input_token_details)
          - [output\_token\_details](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.output_token_details)
        + [InputTokenDetails](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails)

          - [audio](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.audio)
          - [cache\_creation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.cache_creation)
          - [cache\_read](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.cache_read)
        + [OutputTokenDetails](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails)

          - [audio](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails.audio)
          - [reasoning](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails.reasoning)
    - [Tools](https://reference.langchain.com/python/langchain/tools/)
    - [Embeddings](https://reference.langchain.com/python/langchain/embeddings/)
  + [langchain-core](https://reference.langchain.com/python/langchain_core/)

    langchain-core
    - [Caches](https://reference.langchain.com/python/langchain_core/caches/)
    - [Callbacks](https://reference.langchain.com/python/langchain_core/callbacks/)
    - [Documents](https://reference.langchain.com/python/langchain_core/documents/)
    - [Document loaders](https://reference.langchain.com/python/langchain_core/document_loaders/)
    - [Embeddings](https://reference.langchain.com/python/langchain_core/embeddings/)
    - [Exceptions](https://reference.langchain.com/python/langchain_core/exceptions/)
    - [Language models](https://reference.langchain.com/python/langchain_core/language_models/)
    - [Serialization](https://reference.langchain.com/python/langchain_core/load/)
    - [Output parsers](https://reference.langchain.com/python/langchain_core/output_parsers/)
    - [Prompts](https://reference.langchain.com/python/langchain_core/prompts/)
    - [Rate limiters](https://reference.langchain.com/python/langchain_core/rate_limiters/)
    - [Retrievers](https://reference.langchain.com/python/langchain_core/retrievers/)
    - [Runnables](https://reference.langchain.com/python/langchain_core/runnables/)
    - [Utilities](https://reference.langchain.com/python/langchain_core/utils/)
    - [Vector stores](https://reference.langchain.com/python/langchain_core/vectorstores/)
  + [langchain-text-splitters](https://reference.langchain.com/python/langchain_text_splitters/)

    langchain-text-splitters
  + [langchain-mcp-adapters](https://reference.langchain.com/python/langchain_mcp_adapters/)

    langchain-mcp-adapters
  + [langchain-tests](https://reference.langchain.com/python/langchain_tests/)

    langchain-tests
    - [Unit tests](https://reference.langchain.com/python/langchain_tests/unit_tests/)
    - [Integration tests](https://reference.langchain.com/python/langchain_tests/integration_tests/)
  + [langchain-classic](https://reference.langchain.com/python/langchain_classic/)

    langchain-classic
    - [Agents](https://reference.langchain.com/python/langchain_classic/agents/)
    - [Callbacks](https://reference.langchain.com/python/langchain_classic/callbacks/)
    - [Chains](https://reference.langchain.com/python/langchain_classic/chains/)
    - [Chat models](https://reference.langchain.com/python/langchain_classic/chat_models/)
    - [Embeddings](https://reference.langchain.com/python/langchain_classic/embeddings/)
    - [Evaluation](https://reference.langchain.com/python/langchain_classic/evaluation/)
    - [Globals](https://reference.langchain.com/python/langchain_classic/globals/)
    - [Hub](https://reference.langchain.com/python/langchain_classic/hub/)
    - [Memory](https://reference.langchain.com/python/langchain_classic/memory/)
    - [Output parsers](https://reference.langchain.com/python/langchain_classic/output_parsers/)
    - [Retrievers](https://reference.langchain.com/python/langchain_classic/retrievers/)
    - [Runnables](https://reference.langchain.com/python/langchain_classic/runnables/)
    - [LangSmith](https://reference.langchain.com/python/langchain_classic/smith/)
    - [Storage](https://reference.langchain.com/python/langchain_classic/storage/)
* [LangGraph](https://reference.langchain.com/python/langgraph/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [messages](https://reference.langchain.com/python/langchain/messages/#langchain.messages)

  + [AIMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage)

    - [tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.tool_calls)
    - [invalid\_tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.invalid_tool_calls)
    - [usage\_metadata](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.usage_metadata)
    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.type)
    - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.__init__)
    - [lc\_attributes](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.lc_attributes)
    - [content\_blocks](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.content_blocks)
    - [pretty\_repr](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.pretty_repr)
  + [AIMessageChunk](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.type)
    - [tool\_call\_chunks](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.tool_call_chunks)
    - [chunk\_position](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.chunk_position)
    - [lc\_attributes](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.lc_attributes)
    - [content\_blocks](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.content_blocks)
    - [init\_tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.init_tool_calls)
    - [init\_server\_tool\_calls](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.init_server_tool_calls)
    - [\_\_add\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.__add__)
  + [HumanMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage.type)
    - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage.__init__)
  + [SystemMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage.type)
    - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage.__init__)
  + [AnyMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AnyMessage)
  + [MessageLikeRepresentation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.MessageLikeRepresentation)
  + [ToolMessage](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage)

    - [tool\_call\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.tool_call_id)
    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.type)
    - [artifact](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.artifact)
    - [status](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.status)
    - [additional\_kwargs](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.additional_kwargs)
    - [response\_metadata](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.response_metadata)
    - [coerce\_args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.coerce_args)
    - [\_\_init\_\_](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.__init__)
  + [ToolCall](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall)

    - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.name)
    - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.args)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.id)
  + [InvalidToolCall](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.id)
    - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.name)
    - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.args)
    - [error](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.error)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.index)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.extras)
  + [ToolCallChunk](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk)

    - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.name)
    - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.args)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.id)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.index)
  + [ServerToolCall](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.id)
    - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.name)
    - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.args)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.index)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.extras)
  + [ServerToolCallChunk](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.type)
    - [name](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.name)
    - [args](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.args)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.id)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.index)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.extras)
  + [ServerToolResult](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.id)
    - [tool\_call\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.tool_call_id)
    - [status](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.status)
    - [output](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.output)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.index)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.extras)
  + [ContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ContentBlock)
  + [TextContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.id)
    - [text](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.text)
    - [annotations](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.annotations)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.index)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.extras)
  + [Annotation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Annotation)
  + [Citation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.id)
    - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.url)
    - [title](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.title)
    - [start\_index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.start_index)
    - [end\_index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.end_index)
    - [cited\_text](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.cited_text)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.extras)
  + [NonStandardAnnotation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.id)
    - [value](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.value)
  + [ReasoningContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.id)
    - [reasoning](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.reasoning)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.index)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.extras)
  + [DataContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.DataContentBlock)
  + [ImageContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.id)
    - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.file_id)
    - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.mime_type)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.index)
    - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.url)
    - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.base64)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.extras)
  + [VideoContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.id)
    - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.file_id)
    - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.mime_type)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.index)
    - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.url)
    - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.base64)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.extras)
  + [AudioContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.id)
    - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.file_id)
    - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.mime_type)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.index)
    - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.url)
    - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.base64)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.extras)
  + [PlainTextContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.id)
    - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.file_id)
    - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.mime_type)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.index)
    - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.url)
    - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.base64)
    - [text](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.text)
    - [title](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.title)
    - [context](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.context)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.extras)
  + [FileContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.id)
    - [file\_id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.file_id)
    - [mime\_type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.mime_type)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.index)
    - [url](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.url)
    - [base64](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.base64)
    - [extras](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.extras)
  + [NonStandardContentBlock](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock)

    - [type](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.type)
    - [id](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.id)
    - [value](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.value)
    - [index](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.index)
  + [trim\_messages](https://reference.langchain.com/python/langchain/messages/#langchain.messages.trim_messages)
  + [UsageMetadata](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata)

    - [input\_tokens](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.input_tokens)
    - [output\_tokens](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.output_tokens)
    - [total\_tokens](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.total_tokens)
    - [input\_token\_details](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.input_token_details)
    - [output\_token\_details](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.output_token_details)
  + [InputTokenDetails](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails)

    - [audio](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.audio)
    - [cache\_creation](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.cache_creation)
    - [cache\_read](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.cache_read)
  + [OutputTokenDetails](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails)

    - [audio](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails.audio)
    - [reasoning](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails.reasoning)

# Messages

Reference docs

This page contains **reference documentation** for Messages. See [the docs](https://docs.langchain.com/oss/python/langchain/messages) for conceptual guides, tutorials, and examples on using Messages.

## messages [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages "Copy anchor link to this section for reference")

Message and message content types.

Includes message types for different roles (e.g., human, AI, system), as well as types
for message content blocks (e.g., text, image, audio) and tool calls.

| CLASS | DESCRIPTION |
| --- | --- |
| `AIMessage` | Message from an AI. |
| `AIMessageChunk` | Message chunk from an AI (yielded when streaming). |
| `HumanMessage` | Message from the user. |
| `SystemMessage` | Message for priming AI behavior. |
| `ToolMessage` | Message for passing the result of executing a tool back to a model. |
| `ToolCall` | Represents an AI's request to call a tool. |
| `InvalidToolCall` | Allowance for errors made by LLM. |
| `ToolCallChunk` | A chunk of a tool call (yielded when streaming). |
| `ServerToolCall` | Tool call that is executed server-side. |
| `ServerToolCallChunk` | A chunk of a server-side tool call (yielded when streaming). |
| `ServerToolResult` | Result of a server-side tool call. |
| `TextContentBlock` | Text output from a LLM. |
| `Citation` | Annotation for citing data from a document. |
| `NonStandardAnnotation` | Provider-specific annotation format. |
| `ReasoningContentBlock` | Reasoning output from a LLM. |
| `ImageContentBlock` | Image data. |
| `VideoContentBlock` | Video data. |
| `AudioContentBlock` | Audio data. |
| `PlainTextContentBlock` | Plaintext data (e.g., from a `.txt` or `.md` document). |
| `FileContentBlock` | File data that doesn't fit into other multimodal block types. |
| `NonStandardContentBlock` | Provider-specific content data. |
| `UsageMetadata` | Usage metadata for a message, such as token counts. |
| `InputTokenDetails` | Breakdown of input token counts. |
| `OutputTokenDetails` | Breakdown of output token counts. |

| FUNCTION | DESCRIPTION |
| --- | --- |
| `trim_messages` | Trim messages to be below a token count. |

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `AnyMessage` | A type representing any defined `Message` or `MessageChunk` type. |
| `MessageLikeRepresentation` | A type representing the various ways a message can be represented. |
| `ContentBlock` | A union of all defined `ContentBlock` types and aliases. |
| `Annotation` | A union of all defined `Annotation` types. |
| `DataContentBlock` | A union of all defined multimodal data `ContentBlock` types. |

### AIMessage [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage "Copy anchor link to this section for reference")

Bases: `BaseMessage`

Message from an AI.

An `AIMessage` is returned from a chat model as a response to a prompt.

This message represents the output of the model and consists of both
the raw output as returned by the model and standardized fields
(e.g., tool calls, usage metadata) added by the LangChain framework.

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Initialize an `AIMessage`. |
| `pretty_repr` | Return a pretty representation of the message for display. |

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `tool_calls` | If present, tool calls associated with the message.  **TYPE:** `list[ToolCall]` |
| `invalid_tool_calls` | If present, tool calls with parsing errors associated with the message.  **TYPE:** `list[InvalidToolCall]` |
| `usage_metadata` | If present, usage metadata for a message, such as token counts.  **TYPE:** `UsageMetadata | None` |
| `type` | The type of the message (used for deserialization).  **TYPE:** `Literal['ai']` |
| `lc_attributes` | Attributes to be serialized.  **TYPE:** `dict` |
| `content_blocks` | Return standard, typed `ContentBlock` dicts from the message.  **TYPE:** `list[ContentBlock]` |

#### tool\_calls `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.tool_calls "Copy anchor link to this section for reference")

```
tool_calls: list[ToolCall] = []
```

If present, tool calls associated with the message.

#### invalid\_tool\_calls `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.invalid_tool_calls "Copy anchor link to this section for reference")

```
invalid_tool_calls: list[InvalidToolCall] = []
```

If present, tool calls with parsing errors associated with the message.

#### usage\_metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.usage_metadata "Copy anchor link to this section for reference")

```
usage_metadata: UsageMetadata | None = None
```

If present, usage metadata for a message, such as token counts.

This is a standard representation of token usage that is consistent across models.

#### type `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.type "Copy anchor link to this section for reference")

```
type: Literal['ai'] = 'ai'
```

The type of the message (used for deserialization).

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.__init__ "Copy anchor link to this section for reference")

```
__init__(
    content: str | list[str | dict] | None = None,
    content_blocks: list[ContentBlock] | None = None,
    **kwargs: Any,
) -> None
```

Initialize an `AIMessage`.

Specify `content` as positional arg or `content_blocks` for typing.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `content` | The content of the message.  **TYPE:** `str | list[str | dict] | None`  **DEFAULT:** `None` |
| `content_blocks` | Typed standard content.  **TYPE:** `list[ContentBlock] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional arguments to pass to the parent class.  **TYPE:** `Any`  **DEFAULT:** `{}` |

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

Attributes to be serialized.

Includes all attributes, even if they are derived from other initialization
arguments.

#### content\_blocks `property` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.content_blocks "Copy anchor link to this section for reference")

```
content_blocks: list[ContentBlock]
```

Return standard, typed `ContentBlock` dicts from the message.

If the message has a known model provider, use the provider-specific translator
first before falling back to best-effort parsing. For details, see the property
on `BaseMessage`.

#### pretty\_repr [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessage.pretty_repr "Copy anchor link to this section for reference")

```
pretty_repr(html: bool = False) -> str
```

Return a pretty representation of the message for display.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `html` | Whether to return an HTML-formatted string.  **TYPE:** `bool`  **DEFAULT:** `False` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | A pretty representation of the message. |

### AIMessageChunk [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk "Copy anchor link to this section for reference")

Bases: `AIMessage`, `BaseMessageChunk`

Message chunk from an AI (yielded when streaming).

| METHOD | DESCRIPTION |
| --- | --- |
| `init_tool_calls` | Initialize tool calls from tool call chunks. |
| `init_server_tool_calls` | Parse `server_tool_call_chunks`. |
| `__add__` | Message chunks support concatenation with other message chunks. |

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | The type of the message (used for deserialization).  **TYPE:** `Literal['AIMessageChunk']` |
| `tool_call_chunks` | If provided, tool call chunks associated with the message.  **TYPE:** `list[ToolCallChunk]` |
| `chunk_position` | Optional span represented by an aggregated `AIMessageChunk`.  **TYPE:** `Literal['last'] | None` |
| `lc_attributes` | Attributes to be serialized, even if they are derived from other initialization args.  **TYPE:** `dict` |
| `content_blocks` | Return standard, typed `ContentBlock` dicts from the message.  **TYPE:** `list[ContentBlock]` |

#### type `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.type "Copy anchor link to this section for reference")

```
type: Literal['AIMessageChunk'] = 'AIMessageChunk'
```

The type of the message (used for deserialization).

#### tool\_call\_chunks `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.tool_call_chunks "Copy anchor link to this section for reference")

```
tool_call_chunks: list[ToolCallChunk] = []
```

If provided, tool call chunks associated with the message.

#### chunk\_position `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.chunk_position "Copy anchor link to this section for reference")

```
chunk_position: Literal['last'] | None = None
```

Optional span represented by an aggregated `AIMessageChunk`.

If a chunk with `chunk_position="last"` is aggregated into a stream,
`tool_call_chunks` in message content will be parsed into `tool_calls`.

#### lc\_attributes `property` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.lc_attributes "Copy anchor link to this section for reference")

```
lc_attributes: dict
```

Attributes to be serialized, even if they are derived from other initialization args.

#### content\_blocks `property` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.content_blocks "Copy anchor link to this section for reference")

```
content_blocks: list[ContentBlock]
```

Return standard, typed `ContentBlock` dicts from the message.

#### init\_tool\_calls [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.init_tool_calls "Copy anchor link to this section for reference")

```
init_tool_calls() -> Self
```

Initialize tool calls from tool call chunks.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | The values with tool calls initialized. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If the tool call chunks are malformed. |

#### init\_server\_tool\_calls [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.init_server_tool_calls "Copy anchor link to this section for reference")

```
init_server_tool_calls() -> Self
```

Parse `server_tool_call_chunks`.

#### \_\_add\_\_ [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AIMessageChunk.__add__ "Copy anchor link to this section for reference")

```
__add__(other: Any) -> BaseMessageChunk
```

Message chunks support concatenation with other message chunks.

This functionality is useful to combine message chunks yielded from
a streaming model into a complete message.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `other` | Another message chunk to concatenate with this one.  **TYPE:** `Any` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseMessageChunk` | A new message chunk that is the concatenation of this message chunk |
| `BaseMessageChunk` | and the other message chunk. |

| RAISES | DESCRIPTION |
| --- | --- |
| `TypeError` | If the other object is not a message chunk. |

For example,

`AIMessageChunk(content="Hello") + AIMessageChunk(content=" World")`

will give `AIMessageChunk(content="Hello World")`

### HumanMessage [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage "Copy anchor link to this section for reference")

Bases: `BaseMessage`

Message from the user.

A `HumanMessage` is a message that is passed in from a user to the model.

Example

```
from langchain_core.messages import HumanMessage, SystemMessage

messages = [
    SystemMessage(content="You are a helpful assistant! Your name is Bob."),
    HumanMessage(content="What is your name?"),
]

# Instantiate a chat model and invoke it with the messages
model = ...
print(model.invoke(messages))
```

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Specify `content` as positional arg or `content_blocks` for typing. |

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | The type of the message (used for serialization).  **TYPE:** `Literal['human']` |

#### type `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage.type "Copy anchor link to this section for reference")

```
type: Literal['human'] = 'human'
```

The type of the message (used for serialization).

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.HumanMessage.__init__ "Copy anchor link to this section for reference")

```
__init__(
    content: str | list[str | dict] | None = None,
    content_blocks: list[ContentBlock] | None = None,
    **kwargs: Any,
) -> None
```

Specify `content` as positional arg or `content_blocks` for typing.

### SystemMessage [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage "Copy anchor link to this section for reference")

Bases: `BaseMessage`

Message for priming AI behavior.

The system message is usually passed in as the first of a sequence
of input messages.

Example

```
from langchain_core.messages import HumanMessage, SystemMessage

messages = [
    SystemMessage(content="You are a helpful assistant! Your name is Bob."),
    HumanMessage(content="What is your name?"),
]

# Define a chat model and invoke it with the messages
print(model.invoke(messages))
```

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Specify `content` as positional arg or `content_blocks` for typing. |

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | The type of the message (used for serialization).  **TYPE:** `Literal['system']` |

#### type `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage.type "Copy anchor link to this section for reference")

```
type: Literal['system'] = 'system'
```

The type of the message (used for serialization).

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.SystemMessage.__init__ "Copy anchor link to this section for reference")

```
__init__(
    content: str | list[str | dict] | None = None,
    content_blocks: list[ContentBlock] | None = None,
    **kwargs: Any,
) -> None
```

Specify `content` as positional arg or `content_blocks` for typing.

### AnyMessage `module-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AnyMessage "Copy anchor link to this section for reference")

```
AnyMessage = Annotated[
    Annotated[AIMessage, Tag(tag="ai")]
    | Annotated[HumanMessage, Tag(tag="human")]
    | Annotated[ChatMessage, Tag(tag="chat")]
    | Annotated[SystemMessage, Tag(tag="system")]
    | Annotated[FunctionMessage, Tag(tag="function")]
    | Annotated[ToolMessage, Tag(tag="tool")]
    | Annotated[AIMessageChunk, Tag(tag="AIMessageChunk")]
    | Annotated[HumanMessageChunk, Tag(tag="HumanMessageChunk")]
    | Annotated[ChatMessageChunk, Tag(tag="ChatMessageChunk")]
    | Annotated[SystemMessageChunk, Tag(tag="SystemMessageChunk")]
    | Annotated[FunctionMessageChunk, Tag(tag="FunctionMessageChunk")]
    | Annotated[ToolMessageChunk, Tag(tag="ToolMessageChunk")],
    Field(discriminator=Discriminator(_get_type)),
]
```

A type representing any defined `Message` or `MessageChunk` type.

### MessageLikeRepresentation `module-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.MessageLikeRepresentation "Copy anchor link to this section for reference")

```
MessageLikeRepresentation = (
    BaseMessage | list[str] | tuple[str, str] | str | dict[str, Any]
)
```

A type representing the various ways a message can be represented.

### ToolMessage [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage "Copy anchor link to this section for reference")

Bases: `BaseMessage`, `ToolOutputMixin`

Message for passing the result of executing a tool back to a model.

`ToolMessage` objects contain the result of a tool invocation. Typically, the result
is encoded inside the `content` field.

Example: A `ToolMessage` representing a result of `42` from a tool call with id

```
from langchain_core.messages import ToolMessage

ToolMessage(content="42", tool_call_id="call_Jja7J89XsjrOLA5r!MEOW!SL")
```

Example: A `ToolMessage` where only part of the tool output is sent to the model
and the full output is passed in to artifact.

```
from langchain_core.messages import ToolMessage

tool_output = {
    "stdout": "From the graph we can see that the correlation between "
    "x and y is ...",
    "stderr": None,
    "artifacts": {"type": "image", "base64_data": "/9j/4gIcSU..."},
}

ToolMessage(
    content=tool_output["stdout"],
    artifact=tool_output,
    tool_call_id="call_Jja7J89XsjrOLA5r!MEOW!SL",
)
```

The `tool_call_id` field is used to associate the tool call request with the
tool call response. Useful in situations where a chat model is able
to request multiple tool calls in parallel.

| METHOD | DESCRIPTION |
| --- | --- |
| `coerce_args` | Coerce the model arguments to the correct types. |
| `__init__` | Initialize a `ToolMessage`. |

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `tool_call_id` | Tool call that this message is responding to.  **TYPE:** `str` |
| `type` | The type of the message (used for serialization).  **TYPE:** `Literal['tool']` |
| `artifact` | Artifact of the Tool execution which is not meant to be sent to the model.  **TYPE:** `Any` |
| `status` | Status of the tool invocation.  **TYPE:** `Literal['success', 'error']` |
| `additional_kwargs` | Currently inherited from `BaseMessage`, but not used.  **TYPE:** `dict` |
| `response_metadata` | Currently inherited from `BaseMessage`, but not used.  **TYPE:** `dict` |

#### tool\_call\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.tool_call_id "Copy anchor link to this section for reference")

```
tool_call_id: str
```

Tool call that this message is responding to.

#### type `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.type "Copy anchor link to this section for reference")

```
type: Literal['tool'] = 'tool'
```

The type of the message (used for serialization).

#### artifact `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.artifact "Copy anchor link to this section for reference")

```
artifact: Any = None
```

Artifact of the Tool execution which is not meant to be sent to the model.

Should only be specified if it is different from the message content, e.g. if only
a subset of the full tool output is being passed as message content but the full
output is needed in other parts of the code.

#### status `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.status "Copy anchor link to this section for reference")

```
status: Literal['success', 'error'] = 'success'
```

Status of the tool invocation.

#### additional\_kwargs `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.additional_kwargs "Copy anchor link to this section for reference")

```
additional_kwargs: dict = Field(default_factory=dict, repr=False)
```

Currently inherited from `BaseMessage`, but not used.

#### response\_metadata `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.response_metadata "Copy anchor link to this section for reference")

```
response_metadata: dict = Field(default_factory=dict, repr=False)
```

Currently inherited from `BaseMessage`, but not used.

#### coerce\_args `classmethod` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.coerce_args "Copy anchor link to this section for reference")

```
coerce_args(values: dict) -> dict
```

Coerce the model arguments to the correct types.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `values` | The model arguments.  **TYPE:** `dict` |

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolMessage.__init__ "Copy anchor link to this section for reference")

```
__init__(
    content: str | list[str | dict] | None = None,
    content_blocks: list[ContentBlock] | None = None,
    **kwargs: Any,
) -> None
```

Initialize a `ToolMessage`.

Specify `content` as positional arg or `content_blocks` for typing.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `content` | The contents of the message.  **TYPE:** `str | list[str | dict] | None`  **DEFAULT:** `None` |
| `content_blocks` | Typed standard content.  **TYPE:** `list[ContentBlock] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional fields.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### ToolCall [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall "Copy anchor link to this section for reference")

Bases: `TypedDict`

Represents an AI's request to call a tool.

Example

```
{"name": "foo", "args": {"a": 1}, "id": "123"}
```

This represents a request to call the tool named `'foo'` with arguments
`{"a": 1}` and an identifier of `'123'`.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `name` | The name of the tool to be called.  **TYPE:** `str` |
| `args` | The arguments to the tool call.  **TYPE:** `dict[str, Any]` |
| `id` | An identifier associated with the tool call.  **TYPE:** `str | None` |

#### name `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.name "Copy anchor link to this section for reference")

```
name: str
```

The name of the tool to be called.

#### args `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.args "Copy anchor link to this section for reference")

```
args: dict[str, Any]
```

The arguments to the tool call.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCall.id "Copy anchor link to this section for reference")

```
id: str | None
```

An identifier associated with the tool call.

An identifier is needed to associate a tool call request with a tool
call result in events when multiple concurrent tool calls are made.

### InvalidToolCall [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall "Copy anchor link to this section for reference")

Bases: `TypedDict`

Allowance for errors made by LLM.

Here we add an `error` key to surface errors made during generation
(e.g., invalid JSON arguments.)

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Used for discrimination.  **TYPE:** `Literal['invalid_tool_call']` |
| `id` | An identifier associated with the tool call.  **TYPE:** `str | None` |
| `name` | The name of the tool to be called.  **TYPE:** `str | None` |
| `args` | The arguments to the tool call.  **TYPE:** `str | None` |
| `error` | An error message associated with the tool call.  **TYPE:** `str | None` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.type "Copy anchor link to this section for reference")

```
type: Literal['invalid_tool_call']
```

Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.id "Copy anchor link to this section for reference")

```
id: str | None
```

An identifier associated with the tool call.

An identifier is needed to associate a tool call request with a tool
call result in events when multiple concurrent tool calls are made.

#### name `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.name "Copy anchor link to this section for reference")

```
name: str | None
```

The name of the tool to be called.

#### args `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.args "Copy anchor link to this section for reference")

```
args: str | None
```

The arguments to the tool call.

#### error `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.error "Copy anchor link to this section for reference")

```
error: str | None
```

An error message associated with the tool call.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InvalidToolCall.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### ToolCallChunk [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk "Copy anchor link to this section for reference")

Bases: `TypedDict`

A chunk of a tool call (yielded when streaming).

When merging `ToolCallChunk`s (e.g., via `AIMessageChunk.__add__`),
all string attributes are concatenated. Chunks are only merged if their
values of `index` are equal and not None.

Example:

```
left_chunks = [ToolCallChunk(name="foo", args='{"a":', index=0)]
right_chunks = [ToolCallChunk(name=None, args="1}", index=0)]

(
    AIMessageChunk(content="", tool_call_chunks=left_chunks)
    + AIMessageChunk(content="", tool_call_chunks=right_chunks)
).tool_call_chunks == [ToolCallChunk(name="foo", args='{"a":1}', index=0)]
```

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `name` | The name of the tool to be called.  **TYPE:** `str | None` |
| `args` | The arguments to the tool call.  **TYPE:** `str | None` |
| `id` | An identifier associated with the tool call.  **TYPE:** `str | None` |
| `index` | The index of the tool call in a sequence.  **TYPE:** `int | None` |

#### name `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.name "Copy anchor link to this section for reference")

```
name: str | None
```

The name of the tool to be called.

#### args `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.args "Copy anchor link to this section for reference")

```
args: str | None
```

The arguments to the tool call.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.id "Copy anchor link to this section for reference")

```
id: str | None
```

An identifier associated with the tool call.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ToolCallChunk.index "Copy anchor link to this section for reference")

```
index: int | None
```

The index of the tool call in a sequence.

### ServerToolCall [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall "Copy anchor link to this section for reference")

Bases: `TypedDict`

Tool call that is executed server-side.

For example: code execution, web search, etc.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Used for discrimination.  **TYPE:** `Literal['server_tool_call']` |
| `id` | An identifier associated with the tool call.  **TYPE:** `str` |
| `name` | The name of the tool to be called.  **TYPE:** `str` |
| `args` | The arguments to the tool call.  **TYPE:** `dict[str, Any]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.type "Copy anchor link to this section for reference")

```
type: Literal['server_tool_call']
```

Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.id "Copy anchor link to this section for reference")

```
id: str
```

An identifier associated with the tool call.

#### name `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.name "Copy anchor link to this section for reference")

```
name: str
```

The name of the tool to be called.

#### args `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.args "Copy anchor link to this section for reference")

```
args: dict[str, Any]
```

The arguments to the tool call.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCall.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### ServerToolCallChunk [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk "Copy anchor link to this section for reference")

Bases: `TypedDict`

A chunk of a server-side tool call (yielded when streaming).

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Used for discrimination.  **TYPE:** `Literal['server_tool_call_chunk']` |
| `name` | The name of the tool to be called.  **TYPE:** `NotRequired[str]` |
| `args` | JSON substring of the arguments to the tool call.  **TYPE:** `NotRequired[str]` |
| `id` | An identifier associated with the tool call.  **TYPE:** `NotRequired[str]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.type "Copy anchor link to this section for reference")

```
type: Literal['server_tool_call_chunk']
```

Used for discrimination.

#### name `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.name "Copy anchor link to this section for reference")

```
name: NotRequired[str]
```

The name of the tool to be called.

#### args `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.args "Copy anchor link to this section for reference")

```
args: NotRequired[str]
```

JSON substring of the arguments to the tool call.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

An identifier associated with the tool call.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolCallChunk.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### ServerToolResult [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult "Copy anchor link to this section for reference")

Bases: `TypedDict`

Result of a server-side tool call.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Used for discrimination.  **TYPE:** `Literal['server_tool_result']` |
| `id` | An identifier associated with the server tool result.  **TYPE:** `NotRequired[str]` |
| `tool_call_id` | ID of the corresponding server tool call.  **TYPE:** `str` |
| `status` | Execution status of the server-side tool.  **TYPE:** `Literal['success', 'error']` |
| `output` | Output of the executed tool.  **TYPE:** `NotRequired[Any]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.type "Copy anchor link to this section for reference")

```
type: Literal['server_tool_result']
```

Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

An identifier associated with the server tool result.

#### tool\_call\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.tool_call_id "Copy anchor link to this section for reference")

```
tool_call_id: str
```

ID of the corresponding server tool call.

#### status `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.status "Copy anchor link to this section for reference")

```
status: Literal['success', 'error']
```

Execution status of the server-side tool.

#### output `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.output "Copy anchor link to this section for reference")

```
output: NotRequired[Any]
```

Output of the executed tool.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ServerToolResult.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### ContentBlock `module-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ContentBlock "Copy anchor link to this section for reference")

```
ContentBlock = (
    TextContentBlock
    | InvalidToolCall
    | ReasoningContentBlock
    | NonStandardContentBlock
    | DataContentBlock
    | ToolContentBlock
)
```

A union of all defined `ContentBlock` types and aliases.

### TextContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Text output from a LLM.

This typically represents the main text content of a message, such as the response
from a language model or the text of a user message.

Factory function

`create_text_block` may also be used as a factory to create a
`TextContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['text']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `text` | Block text.  **TYPE:** `str` |
| `annotations` | `Citation`s and other annotations.  **TYPE:** `NotRequired[list[Annotation]]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['text']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### text `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.text "Copy anchor link to this section for reference")

```
text: str
```

Block text.

#### annotations `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.annotations "Copy anchor link to this section for reference")

```
annotations: NotRequired[list[Annotation]]
```

`Citation`s and other annotations.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.TextContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### Annotation `module-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Annotation "Copy anchor link to this section for reference")

```
Annotation = Citation | NonStandardAnnotation
```

A union of all defined `Annotation` types.

### Citation [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation "Copy anchor link to this section for reference")

Bases: `TypedDict`

Annotation for citing data from a document.

Note

`start`/`end` indices refer to the **response text**,
not the source text. This means that the indices are relative to the model's
response, not the original document (as specified in the `url`).

Factory function

`create_citation` may also be used as a factory to create a `Citation`.
Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['citation']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `url` | URL of the document source.  **TYPE:** `NotRequired[str]` |
| `title` | Source document title.  **TYPE:** `NotRequired[str]` |
| `start_index` | Start index of the **response text** (`TextContentBlock.text`).  **TYPE:** `NotRequired[int]` |
| `end_index` | End index of the **response text** (`TextContentBlock.text`)  **TYPE:** `NotRequired[int]` |
| `cited_text` | Excerpt of source text being cited.  **TYPE:** `NotRequired[str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.type "Copy anchor link to this section for reference")

```
type: Literal['citation']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### url `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.url "Copy anchor link to this section for reference")

```
url: NotRequired[str]
```

URL of the document source.

#### title `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.title "Copy anchor link to this section for reference")

```
title: NotRequired[str]
```

Source document title.

For example, the page title for a web page or the title of a paper.

#### start\_index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.start_index "Copy anchor link to this section for reference")

```
start_index: NotRequired[int]
```

Start index of the **response text** (`TextContentBlock.text`).

#### end\_index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.end_index "Copy anchor link to this section for reference")

```
end_index: NotRequired[int]
```

End index of the **response text** (`TextContentBlock.text`)

#### cited\_text `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.cited_text "Copy anchor link to this section for reference")

```
cited_text: NotRequired[str]
```

Excerpt of source text being cited.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.Citation.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### NonStandardAnnotation [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation "Copy anchor link to this section for reference")

Bases: `TypedDict`

Provider-specific annotation format.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['non_standard_annotation']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `value` | Provider-specific annotation data.  **TYPE:** `dict[str, Any]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.type "Copy anchor link to this section for reference")

```
type: Literal['non_standard_annotation']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### value `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardAnnotation.value "Copy anchor link to this section for reference")

```
value: dict[str, Any]
```

Provider-specific annotation data.

### ReasoningContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Reasoning output from a LLM.

Factory function

`create_reasoning_block` may also be used as a factory to create a
`ReasoningContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['reasoning']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `reasoning` | Reasoning text.  **TYPE:** `NotRequired[str]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `extras` | Provider-specific metadata.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['reasoning']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### reasoning `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.reasoning "Copy anchor link to this section for reference")

```
reasoning: NotRequired[str]
```

Reasoning text.

Either the thought summary or the raw reasoning text itself. This is often parsed
from `<think>` tags in the model's response.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ReasoningContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata.

### DataContentBlock `module-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.DataContentBlock "Copy anchor link to this section for reference")

```
DataContentBlock = (
    ImageContentBlock
    | VideoContentBlock
    | AudioContentBlock
    | PlainTextContentBlock
    | FileContentBlock
)
```

A union of all defined multimodal data `ContentBlock` types.

### ImageContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Image data.

Factory function

`create_image_block` may also be used as a factory to create a
`ImageContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['image']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `file_id` | ID of the image file, e.g., from a file storage system.  **TYPE:** `NotRequired[str]` |
| `mime_type` | MIME type of the image. Required for base64.  **TYPE:** `NotRequired[str]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `url` | URL of the image.  **TYPE:** `NotRequired[str]` |
| `base64` | Data as a base64 string.  **TYPE:** `NotRequired[str]` |
| `extras` | Provider-specific metadata. This shouldn't be used for the image data itself.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['image']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### file\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.file_id "Copy anchor link to this section for reference")

```
file_id: NotRequired[str]
```

ID of the image file, e.g., from a file storage system.

#### mime\_type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.mime_type "Copy anchor link to this section for reference")

```
mime_type: NotRequired[str]
```

MIME type of the image. Required for base64.

[Examples from IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#image)

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### url `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.url "Copy anchor link to this section for reference")

```
url: NotRequired[str]
```

URL of the image.

#### base64 `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.base64 "Copy anchor link to this section for reference")

```
base64: NotRequired[str]
```

Data as a base64 string.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.ImageContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata. This shouldn't be used for the image data itself.

### VideoContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Video data.

Factory function

`create_video_block` may also be used as a factory to create a
`VideoContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['video']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `file_id` | ID of the video file, e.g., from a file storage system.  **TYPE:** `NotRequired[str]` |
| `mime_type` | MIME type of the video. Required for base64.  **TYPE:** `NotRequired[str]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `url` | URL of the video.  **TYPE:** `NotRequired[str]` |
| `base64` | Data as a base64 string.  **TYPE:** `NotRequired[str]` |
| `extras` | Provider-specific metadata. This shouldn't be used for the video data itself.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['video']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### file\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.file_id "Copy anchor link to this section for reference")

```
file_id: NotRequired[str]
```

ID of the video file, e.g., from a file storage system.

#### mime\_type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.mime_type "Copy anchor link to this section for reference")

```
mime_type: NotRequired[str]
```

MIME type of the video. Required for base64.

[Examples from IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#video)

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### url `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.url "Copy anchor link to this section for reference")

```
url: NotRequired[str]
```

URL of the video.

#### base64 `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.base64 "Copy anchor link to this section for reference")

```
base64: NotRequired[str]
```

Data as a base64 string.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.VideoContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata. This shouldn't be used for the video data itself.

### AudioContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Audio data.

Factory function

`create_audio_block` may also be used as a factory to create an
`AudioContentBlock`. Benefits include:
\* Automatic ID generation (when not provided)
\* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['audio']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `file_id` | ID of the audio file, e.g., from a file storage system.  **TYPE:** `NotRequired[str]` |
| `mime_type` | MIME type of the audio. Required for base64.  **TYPE:** `NotRequired[str]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `url` | URL of the audio.  **TYPE:** `NotRequired[str]` |
| `base64` | Data as a base64 string.  **TYPE:** `NotRequired[str]` |
| `extras` | Provider-specific metadata. This shouldn't be used for the audio data itself.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['audio']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### file\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.file_id "Copy anchor link to this section for reference")

```
file_id: NotRequired[str]
```

ID of the audio file, e.g., from a file storage system.

#### mime\_type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.mime_type "Copy anchor link to this section for reference")

```
mime_type: NotRequired[str]
```

MIME type of the audio. Required for base64.

[Examples from IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#audio)

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### url `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.url "Copy anchor link to this section for reference")

```
url: NotRequired[str]
```

URL of the audio.

#### base64 `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.base64 "Copy anchor link to this section for reference")

```
base64: NotRequired[str]
```

Data as a base64 string.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.AudioContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata. This shouldn't be used for the audio data itself.

### PlainTextContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Plaintext data (e.g., from a `.txt` or `.md` document).

Note

A `PlainTextContentBlock` existed in `langchain-core<1.0.0`. Although the
name has carried over, the structure has changed significantly. The only shared
keys between the old and new versions are `type` and `text`, though the
`type` value has changed from `'text'` to `'text-plain'`.

Note

Title and context are optional fields that may be passed to the model. See
Anthropic [example](https://platform.claude.com/docs/en/build-with-claude/citations#citable-vs-non-citable-content).

Factory function

`create_plaintext_block` may also be used as a factory to create a
`PlainTextContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['text-plain']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `file_id` | ID of the plaintext file, e.g., from a file storage system.  **TYPE:** `NotRequired[str]` |
| `mime_type` | MIME type of the file. Required for base64.  **TYPE:** `Literal['text/plain']` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `url` | URL of the plaintext.  **TYPE:** `NotRequired[str]` |
| `base64` | Data as a base64 string.  **TYPE:** `NotRequired[str]` |
| `text` | Plaintext content. This is optional if the data is provided as base64.  **TYPE:** `NotRequired[str]` |
| `title` | Title of the text data, e.g., the title of a document.  **TYPE:** `NotRequired[str]` |
| `context` | Context for the text, e.g., a description or summary of the text's content.  **TYPE:** `NotRequired[str]` |
| `extras` | Provider-specific metadata. This shouldn't be used for the data itself.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['text-plain']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### file\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.file_id "Copy anchor link to this section for reference")

```
file_id: NotRequired[str]
```

ID of the plaintext file, e.g., from a file storage system.

#### mime\_type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.mime_type "Copy anchor link to this section for reference")

```
mime_type: Literal['text/plain']
```

MIME type of the file. Required for base64.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### url `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.url "Copy anchor link to this section for reference")

```
url: NotRequired[str]
```

URL of the plaintext.

#### base64 `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.base64 "Copy anchor link to this section for reference")

```
base64: NotRequired[str]
```

Data as a base64 string.

#### text `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.text "Copy anchor link to this section for reference")

```
text: NotRequired[str]
```

Plaintext content. This is optional if the data is provided as base64.

#### title `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.title "Copy anchor link to this section for reference")

```
title: NotRequired[str]
```

Title of the text data, e.g., the title of a document.

#### context `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.context "Copy anchor link to this section for reference")

```
context: NotRequired[str]
```

Context for the text, e.g., a description or summary of the text's content.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.PlainTextContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata. This shouldn't be used for the data itself.

### FileContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

File data that doesn't fit into other multimodal block types.

This block is intended for files that are not images, audio, or plaintext. For
example, it can be used for PDFs, Word documents, etc.

If the file is an image, audio, or plaintext, you should use the corresponding
content block type (e.g., `ImageContentBlock`, `AudioContentBlock`,
`PlainTextContentBlock`).

Factory function

`create_file_block` may also be used as a factory to create a
`FileContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['file']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `file_id` | ID of the file, e.g., from a file storage system.  **TYPE:** `NotRequired[str]` |
| `mime_type` | MIME type of the file. Required for base64.  **TYPE:** `NotRequired[str]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |
| `url` | URL of the file.  **TYPE:** `NotRequired[str]` |
| `base64` | Data as a base64 string.  **TYPE:** `NotRequired[str]` |
| `extras` | Provider-specific metadata. This shouldn't be used for the file data itself.  **TYPE:** `NotRequired[dict[str, Any]]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['file']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### file\_id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.file_id "Copy anchor link to this section for reference")

```
file_id: NotRequired[str]
```

ID of the file, e.g., from a file storage system.

#### mime\_type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.mime_type "Copy anchor link to this section for reference")

```
mime_type: NotRequired[str]
```

MIME type of the file. Required for base64.

[Examples from IANA](https://www.iana.org/assignments/media-types/media-types.xhtml)

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

#### url `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.url "Copy anchor link to this section for reference")

```
url: NotRequired[str]
```

URL of the file.

#### base64 `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.base64 "Copy anchor link to this section for reference")

```
base64: NotRequired[str]
```

Data as a base64 string.

#### extras `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.FileContentBlock.extras "Copy anchor link to this section for reference")

```
extras: NotRequired[dict[str, Any]]
```

Provider-specific metadata. This shouldn't be used for the file data itself.

### NonStandardContentBlock [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock "Copy anchor link to this section for reference")

Bases: `TypedDict`

Provider-specific content data.

This block contains data for which there is not yet a standard type.

The purpose of this block should be to simply hold a provider-specific payload.
If a provider's non-standard output includes reasoning and tool calls, it should be
the adapter's job to parse that payload and emit the corresponding standard
`ReasoningContentBlock` and `ToolCalls`.

Has no `extras` field, as provider-specific data should be included in the
`value` field.

Factory function

`create_non_standard_block` may also be used as a factory to create a
`NonStandardContentBlock`. Benefits include:

* Automatic ID generation (when not provided)
* Required arguments strictly validated at creation time

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `type` | Type of the content block. Used for discrimination.  **TYPE:** `Literal['non_standard']` |
| `id` | Content block identifier.  **TYPE:** `NotRequired[str]` |
| `value` | Provider-specific content data.  **TYPE:** `dict[str, Any]` |
| `index` | Index of block in aggregate response. Used during streaming.  **TYPE:** `NotRequired[int | str]` |

#### type `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.type "Copy anchor link to this section for reference")

```
type: Literal['non_standard']
```

Type of the content block. Used for discrimination.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.id "Copy anchor link to this section for reference")

```
id: NotRequired[str]
```

Content block identifier.

Either:

* Generated by the provider (e.g., OpenAI's file ID)
* Generated by LangChain upon creation (`UUID4` prefixed with `'lc_'`))

#### value `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.value "Copy anchor link to this section for reference")

```
value: dict[str, Any]
```

Provider-specific content data.

#### index `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.NonStandardContentBlock.index "Copy anchor link to this section for reference")

```
index: NotRequired[int | str]
```

Index of block in aggregate response. Used during streaming.

### trim\_messages [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.trim_messages "Copy anchor link to this section for reference")

```
trim_messages(
    messages: Iterable[MessageLikeRepresentation] | PromptValue,
    *,
    max_tokens: int,
    token_counter: Callable[[list[BaseMessage]], int]
    | Callable[[BaseMessage], int]
    | BaseLanguageModel,
    strategy: Literal["first", "last"] = "last",
    allow_partial: bool = False,
    end_on: str | type[BaseMessage] | Sequence[str | type[BaseMessage]] | None = None,
    start_on: str | type[BaseMessage] | Sequence[str | type[BaseMessage]] | None = None,
    include_system: bool = False,
    text_splitter: Callable[[str], list[str]] | TextSplitter | None = None,
) -> list[BaseMessage]
```

Trim messages to be below a token count.

`trim_messages` can be used to reduce the size of a chat history to a specified
token or message count.

In either case, if passing the trimmed chat history back into a chat model
directly, the resulting chat history should usually satisfy the following
properties:

1. The resulting chat history should be valid. Most chat models expect that chat
   history starts with either (1) a `HumanMessage` or (2) a `SystemMessage`
   followed by a `HumanMessage`. To achieve this, set `start_on='human'`.
   In addition, generally a `ToolMessage` can only appear after an `AIMessage`
   that involved a tool call.
2. It includes recent messages and drops old messages in the chat history.
   To achieve this set the `strategy='last'`.
3. Usually, the new chat history should include the `SystemMessage` if it
   was present in the original chat history since the `SystemMessage` includes
   special instructions to the chat model. The `SystemMessage` is almost always
   the first message in the history if present. To achieve this set the
   `include_system=True`.

Note

The examples below show how to configure `trim_messages` to achieve a behavior
consistent with the above properties.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `messages` | Sequence of Message-like objects to trim.  **TYPE:** `Iterable[MessageLikeRepresentation] | PromptValue` |
| `max_tokens` | Max token count of trimmed messages.  **TYPE:** `int` |
| `token_counter` | Function or llm for counting tokens in a `BaseMessage` or a list of `BaseMessage`. If a `BaseLanguageModel` is passed in then `BaseLanguageModel.get_num_tokens_from_messages()` will be used. Set to `len` to count the number of **messages** in the chat history.  Note  Use `count_tokens_approximately` to get fast, approximate token counts.  This is recommended for using `trim_messages` on the hot path, where exact token counting is not necessary.  **TYPE:** `Callable[[list[BaseMessage]], int] | Callable[[BaseMessage], int] | BaseLanguageModel` |
| `strategy` | Strategy for trimming. - `'first'`: Keep the first `<= n_count` tokens of the messages. - `'last'`: Keep the last `<= n_count` tokens of the messages.  **TYPE:** `Literal['first', 'last']`  **DEFAULT:** `'last'` |
| `allow_partial` | Whether to split a message if only part of the message can be included. If `strategy='last'` then the last partial contents of a message are included. If `strategy='first'` then the first partial contents of a message are included.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `end_on` | The message type to end on. If specified then every message after the last occurrence of this type is ignored. If `strategy='last'` then this is done before we attempt to get the last `max_tokens`. If `strategy='first'` then this is done after we get the first `max_tokens`. Can be specified as string names (e.g. `'system'`, `'human'`, `'ai'`, ...) or as `BaseMessage` classes (e.g. `SystemMessage`, `HumanMessage`, `AIMessage`, ...). Can be a single type or a list of types.  **TYPE:** `str | type[BaseMessage] | Sequence[str | type[BaseMessage]] | None`  **DEFAULT:** `None` |
| `start_on` | The message type to start on. Should only be specified if `strategy='last'`. If specified then every message before the first occurrence of this type is ignored. This is done after we trim the initial messages to the last `max_tokens`. Does not apply to a `SystemMessage` at index 0 if `include_system=True`. Can be specified as string names (e.g. `'system'`, `'human'`, `'ai'`, ...) or as `BaseMessage` classes (e.g. `SystemMessage`, `HumanMessage`, `AIMessage`, ...). Can be a single type or a list of types.  **TYPE:** `str | type[BaseMessage] | Sequence[str | type[BaseMessage]] | None`  **DEFAULT:** `None` |
| `include_system` | Whether to keep the `SystemMessage` if there is one at index `0`. Should only be specified if `strategy="last"`.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `text_splitter` | Function or `langchain_text_splitters.TextSplitter` for splitting the string contents of a message. Only used if `allow_partial=True`. If `strategy='last'` then the last split tokens from a partial message will be included. if `strategy='first'` then the first split tokens from a partial message will be included. Token splitter assumes that separators are kept, so that split contents can be directly concatenated to recreate the original text. Defaults to splitting on newlines.  **TYPE:** `Callable[[str], list[str]] | TextSplitter | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[BaseMessage]` | List of trimmed `BaseMessage`. |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | if two incompatible arguments are specified or an unrecognized `strategy` is specified. |

Example

Trim chat history based on token count, keeping the `SystemMessage` if
present, and ensuring that the chat history starts with a `HumanMessage` (
or a `SystemMessage` followed by a `HumanMessage`).

```
from langchain_core.messages import (
    AIMessage,
    HumanMessage,
    BaseMessage,
    SystemMessage,
    trim_messages,
)

messages = [
    SystemMessage("you're a good assistant, you always respond with a joke."),
    HumanMessage("i wonder why it's called langchain"),
    AIMessage(
        'Well, I guess they thought "WordRope" and "SentenceString" just '
        "didn't have the same ring to it!"
    ),
    HumanMessage("and who is harrison chasing anyways"),
    AIMessage(
        "Hmmm let me think.\n\nWhy, he's probably chasing after the last "
        "cup of coffee in the office!"
    ),
    HumanMessage("what do you call a speechless parrot"),
]


trim_messages(
    messages,
    max_tokens=45,
    strategy="last",
    token_counter=ChatOpenAI(model="gpt-4o"),
    # Most chat models expect that chat history starts with either:
    # (1) a HumanMessage or
    # (2) a SystemMessage followed by a HumanMessage
    start_on="human",
    # Usually, we want to keep the SystemMessage
    # if it's present in the original history.
    # The SystemMessage has special instructions for the model.
    include_system=True,
    allow_partial=False,
)
```

```
[
    SystemMessage(
        content="you're a good assistant, you always respond with a joke."
    ),
    HumanMessage(content="what do you call a speechless parrot"),
]
```

Trim chat history based on the message count, keeping the `SystemMessage` if
present, and ensuring that the chat history starts with a `HumanMessage` (
or a `SystemMessage` followed by a `HumanMessage`).

```
trim_messages(
    messages,
    # When `len` is passed in as the token counter function,
    # max_tokens will count the number of messages in the chat history.
    max_tokens=4,
    strategy="last",
    # Passing in `len` as a token counter function will
    # count the number of messages in the chat history.
    token_counter=len,
    # Most chat models expect that chat history starts with either:
    # (1) a HumanMessage or
    # (2) a SystemMessage followed by a HumanMessage
    start_on="human",
    # Usually, we want to keep the SystemMessage
    # if it's present in the original history.
    # The SystemMessage has special instructions for the model.
    include_system=True,
    allow_partial=False,
)
```

```
[
    SystemMessage(
        content="you're a good assistant, you always respond with a joke."
    ),
    HumanMessage(content="and who is harrison chasing anyways"),
    AIMessage(
        content="Hmmm let me think.\n\nWhy, he's probably chasing after "
        "the last cup of coffee in the office!"
    ),
    HumanMessage(content="what do you call a speechless parrot"),
]
```

Trim chat history using a custom token counter function that counts the
number of tokens in each message.

```
messages = [
    SystemMessage("This is a 4 token text. The full message is 10 tokens."),
    HumanMessage(
        "This is a 4 token text. The full message is 10 tokens.", id="first"
    ),
    AIMessage(
        [
            {"type": "text", "text": "This is the FIRST 4 token block."},
            {"type": "text", "text": "This is the SECOND 4 token block."},
        ],
        id="second",
    ),
    HumanMessage(
        "This is a 4 token text. The full message is 10 tokens.", id="third"
    ),
    AIMessage(
        "This is a 4 token text. The full message is 10 tokens.",
        id="fourth",
    ),
]


def dummy_token_counter(messages: list[BaseMessage]) -> int:
    # treat each message like it adds 3 default tokens at the beginning
    # of the message and at the end of the message. 3 + 4 + 3 = 10 tokens
    # per message.

    default_content_len = 4
    default_msg_prefix_len = 3
    default_msg_suffix_len = 3

    count = 0
    for msg in messages:
        if isinstance(msg.content, str):
            count += (
                default_msg_prefix_len
                + default_content_len
                + default_msg_suffix_len
            )
        if isinstance(msg.content, list):
            count += (
                default_msg_prefix_len
                + len(msg.content) * default_content_len
                + default_msg_suffix_len
            )
    return count
```

First 30 tokens, allowing partial messages:

```
trim_messages(
    messages,
    max_tokens=30,
    token_counter=dummy_token_counter,
    strategy="first",
    allow_partial=True,
)
```

```
[
    SystemMessage("This is a 4 token text. The full message is 10 tokens."),
    HumanMessage(
        "This is a 4 token text. The full message is 10 tokens.",
        id="first",
    ),
    AIMessage(
        [{"type": "text", "text": "This is the FIRST 4 token block."}],
        id="second",
    ),
]
```

### UsageMetadata [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata "Copy anchor link to this section for reference")

Bases: `TypedDict`

Usage metadata for a message, such as token counts.

This is a standard representation of token usage that is consistent across models.

Example

```
{
    "input_tokens": 350,
    "output_tokens": 240,
    "total_tokens": 590,
    "input_token_details": {
        "audio": 10,
        "cache_creation": 200,
        "cache_read": 100,
    },
    "output_token_details": {
        "audio": 10,
        "reasoning": 200,
    },
}
```

Behavior changed in `langchain-core` 0.3.9

Added `input_token_details` and `output_token_details`.

LangSmith SDK

The LangSmith SDK also has a `UsageMetadata` class. While the two share fields,
LangSmith's `UsageMetadata` has additional fields to capture cost information
used by the LangSmith platform.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `input_tokens` | Count of input (or prompt) tokens. Sum of all input token types.  **TYPE:** `int` |
| `output_tokens` | Count of output (or completion) tokens. Sum of all output token types.  **TYPE:** `int` |
| `total_tokens` | Total token count. Sum of `input_tokens` + `output_tokens`.  **TYPE:** `int` |
| `input_token_details` | Breakdown of input token counts.  **TYPE:** `NotRequired[InputTokenDetails]` |
| `output_token_details` | Breakdown of output token counts.  **TYPE:** `NotRequired[OutputTokenDetails]` |

#### input\_tokens `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.input_tokens "Copy anchor link to this section for reference")

```
input_tokens: int
```

Count of input (or prompt) tokens. Sum of all input token types.

#### output\_tokens `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.output_tokens "Copy anchor link to this section for reference")

```
output_tokens: int
```

Count of output (or completion) tokens. Sum of all output token types.

#### total\_tokens `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.total_tokens "Copy anchor link to this section for reference")

```
total_tokens: int
```

Total token count. Sum of `input_tokens` + `output_tokens`.

#### input\_token\_details `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.input_token_details "Copy anchor link to this section for reference")

```
input_token_details: NotRequired[InputTokenDetails]
```

Breakdown of input token counts.

Does *not* need to sum to full input token count. Does *not* need to have all keys.

#### output\_token\_details `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.UsageMetadata.output_token_details "Copy anchor link to this section for reference")

```
output_token_details: NotRequired[OutputTokenDetails]
```

Breakdown of output token counts.

Does *not* need to sum to full output token count. Does *not* need to have all keys.

### InputTokenDetails [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails "Copy anchor link to this section for reference")

Bases: `TypedDict`

Breakdown of input token counts.

Does *not* need to sum to full input token count. Does *not* need to have all keys.

Example

```
{
    "audio": 10,
    "cache_creation": 200,
    "cache_read": 100,
}
```

May also hold extra provider-specific keys.

Added in `langchain-core` 0.3.9

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `audio` | Audio input tokens.  **TYPE:** `int` |
| `cache_creation` | Input tokens that were cached and there was a cache miss.  **TYPE:** `int` |
| `cache_read` | Input tokens that were cached and there was a cache hit.  **TYPE:** `int` |

#### audio `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.audio "Copy anchor link to this section for reference")

```
audio: int
```

Audio input tokens.

#### cache\_creation `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.cache_creation "Copy anchor link to this section for reference")

```
cache_creation: int
```

Input tokens that were cached and there was a cache miss.

Since there was a cache miss, the cache was created from these tokens.

#### cache\_read `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.InputTokenDetails.cache_read "Copy anchor link to this section for reference")

```
cache_read: int
```

Input tokens that were cached and there was a cache hit.

Since there was a cache hit, the tokens were read from the cache. More precisely,
the model state given these tokens was read from the cache.

### OutputTokenDetails [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails "Copy anchor link to this section for reference")

Bases: `TypedDict`

Breakdown of output token counts.

Does *not* need to sum to full output token count. Does *not* need to have all keys.

Example

```
{
    "audio": 10,
    "reasoning": 200,
}
```

May also hold extra provider-specific keys.

Added in `langchain-core` 0.3.9

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `audio` | Audio output tokens.  **TYPE:** `int` |
| `reasoning` | Reasoning output tokens.  **TYPE:** `int` |

#### audio `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails.audio "Copy anchor link to this section for reference")

```
audio: int
```

Audio output tokens.

#### reasoning `instance-attribute` [¶](https://reference.langchain.com/python/langchain/messages/#langchain.messages.OutputTokenDetails.reasoning "Copy anchor link to this section for reference")

```
reasoning: int
```

Reasoning output tokens.

Tokens generated by the model in a chain of thought process (i.e. by OpenAI's o1
models) that are not returned as part of model output.

Back to top