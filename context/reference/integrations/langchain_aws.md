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

Class

### [AnthropicTool](https://reference.langchain.com/python/langchain-aws/function_calling/AnthropicTool)

Class

### [FunctionDescription](https://reference.langchain.com/python/langchain-aws/function_calling/FunctionDescription)

Representation of a callable function to send to an LLM.

Class

### [ToolDescription](https://reference.langchain.com/python/langchain-aws/function_calling/ToolDescription)

Representation of a callable function to the OpenAI API.

Class

### [ToolsOutputParser](https://reference.langchain.com/python/langchain-aws/function_calling/ToolsOutputParser)

Class

### [AnthropicTool](https://reference.langchain.com/python/langchain-aws/llms/bedrock/AnthropicTool)

Class

### [LLMInputOutputAdapter](https://reference.langchain.com/python/langchain-aws/llms/bedrock/LLMInputOutputAdapter)

Adapter class to prepare the inputs from Langchain to a format
that LLM model expects.

It also provides helper function to extract
the generated text from the model response.

Class

### [BedrockBase](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase)

Base class for Bedrock models.

Class

### [BedrockLLM](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockLLM)

Bedrock models.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html

If a spec

Class

### [LineIterator](https://reference.langchain.com/python/langchain-aws/llms/sagemaker_endpoint/LineIterator)

A helper class for parsing the byte stream input.

```
The output of the model will be in the following format:

b'{"outputs": [" a"]}
```

'
b'{"outputs": [" challenging"]}
'
b'{"outputs": ["

Class

### [ContentHandlerBase](https://reference.langchain.com/python/langchain-aws/llms/sagemaker_endpoint/ContentHandlerBase)

A handler class to transform input from LLM to a
format that SageMaker endpoint expects.

Similarly, the class handles transforming output from the
SageMaker endpoint to a format that LLM class expect

Class

### [LLMContentHandler](https://reference.langchain.com/python/langchain-aws/llms/sagemaker_endpoint/LLMContentHandler)

Content handler for LLM class.

Class

### [SagemakerEndpoint](https://reference.langchain.com/python/langchain-aws/llms/sagemaker_endpoint/SagemakerEndpoint)

Sagemaker Inference Endpoint models.

To use, you must supply the endpoint name from your deployed
Sagemaker model & the region where it is deployed.

To authenticate, the AWS client uses the followin

Class

### [AmazonQ](https://reference.langchain.com/python/langchain-aws/runnables/q_business/AmazonQ)

Amazon Q Runnable wrapper.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html

Class

### [InMemoryVectorStore](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/base/InMemoryVectorStore)

InMemoryVectorStore vector database.

To use, you should have the `redis` python package installed
for AWS MemoryDB

.. code-block:: bash

Once running, you can connect to the MemoryDB server with

Class

### [InMemoryVectorStoreRetriever](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/base/InMemoryVectorStoreRetriever)

Retriever for InMemoryVectorStore.

Class

### [InMemorySemanticCache](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/cache/InMemorySemanticCache)

Cache that uses MemoryDB as a vector-store backend.

Class

### [InMemoryDBDistanceMetric](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBDistanceMetric)

Distance metrics for Redis vector fields.

Class

### [InMemoryDBField](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBField)

Base class for Redis fields.

Class

### [TextFieldSchema](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/TextFieldSchema)

Schema for text fields in Redis.

Class

### [TagFieldSchema](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/TagFieldSchema)

Schema for tag fields in Redis.

Class

### [NumericFieldSchema](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/NumericFieldSchema)

Schema for numeric fields in Redis.

Class

### [InMemoryDBVectorField](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBVectorField)

Base class for Redis vector fields.

Class

### [FlatVectorField](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/FlatVectorField)

Schema for flat vector fields in Redis.

Class

### [HNSWVectorField](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/HNSWVectorField)

Schema for HNSW vector fields in Redis.

Class

### [InMemoryDBModel](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/InMemoryDBModel)

Schema for MemoryDB index.

Class

### [InMemoryDBFilterOperator](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterOperator)

InMemoryDBFilterOperator enumerator is used to create
InMemoryDBFilterExpressions

Class

### [InMemoryDBFilter](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilter)

Collection of InMemoryDBFilterFields.

Class

### [InMemoryDBFilterField](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterField)

Base class for InMemoryDBFilterFields.

Class

### [InMemoryDBTag](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBTag)

InMemoryDBFilterField representing a tag in a InMemoryDB index.

Class

### [InMemoryDBNum](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBNum)

InMemoryDBFilterField representing a numeric field in a InMemoryDB index.

Class

### [InMemoryDBText](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBText)

InMemoryDBFilterField representing a text field in a InMemoryDB index.

Class

### [InMemoryDBFilterExpression](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterExpression)

Logical expression of InMemoryDBFilterFields.

InMemoryDBFilterExpressions can be combined using the & and | operators to create
complex logical expressions that evaluate to the InMemoryDB Query langu

Class

### [BedrockRerank](https://reference.langchain.com/python/langchain-aws/document_compressors/rerank/BedrockRerank)

Document compressor that uses AWS Bedrock Rerank API.

Class

### [ChatPromptAdapter](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatPromptAdapter)

Adapter class to prepare the inputs from Langchain to prompt format
that Chat model expects.

Class

### [ChatBedrock](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock)

A chat model that uses the Bedrock API.

Class

### [ChatBedrockConverse](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse)

Bedrock chat model integration built on the Bedrock converse API.

This implementation will eventually replace the existing ChatBedrock implementation
once the Bedrock converse API has feature parity

Class

### [NeptuneRdfGraph](https://reference.langchain.com/python/langchain-aws/graphs/neptune_rdf_graph/NeptuneRdfGraph)

Neptune wrapper for RDF graph operations.

Class

### [NeptuneQueryException](https://reference.langchain.com/python/langchain-aws/graphs/neptune_graph/NeptuneQueryException)

Exception for the Neptune queries.

Class

### [BaseNeptuneGraph](https://reference.langchain.com/python/langchain-aws/graphs/neptune_graph/BaseNeptuneGraph)

Class

### [NeptuneAnalyticsGraph](https://reference.langchain.com/python/langchain-aws/graphs/neptune_graph/NeptuneAnalyticsGraph)

Neptune Analytics wrapper for graph operations.

Class

### [NeptuneGraph](https://reference.langchain.com/python/langchain-aws/graphs/neptune_graph/NeptuneGraph)

Neptune wrapper for graph operations.

Class

### [BedrockAgentsRunnable](https://reference.langchain.com/python/langchain-aws/agents/base/BedrockAgentsRunnable)

Invoke a Bedrock Agent

Class

### [BedrockInlineAgentsRunnable](https://reference.langchain.com/python/langchain-aws/agents/base/BedrockInlineAgentsRunnable)

Invoke Bedrock Inline Agent as a Runnable.

Class

### [BedrockAgentFinish](https://reference.langchain.com/python/langchain-aws/agents/types/BedrockAgentFinish)

AgentFinish with session id information.

Class

### [BedrockAgentAction](https://reference.langchain.com/python/langchain-aws/agents/types/BedrockAgentAction)

AgentAction with session id information.

Class

### [GuardrailConfiguration](https://reference.langchain.com/python/langchain-aws/agents/types/GuardrailConfiguration)

Class

### [KnowledgebaseConfiguration](https://reference.langchain.com/python/langchain-aws/agents/types/KnowledgebaseConfiguration)

Class

### [InlineAgentConfiguration](https://reference.langchain.com/python/langchain-aws/agents/types/InlineAgentConfiguration)

Configurations for an Inline Agent.

Class

### [BedrockEmbeddings](https://reference.langchain.com/python/langchain-aws/embeddings/bedrock/BedrockEmbeddings)

Bedrock embedding models.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html

Class

### [SearchFilter](https://reference.langchain.com/python/langchain-aws/retrievers/bedrock/SearchFilter)

Filter configuration for retrieval.

Class

### [VectorSearchConfig](https://reference.langchain.com/python/langchain-aws/retrievers/bedrock/VectorSearchConfig)

Configuration for vector search.

Class

### [RetrievalConfig](https://reference.langchain.com/python/langchain-aws/retrievers/bedrock/RetrievalConfig)

Configuration for retrieval.

Class

### [AmazonKnowledgeBasesRetriever](https://reference.langchain.com/python/langchain-aws/retrievers/bedrock/AmazonKnowledgeBasesRetriever)

`Amazon Bedrock Knowledge Bases` retrieval.

See https://aws.amazon.com/bedrock/knowledge-bases for more info.

Args:
knowledge\_base\_id: Knowledge Base ID.
region\_name: The aws

Class

### [Highlight](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/Highlight)

Information that highlights the keywords in the excerpt.

Class

### [TextWithHighLights](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/TextWithHighLights)

Text with highlights.

Class

### [AdditionalResultAttributeValue](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/AdditionalResultAttributeValue)

Value of an additional result attribute.

Class

### [AdditionalResultAttribute](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/AdditionalResultAttribute)

Additional result attribute.

Class

### [DocumentAttributeValue](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/DocumentAttributeValue)

Value of a document attribute.

Class

### [DocumentAttribute](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/DocumentAttribute)

Document attribute.

Class

### [ResultItem](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/ResultItem)

Base class of a result item.

Class

### [QueryResultItem](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/QueryResultItem)

Query API result item.

Class

### [RetrieveResultItem](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/RetrieveResultItem)

Retrieve API result item.

Class

### [QueryResult](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/QueryResult)

`Amazon Kendra Query API` search result.

Class

### [RetrieveResult](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/RetrieveResult)

`Amazon Kendra Retrieve API` search result.

Class

### [AmazonKendraRetriever](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/AmazonKendraRetriever)

`Amazon Kendra Index` retriever.

## Functions

Function

### [setup\_logging](https://reference.langchain.com/python/langchain-aws/setup_logging)

Function

### [get\_system\_message](https://reference.langchain.com/python/langchain-aws/function_calling/get_system_message)

Function

### [convert\_to\_anthropic\_tool](https://reference.langchain.com/python/langchain-aws/function_calling/convert_to_anthropic_tool)

Function

### [enforce\_stop\_tokens](https://reference.langchain.com/python/langchain-aws/utils/enforce_stop_tokens)

Cut off the text as soon as any stop words occur.

Function

### [anthropic\_tokens\_supported](https://reference.langchain.com/python/langchain-aws/utils/anthropic_tokens_supported)

Check if all requirements for Anthropic count\_tokens() are met.

Function

### [get\_num\_tokens\_anthropic](https://reference.langchain.com/python/langchain-aws/utils/get_num_tokens_anthropic)

Get the number of tokens in a string of text.

Function

### [get\_token\_ids\_anthropic](https://reference.langchain.com/python/langchain-aws/utils/get_token_ids_anthropic)

Get the token ids for a string of text.

Function

### [thinking\_in\_params](https://reference.langchain.com/python/langchain-aws/utils/thinking_in_params)

Check if the thinking parameter is enabled in the request.

Function

### [extract\_tool\_calls](https://reference.langchain.com/python/langchain-aws/llms/bedrock/extract_tool_calls)

Function

### [enforce\_stop\_tokens](https://reference.langchain.com/python/langchain-aws/llms/sagemaker_endpoint/enforce_stop_tokens)

Cut off the text as soon as any stop words occur.

Function

### [check\_index\_exists](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/base/check_index_exists)

Check if MemoryDB index exists.

Function

### [read\_schema](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema/read_schema)

Read in the index schema from a dict or yaml file.

Check if it is a dict and return RedisModel otherwise, check if it's a path and
read in the file assuming it's a yaml file and return a RedisModel

Function

### [check\_operator\_misuse](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters/check_operator_misuse)

Decorator to check for misuse of equality operators.

Function

### [convert\_messages\_to\_prompt\_llama](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama)

Convert a list of messages to a prompt for llama.

Function

### [convert\_messages\_to\_prompt\_llama3](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama3)

Convert a list of messages to a prompt for llama.

Function

### [convert\_messages\_to\_prompt\_anthropic](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_anthropic)

Format a list of messages into a full prompt for the Anthropic model
Args:
messages (List[BaseMessage]): List of BaseMessage to combine.
human\_prompt (str, optional): Human prompt

Function

### [convert\_messages\_to\_prompt\_mistral](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_mistral)

Convert a list of messages to a prompt for mistral.

Function

### [convert\_messages\_to\_prompt\_deepseek](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_deepseek)

Convert a list of messages to a prompt for DeepSeek-R1.

Function

### [get\_boto\_session](https://reference.langchain.com/python/langchain-aws/agents/utils/get_boto_session)

Construct the boto3 session

Function

### [parse\_agent\_response](https://reference.langchain.com/python/langchain-aws/agents/utils/parse_agent_response)

Parses the raw response from Bedrock Agent

Function

### [trim\_query](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_cypher/trim_query)

Trim the query to only include Cypher keywords.

Function

### [extract\_cypher](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_cypher/extract_cypher)

Extract Cypher code from text using Regex.

Function

### [use\_simple\_prompt](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_cypher/use_simple_prompt)

Decides whether to use the simple prompt

Function

### [get\_prompt](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_cypher/get_prompt)

Selects the final prompt

Function

### [create\_neptune\_opencypher\_qa\_chain](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_cypher/create_neptune_opencypher_qa_chain)

Chain for question-answering against a Neptune graph
by generating openCypher statements.

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only

Function

### [extract\_sparql](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_sparql/extract_sparql)

Extract SPARQL code from a text.

Function

### [get\_prompt](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_sparql/get_prompt)

Selects the final prompt.

Function

### [create\_neptune\_sparql\_qa\_chain](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_sparql/create_neptune_sparql_qa_chain)

Chain for question-answering against a Neptune graph
by generating SPARQL statements.

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only inc

Function

### [clean\_excerpt](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/clean_excerpt)

Clean an excerpt from Kendra.

Function

### [combined\_text](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/combined_text)

Combine a ResultItem title and excerpt into a single string.

## Modules

Module

### [langchain\_aws](https://reference.langchain.com/python/langchain-aws/langchain_aws)

Module

### [function\_calling](https://reference.langchain.com/python/langchain-aws/function_calling)

Methods for creating function specs in the style of Bedrock Functions
for supported model providers

Module

### [utils](https://reference.langchain.com/python/langchain-aws/utils)

Module

### [llms](https://reference.langchain.com/python/langchain-aws/llms)

Module

### [bedrock](https://reference.langchain.com/python/langchain-aws/llms/bedrock)

Module

### [sagemaker\_endpoint](https://reference.langchain.com/python/langchain-aws/llms/sagemaker_endpoint)

Sagemaker InvokeEndpoint API.

Module

### [runnables](https://reference.langchain.com/python/langchain-aws/runnables)

Module

### [q\_business](https://reference.langchain.com/python/langchain-aws/runnables/q_business)

Module

### [vectorstores](https://reference.langchain.com/python/langchain-aws/vectorstores)

Module

### [inmemorydb](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb)

Module

### [base](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/base)

Wrapper around MemoryDB vector database.

Module

### [cache](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/cache)

Module

### [schema](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/schema)

Module

### [filters](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/filters)

Module

### [constants](https://reference.langchain.com/python/langchain-aws/vectorstores/inmemorydb/constants)

Module

### [document\_compressors](https://reference.langchain.com/python/langchain-aws/document_compressors)

Module

### [rerank](https://reference.langchain.com/python/langchain-aws/document_compressors/rerank)

Module

### [chat\_models](https://reference.langchain.com/python/langchain-aws/chat_models)

Module

### [bedrock](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock)

Module

### [bedrock\_converse](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse)

Module

### [graphs](https://reference.langchain.com/python/langchain-aws/graphs)

Module

### [neptune\_rdf\_graph](https://reference.langchain.com/python/langchain-aws/graphs/neptune_rdf_graph)

Module

### [neptune\_graph](https://reference.langchain.com/python/langchain-aws/graphs/neptune_graph)

Module

### [agents](https://reference.langchain.com/python/langchain-aws/agents)

Module

### [base](https://reference.langchain.com/python/langchain-aws/agents/base)

Module

### [utils](https://reference.langchain.com/python/langchain-aws/agents/utils)

Module

### [types](https://reference.langchain.com/python/langchain-aws/agents/types)

Module

### [embeddings](https://reference.langchain.com/python/langchain-aws/embeddings)

Module

### [bedrock](https://reference.langchain.com/python/langchain-aws/embeddings/bedrock)

Module

### [chains](https://reference.langchain.com/python/langchain-aws/chains)

Module

### [graph\_qa](https://reference.langchain.com/python/langchain-aws/chains/graph_qa)

Module

### [neptune\_cypher](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_cypher)

Module

### [neptune\_sparql](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/neptune_sparql)

Question answering over an RDF or OWL graph using SPARQL.

Module

### [prompts](https://reference.langchain.com/python/langchain-aws/chains/graph_qa/prompts)

Module

### [retrievers](https://reference.langchain.com/python/langchain-aws/retrievers)

Module

### [bedrock](https://reference.langchain.com/python/langchain-aws/retrievers/bedrock)

Module

### [kendra](https://reference.langchain.com/python/langchain-aws/retrievers/kendra)

## Types

Type

### [OutputType](https://reference.langchain.com/python/langchain-aws/agents/types/OutputType)

Type

### [FilterValue](https://reference.langchain.com/python/langchain-aws/retrievers/bedrock/FilterValue)

Type

### [DocumentAttributeValueType](https://reference.langchain.com/python/langchain-aws/retrievers/kendra/DocumentAttributeValueType)

Possible types of a DocumentAttributeValue.

Dates are also represented as str.
