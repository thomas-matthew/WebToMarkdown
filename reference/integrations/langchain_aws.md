Pythonlangchain-aws

# langchain-aws

## Description

[![PyPI - Version](https://img.shields.io/pypi/v/langchain-aws?label=%20)](https://pypi.org/project/langchain-aws/#history)
[![PyPI - License](https://img.shields.io/pypi/l/langchain-aws)](https://opensource.org/licenses/MIT)
[![PyPI - Downloads](https://img.shields.io/pepy/dt/langchain-aws)](https://pypistats.org/packages/langchain-aws)

Note

This package ref has not yet been fully migrated to v1.

Reference docs

This page contains **reference documentation** for AWS. See [the docs](https://docs.langchain.com/oss/python/integrations/providers/aws) for conceptual guides, tutorials, and examples on using AWS modules.

## Classes

[Class

### AnthropicTool](/python/langchain-aws/function_calling/AnthropicTool)[Class

### FunctionDescription

Representation of a callable function to send to an LLM.](/python/langchain-aws/function_calling/FunctionDescription)[Class

### ToolDescription

Representation of a callable function to the OpenAI API.](/python/langchain-aws/function_calling/ToolDescription)[Class

### ToolsOutputParser](/python/langchain-aws/function_calling/ToolsOutputParser)[Class

### ContentHandlerBase

A handler class to transform input from LLM and BaseChatModel to a](/python/langchain-aws/utils/ContentHandlerBase)[Class

### AnthropicTool](/python/langchain-aws/llms/bedrock/AnthropicTool)[Class

### LLMInputOutputAdapter

Adapter class to prepare the inputs from Langchain to a format](/python/langchain-aws/llms/bedrock/LLMInputOutputAdapter)[Class

### BedrockBase

Base class for Bedrock models.](/python/langchain-aws/llms/bedrock/BedrockBase)[Class

### BedrockLLM

Bedrock models.](/python/langchain-aws/llms/bedrock/BedrockLLM)[Class

### LineIterator

A helper class for parsing the byte stream input.](/python/langchain-aws/llms/sagemaker_endpoint/LineIterator)[Class

### LLMContentHandler

Content handler for LLM class.](/python/langchain-aws/llms/sagemaker_endpoint/LLMContentHandler)[Class

### SagemakerEndpoint

Sagemaker Inference Endpoint models.](/python/langchain-aws/llms/sagemaker_endpoint/SagemakerEndpoint)[Class

### BedrockPromptCachingMiddleware

Prompt Caching Middleware for ChatBedrock and ChatBedrockConverse.](/python/langchain-aws/middleware/prompt_caching/BedrockPromptCachingMiddleware)[Class

### ChatAnthropicBedrock

Anthropic Claude via AWS Bedrock.](/python/langchain-aws/chat_models/anthropic/ChatAnthropicBedrock)[Class

### NovaSonicSession

Manages a single bidirectional streaming session with Nova Sonic.](/python/langchain-aws/chat_models/bedrock_nova_sonic/NovaSonicSession)[Class

### ChatBedrockNovaSonic

Chat model for Amazon Nova Sonic bidirectional streaming.](/python/langchain-aws/chat_models/bedrock_nova_sonic/ChatBedrockNovaSonic)[Class

### ChatPromptAdapter

Adapter class to prepare the inputs from Langchain to prompt format that Chat](/python/langchain-aws/chat_models/bedrock/ChatPromptAdapter)[Class

### ChatBedrock

A chat model that uses the Bedrock API.](/python/langchain-aws/chat_models/bedrock/ChatBedrock)[Class

### ChatBedrockConverse

Bedrock chat model integration built on the Bedrock converse API.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse)[Class

### ChatLineIterator

A helper class for parsing the byte stream input.](/python/langchain-aws/chat_models/sagemaker_endpoint/ChatLineIterator)[Class

### ChatModelContentHandler

Content handler for ChatSagemakerEndpoint class.](/python/langchain-aws/chat_models/sagemaker_endpoint/ChatModelContentHandler)[Class

### ChatSagemakerEndpoint

A chat model that uses a HuggingFace TGI compatible SageMaker Endpoint.](/python/langchain-aws/chat_models/sagemaker_endpoint/ChatSagemakerEndpoint)[Class

### AmazonQ

Amazon Q Runnable wrapper.](/python/langchain-aws/runnables/q_business/AmazonQ)[Class

### BedrockAgentFinish

AgentFinish with session id information.](/python/langchain-aws/agents/types/BedrockAgentFinish)[Class

### BedrockAgentAction

AgentAction with session id information.](/python/langchain-aws/agents/types/BedrockAgentAction)[Class

### GuardrailConfiguration](/python/langchain-aws/agents/types/GuardrailConfiguration)[Class

### KnowledgebaseConfiguration](/python/langchain-aws/agents/types/KnowledgebaseConfiguration)[Class

### InlineAgentConfiguration

Configurations for an Inline Agent.](/python/langchain-aws/agents/types/InlineAgentConfiguration)[Class

### BedrockAgentsRunnable

Invoke a Bedrock Agent](/python/langchain-aws/agents/base/BedrockAgentsRunnable)[Class

### BedrockInlineAgentsRunnable

Invoke Bedrock Inline Agent as a Runnable.](/python/langchain-aws/agents/base/BedrockInlineAgentsRunnable)[Class

### AmazonS3VectorsRetriever

AmazonS3VectorsRetriever is a retriever for Amazon S3 Vectors.](/python/langchain-aws/retrievers/s3_vectors/AmazonS3VectorsRetriever)[Class

### SearchFilter

Filter configuration for retrieval.](/python/langchain-aws/retrievers/bedrock/SearchFilter)[Class

### VectorSearchConfig

Configuration for vector search.](/python/langchain-aws/retrievers/bedrock/VectorSearchConfig)[Class

### RetrievalConfig

Configuration for retrieval.](/python/langchain-aws/retrievers/bedrock/RetrievalConfig)[Class

### AmazonKnowledgeBasesRetriever

`Amazon Bedrock Knowledge Bases` retrieval.](/python/langchain-aws/retrievers/bedrock/AmazonKnowledgeBasesRetriever)[Class

### Highlight

Information that highlights the keywords in the excerpt.](/python/langchain-aws/retrievers/kendra/Highlight)[Class

### TextWithHighLights

Text with highlights.](/python/langchain-aws/retrievers/kendra/TextWithHighLights)[Class

### AdditionalResultAttributeValue

Value of an additional result attribute.](/python/langchain-aws/retrievers/kendra/AdditionalResultAttributeValue)[Class

### AdditionalResultAttribute

Additional result attribute.](/python/langchain-aws/retrievers/kendra/AdditionalResultAttribute)[Class

### DocumentAttributeValue

Value of a document attribute.](/python/langchain-aws/retrievers/kendra/DocumentAttributeValue)[Class

### DocumentAttribute

Document attribute.](/python/langchain-aws/retrievers/kendra/DocumentAttribute)[Class

### ResultItem

Base class of a result item.](/python/langchain-aws/retrievers/kendra/ResultItem)[Class

### QueryResultItem

Query API result item.](/python/langchain-aws/retrievers/kendra/QueryResultItem)[Class

### RetrieveResultItem

Retrieve API result item.](/python/langchain-aws/retrievers/kendra/RetrieveResultItem)[Class

### QueryResult

`Amazon Kendra Query API` search result.](/python/langchain-aws/retrievers/kendra/QueryResult)[Class

### RetrieveResult

`Amazon Kendra Retrieve API` search result.](/python/langchain-aws/retrievers/kendra/RetrieveResult)[Class

### AmazonKendraRetriever

`Amazon Kendra Index` retriever.](/python/langchain-aws/retrievers/kendra/AmazonKendraRetriever)[Class

### NeptuneQueryException

Exception for the Neptune queries.](/python/langchain-aws/graphs/neptune_graph/NeptuneQueryException)[Class

### BaseNeptuneGraph](/python/langchain-aws/graphs/neptune_graph/BaseNeptuneGraph)[Class

### NeptuneAnalyticsGraph

Neptune Analytics wrapper for graph operations.](/python/langchain-aws/graphs/neptune_graph/NeptuneAnalyticsGraph)[Class

### NeptuneGraph

Neptune wrapper for graph operations.](/python/langchain-aws/graphs/neptune_graph/NeptuneGraph)[Class

### NeptuneRdfGraph

Neptune wrapper for RDF graph operations.](/python/langchain-aws/graphs/neptune_rdf_graph/NeptuneRdfGraph)[Class

### BedrockRerank

Document compressor that uses AWS Bedrock Rerank API.](/python/langchain-aws/document_compressors/rerank/BedrockRerank)[Class

### BrowserSessionManager

Manages browser sessions for different threads.](/python/langchain-aws/tools/browser_session_manager/BrowserSessionManager)[Class

### NovaSystemTool

Base class for Nova system tools.](/python/langchain-aws/tools/nova_tools/NovaSystemTool)[Class

### NovaGroundingTool

Helper for Nova's web grounding system tool.](/python/langchain-aws/tools/nova_tools/NovaGroundingTool)[Class

### NovaCodeInterpreterTool

Helper for Nova's code interpreter system tool.](/python/langchain-aws/tools/nova_tools/NovaCodeInterpreterTool)[Class

### ExecuteCodeInput

Input schema for execute\_code tool.](/python/langchain-aws/tools/code_interpreter_toolkit/ExecuteCodeInput)[Class

### ExecuteCommandInput

Input schema for execute\_command tool.](/python/langchain-aws/tools/code_interpreter_toolkit/ExecuteCommandInput)[Class

### ReadFilesInput

Input schema for read\_files tool.](/python/langchain-aws/tools/code_interpreter_toolkit/ReadFilesInput)[Class

### WriteFilesInput

Input schema for write\_files tool.](/python/langchain-aws/tools/code_interpreter_toolkit/WriteFilesInput)[Class

### ListFilesInput

Input schema for list\_files tool.](/python/langchain-aws/tools/code_interpreter_toolkit/ListFilesInput)[Class

### DeleteFilesInput

Input schema for delete\_files tool.](/python/langchain-aws/tools/code_interpreter_toolkit/DeleteFilesInput)[Class

### UploadFileInput

Input schema for upload\_file tool.](/python/langchain-aws/tools/code_interpreter_toolkit/UploadFileInput)[Class

### InstallPackagesInput

Input schema for install\_packages tool.](/python/langchain-aws/tools/code_interpreter_toolkit/InstallPackagesInput)[Class

### CodeInterpreterToolkit

Toolkit for working with AWS code interpreter environment.](/python/langchain-aws/tools/code_interpreter_toolkit/CodeInterpreterToolkit)[Class

### NavigateToolInput

Input for NavigateTool.](/python/langchain-aws/tools/browser_tools/NavigateToolInput)[Class

### ClickToolInput

Input for ClickTool.](/python/langchain-aws/tools/browser_tools/ClickToolInput)[Class

### GetElementsToolInput

Input for GetElementsTool.](/python/langchain-aws/tools/browser_tools/GetElementsToolInput)[Class

### ExtractTextToolInput

Input for ExtractTextTool.](/python/langchain-aws/tools/browser_tools/ExtractTextToolInput)[Class

### ExtractHyperlinksToolInput

Input for ExtractHyperlinksTool.](/python/langchain-aws/tools/browser_tools/ExtractHyperlinksToolInput)[Class

### NavigateBackToolInput

Input for NavigateBackTool.](/python/langchain-aws/tools/browser_tools/NavigateBackToolInput)[Class

### CurrentWebPageToolInput

Input for CurrentWebPageTool.](/python/langchain-aws/tools/browser_tools/CurrentWebPageToolInput)[Class

### TypeTextInput

Input for TypeTextTool.](/python/langchain-aws/tools/browser_tools/TypeTextInput)[Class

### ScreenshotInput

Input for ScreenshotTool.](/python/langchain-aws/tools/browser_tools/ScreenshotInput)[Class

### ScrollInput

Input for ScrollTool.](/python/langchain-aws/tools/browser_tools/ScrollInput)[Class

### WaitForElementInput

Input for WaitForElementTool.](/python/langchain-aws/tools/browser_tools/WaitForElementInput)[Class

### ThreadAwareBaseTool

Base class for thread-aware browser tools.](/python/langchain-aws/tools/browser_tools/ThreadAwareBaseTool)[Class

### ThreadAwareNavigateTool

Tool for navigating a browser to a URL with thread support.](/python/langchain-aws/tools/browser_tools/ThreadAwareNavigateTool)[Class

### ThreadAwareClickTool

Tool for clicking on an element with the given CSS selector.](/python/langchain-aws/tools/browser_tools/ThreadAwareClickTool)[Class

### ThreadAwareNavigateBackTool](/python/langchain-aws/tools/browser_tools/ThreadAwareNavigateBackTool)[Class

### ThreadAwareExtractTextTool](/python/langchain-aws/tools/browser_tools/ThreadAwareExtractTextTool)[Class

### ThreadAwareExtractHyperlinksTool](/python/langchain-aws/tools/browser_tools/ThreadAwareExtractHyperlinksTool)[Class

### ThreadAwareGetElementsTool](/python/langchain-aws/tools/browser_tools/ThreadAwareGetElementsTool)[Class

### ThreadAwareCurrentWebPageTool](/python/langchain-aws/tools/browser_tools/ThreadAwareCurrentWebPageTool)[Class

### ThreadAwareTypeTool

Tool for typing text into input fields on a webpage.](/python/langchain-aws/tools/browser_tools/ThreadAwareTypeTool)[Class

### ThreadAwareScreenshotTool

Tool for capturing screenshots of the current webpage.](/python/langchain-aws/tools/browser_tools/ThreadAwareScreenshotTool)[Class

### ThreadAwareScrollTool

Tool for scrolling the webpage.](/python/langchain-aws/tools/browser_tools/ThreadAwareScrollTool)[Class

### ThreadAwareWaitForElementTool

Tool for waiting until an element appears or reaches a specific state.](/python/langchain-aws/tools/browser_tools/ThreadAwareWaitForElementTool)[Class

### BrowserToolkit

Toolkit for navigating web with AWS browser with thread support.](/python/langchain-aws/tools/browser_toolkit/BrowserToolkit)[Class

### BedrockEmbeddings

Bedrock embedding models.](/python/langchain-aws/embeddings/bedrock/BedrockEmbeddings)[Class

### InMemoryDBFilterOperator

InMemoryDBFilterOperator enumerator is used to create](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterOperator)[Class

### InMemoryDBFilter

Collection of InMemoryDBFilterFields.](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilter)[Class

### InMemoryDBFilterField

Base class for InMemoryDBFilterFields.](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterField)[Class

### InMemoryDBTag

InMemoryDBFilterField representing a tag in a InMemoryDB index.](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBTag)[Class

### InMemoryDBNum

InMemoryDBFilterField representing a numeric field in a InMemoryDB index.](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBNum)[Class

### InMemoryDBText

InMemoryDBFilterField representing a text field in a InMemoryDB index.](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBText)[Class

### InMemoryDBFilterExpression

Logical expression of InMemoryDBFilterFields.](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterExpression)[Class

### InMemoryVectorStore

InMemoryVectorStore vector database.](/python/langchain-aws/vectorstores/inmemorydb/base/InMemoryVectorStore)[Class

### InMemoryVectorStoreRetriever

Retriever for InMemoryVectorStore.](/python/langchain-aws/vectorstores/inmemorydb/base/InMemoryVectorStoreRetriever)[Class

### InMemoryDBDistanceMetric

Distance metrics for Redis vector fields.](/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBDistanceMetric)[Class

### InMemoryDBField

Base class for Redis fields.](/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBField)[Class

### TextFieldSchema

Schema for text fields in Redis.](/python/langchain-aws/vectorstores/inmemorydb/schema/TextFieldSchema)[Class

### TagFieldSchema

Schema for tag fields in Redis.](/python/langchain-aws/vectorstores/inmemorydb/schema/TagFieldSchema)[Class

### NumericFieldSchema

Schema for numeric fields in Redis.](/python/langchain-aws/vectorstores/inmemorydb/schema/NumericFieldSchema)[Class

### InMemoryDBVectorField

Base class for Redis vector fields.](/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBVectorField)[Class

### FlatVectorField

Schema for flat vector fields in Redis.](/python/langchain-aws/vectorstores/inmemorydb/schema/FlatVectorField)[Class

### HNSWVectorField

Schema for HNSW vector fields in Redis.](/python/langchain-aws/vectorstores/inmemorydb/schema/HNSWVectorField)[Class

### InMemoryDBModel

Schema for MemoryDB index.](/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBModel)[Class

### InMemorySemanticCache

Cache that uses MemoryDB as a vector-store backend.](/python/langchain-aws/vectorstores/inmemorydb/cache/InMemorySemanticCache)[Class

### AmazonS3Vectors

S3Vectors is Amazon S3 Vectors database.](/python/langchain-aws/vectorstores/s3_vectors/base/AmazonS3Vectors)[Class

### ValkeyVectorStore

Valkey vector database.](/python/langchain-aws/vectorstores/valkey/base/ValkeyVectorStore)

## Functions

[Function

### setup\_logging](/python/langchain-aws/setup_logging)[Function

### get\_system\_message](/python/langchain-aws/function_calling/get_system_message)[Function

### convert\_to\_anthropic\_tool](/python/langchain-aws/function_calling/convert_to_anthropic_tool)[Function

### enforce\_stop\_tokens

Cut off the text as soon as any stop words occur.](/python/langchain-aws/utils/enforce_stop_tokens)[Function

### anthropic\_tokens\_supported

Check if all requirements for Anthropic count\_tokens() are met.](/python/langchain-aws/utils/anthropic_tokens_supported)[Function

### count\_tokens\_api\_supported\_for\_model](/python/langchain-aws/utils/count_tokens_api_supported_for_model)[Function

### get\_num\_tokens\_anthropic

Get the number of tokens in a string of text.](/python/langchain-aws/utils/get_num_tokens_anthropic)[Function

### get\_token\_ids\_anthropic

Get the token IDs for a string of text.](/python/langchain-aws/utils/get_token_ids_anthropic)[Function

### create\_aws\_client

Helper function to validate AWS credentials and create an AWS client.](/python/langchain-aws/utils/create_aws_client)[Function

### create\_aws\_bedrock\_runtime\_client

Create a `BedrockRuntimeClient` from `aws-sdk-bedrock-runtime`.](/python/langchain-aws/utils/create_aws_bedrock_runtime_client)[Function

### thinking\_in\_params

Check if the thinking parameter is enabled in the request.](/python/langchain-aws/utils/thinking_in_params)[Function

### trim\_message\_whitespace

Trim trailing whitespace from final AIMessage content.](/python/langchain-aws/utils/trim_message_whitespace)[Function

### extract\_tool\_calls](/python/langchain-aws/llms/bedrock/extract_tool_calls)[Function

### enforce\_stop\_tokens

Cut off the text as soon as any stop words occur.](/python/langchain-aws/llms/sagemaker_endpoint/enforce_stop_tokens)[Function

### convert\_messages\_to\_prompt\_llama

Convert a list of messages to a prompt for llama.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama)[Function

### convert\_messages\_to\_prompt\_llama3

Convert a list of messages to a prompt for Llama 3.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama3)[Function

### convert\_messages\_to\_prompt\_llama4

Convert a list of messages to a prompt for Llama 4.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama4)[Function

### convert\_messages\_to\_prompt\_anthropic

Format a list of messages into a full prompt for the Anthropic model](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_anthropic)[Function

### convert\_messages\_to\_prompt\_mistral

Convert a list of messages to a prompt for mistral.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_mistral)[Function

### convert\_messages\_to\_prompt\_deepseek

Convert a list of messages to a prompt for DeepSeek-R1.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_deepseek)[Function

### convert\_messages\_to\_prompt\_writer

Convert a list of messages to a prompt for Writer.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_writer)[Function

### convert\_messages\_to\_prompt\_qwen

Convert a list of messages to a ChatML prompt for Qwen models.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_qwen)[Function

### convert\_messages\_to\_prompt\_openai

Convert a list of messages to a Harmony format prompt for OpenAI API.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_openai)[Function

### trim\_query

Trim the query to only include Cypher keywords.](/python/langchain-aws/chains/graph_qa/neptune_cypher/trim_query)[Function

### extract\_cypher

Extract Cypher code from text using Regex.](/python/langchain-aws/chains/graph_qa/neptune_cypher/extract_cypher)[Function

### use\_simple\_prompt

Decides whether to use the simple prompt](/python/langchain-aws/chains/graph_qa/neptune_cypher/use_simple_prompt)[Function

### get\_prompt

Selects the final prompt](/python/langchain-aws/chains/graph_qa/neptune_cypher/get_prompt)[Function

### create\_neptune\_opencypher\_qa\_chain

Chain for question-answering against a Neptune graph](/python/langchain-aws/chains/graph_qa/neptune_cypher/create_neptune_opencypher_qa_chain)[Function

### extract\_sparql

Extract SPARQL code from a text.](/python/langchain-aws/chains/graph_qa/neptune_sparql/extract_sparql)[Function

### get\_prompt

Selects the final prompt.](/python/langchain-aws/chains/graph_qa/neptune_sparql/get_prompt)[Function

### create\_neptune\_sparql\_qa\_chain

Chain for question-answering against a Neptune graph](/python/langchain-aws/chains/graph_qa/neptune_sparql/create_neptune_sparql_qa_chain)[Function

### get\_boto\_session

Construct the boto3 session](/python/langchain-aws/agents/utils/get_boto_session)[Function

### parse\_agent\_response

Parses the raw response from Bedrock Agent](/python/langchain-aws/agents/utils/parse_agent_response)[Function

### clean\_excerpt

Clean an excerpt from Kendra.](/python/langchain-aws/retrievers/kendra/clean_excerpt)[Function

### combined\_text

Combine a ResultItem title and excerpt into a single string.](/python/langchain-aws/retrievers/kendra/combined_text)[Function

### create\_code\_interpreter\_toolkit

Create and setup a CodeInterpreterToolkit.](/python/langchain-aws/tools/code_interpreter_toolkit/create_code_interpreter_toolkit)[Function

### create\_thread\_aware\_tools

Create thread-aware browser tools that use the session manager.](/python/langchain-aws/tools/browser_tools/create_thread_aware_tools)[Function

### create\_browser\_toolkit

Create a BrowserToolkit with thread support.](/python/langchain-aws/tools/browser_toolkit/create_browser_toolkit)[Function

### aget\_current\_page

Asynchronously get the current page of the browser.](/python/langchain-aws/tools/utils/aget_current_page)[Function

### get\_current\_page

Get the current page of the browser.](/python/langchain-aws/tools/utils/get_current_page)[Function

### get\_session\_key

Build a session key from RunnableConfig.](/python/langchain-aws/tools/utils/get_session_key)[Function

### check\_operator\_misuse

Decorator to check for misuse of equality operators.](/python/langchain-aws/vectorstores/inmemorydb/filters/check_operator_misuse)[Function

### check\_index\_exists

Check if MemoryDB index exists.](/python/langchain-aws/vectorstores/inmemorydb/base/check_index_exists)[Function

### read\_schema

Read in the index schema from a dict or yaml file.](/python/langchain-aws/vectorstores/inmemorydb/schema/read_schema)[Function

### check\_index\_exists

Check if Valkey index exists.](/python/langchain-aws/vectorstores/valkey/base/check_index_exists)

## Modules

[Module

### langchain\_aws](/python/langchain-aws/langchain_aws)[Module

### function\_calling

Methods for creating function specs in the style of Bedrock Functions](/python/langchain-aws/function_calling)[Module

### utils](/python/langchain-aws/utils)[Module

### llms](/python/langchain-aws/llms)[Module

### bedrock](/python/langchain-aws/llms/bedrock)[Module

### sagemaker\_endpoint

Sagemaker InvokeEndpoint API.](/python/langchain-aws/llms/sagemaker_endpoint)[Module

### middleware

Middleware for LangChain AWS integrations.](/python/langchain-aws/middleware)[Module

### prompt\_caching](/python/langchain-aws/middleware/prompt_caching)[Module

### chat\_models](/python/langchain-aws/chat_models)[Module

### anthropic

Anthropic Bedrock chat models.](/python/langchain-aws/chat_models/anthropic)[Module

### bedrock\_nova\_sonic

Amazon Nova Sonic bidirectional streaming chat model.](/python/langchain-aws/chat_models/bedrock_nova_sonic)[Module

### bedrock](/python/langchain-aws/chat_models/bedrock)[Module

### bedrock\_converse](/python/langchain-aws/chat_models/bedrock_converse)[Module

### sagemaker\_endpoint

Sagemaker Chat Model.](/python/langchain-aws/chat_models/sagemaker_endpoint)[Module

### runnables](/python/langchain-aws/runnables)[Module

### q\_business](/python/langchain-aws/runnables/q_business)[Module

### chains](/python/langchain-aws/chains)[Module

### graph\_qa](/python/langchain-aws/chains/graph_qa)[Module

### neptune\_cypher](/python/langchain-aws/chains/graph_qa/neptune_cypher)[Module

### prompts](/python/langchain-aws/chains/graph_qa/prompts)[Module

### neptune\_sparql

Question answering over an RDF or OWL graph using SPARQL.](/python/langchain-aws/chains/graph_qa/neptune_sparql)[Module

### agents](/python/langchain-aws/agents)[Module

### types](/python/langchain-aws/agents/types)[Module

### base](/python/langchain-aws/agents/base)[Module

### utils](/python/langchain-aws/agents/utils)[Module

### retrievers](/python/langchain-aws/retrievers)[Module

### s3\_vectors](/python/langchain-aws/retrievers/s3_vectors)[Module

### bedrock](/python/langchain-aws/retrievers/bedrock)[Module

### kendra](/python/langchain-aws/retrievers/kendra)[Module

### graphs](/python/langchain-aws/graphs)[Module

### neptune\_graph](/python/langchain-aws/graphs/neptune_graph)[Module

### neptune\_rdf\_graph](/python/langchain-aws/graphs/neptune_rdf_graph)[Module

### document\_compressors](/python/langchain-aws/document_compressors)[Module

### rerank](/python/langchain-aws/document_compressors/rerank)[Module

### tools](/python/langchain-aws/tools)[Module

### browser\_session\_manager](/python/langchain-aws/tools/browser_session_manager)[Module

### nova\_tools

Nova system tools helpers.](/python/langchain-aws/tools/nova_tools)[Module

### code\_interpreter\_toolkit](/python/langchain-aws/tools/code_interpreter_toolkit)[Module

### browser\_tools

Thread-aware browser tools that work with the browser session manager.](/python/langchain-aws/tools/browser_tools)[Module

### browser\_toolkit

Toolkit for navigating web with AWS browser with thread support.](/python/langchain-aws/tools/browser_toolkit)[Module

### utils

Utilities for the Playwright browser tools.](/python/langchain-aws/tools/utils)[Module

### embeddings](/python/langchain-aws/embeddings)[Module

### bedrock](/python/langchain-aws/embeddings/bedrock)[Module

### vectorstores](/python/langchain-aws/vectorstores)[Module

### inmemorydb](/python/langchain-aws/vectorstores/inmemorydb)[Module

### constants](/python/langchain-aws/vectorstores/inmemorydb/constants)[Module

### filters](/python/langchain-aws/vectorstores/inmemorydb/filters)[Module

### base

Wrapper around MemoryDB vector database.](/python/langchain-aws/vectorstores/inmemorydb/base)[Module

### schema](/python/langchain-aws/vectorstores/inmemorydb/schema)[Module

### cache](/python/langchain-aws/vectorstores/inmemorydb/cache)[Module

### s3\_vectors](/python/langchain-aws/vectorstores/s3_vectors)[Module

### base](/python/langchain-aws/vectorstores/s3_vectors/base)[Module

### valkey](/python/langchain-aws/vectorstores/valkey)[Module

### filters

Valkey filter expressions - aliases for InMemoryDB filters.](/python/langchain-aws/vectorstores/valkey/filters)[Module

### base

Wrapper around Valkey vector database.](/python/langchain-aws/vectorstores/valkey/base)[Module

### data

Model profile data. All edits should be made in profile\_augmentations.toml.](/python/langchain-aws/data)

## Types

[Type

### OutputType](/python/langchain-aws/agents/types/OutputType)[Type

### FilterValue](/python/langchain-aws/retrievers/bedrock/FilterValue)[Type

### DocumentAttributeValueType

Possible types of a DocumentAttributeValue.](/python/langchain-aws/retrievers/kendra/DocumentAttributeValueType)[Type

### MediaInput](/python/langchain-aws/embeddings/bedrock/MediaInput)

Copy page

### On This Page

DescriptionClasses112Functions45Modules56Types4