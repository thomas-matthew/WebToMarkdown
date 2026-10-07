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

### BedrockEmbeddings

Bedrock embedding models.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html](/python/langchain-aws/embeddings/bedrock/BedrockEmbeddings)[Class

### AmazonQ

Amazon Q Runnable wrapper.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html](/python/langchain-aws/runnables/q_business/AmazonQ)[Class

### SearchFilter

Filter configuration for retrieval.](/python/langchain-aws/retrievers/bedrock/SearchFilter)[Class

### VectorSearchConfig

Configuration for vector search.](/python/langchain-aws/retrievers/bedrock/VectorSearchConfig)[Class

### RetrievalConfig

Configuration for retrieval.](/python/langchain-aws/retrievers/bedrock/RetrievalConfig)[Class

### AmazonKnowledgeBasesRetriever

`Amazon Bedrock Knowledge Bases` retrieval.

See https://aws.amazon.com/bedrock/knowledge-bases for more info.

Args:
knowledge\_base\_id: Knowledge Base ID.
region\_name: The aws](/python/langchain-aws/retrievers/bedrock/AmazonKnowledgeBasesRetriever)[Class

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

### InMemoryDBFilterOperator

InMemoryDBFilterOperator enumerator is used to create
InMemoryDBFilterExpressions](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterOperator)[Class

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

Logical expression of InMemoryDBFilterFields.

InMemoryDBFilterExpressions can be combined using the & and | operators to create
complex logical expressions that evaluate to the InMemoryDB Query langu](/python/langchain-aws/vectorstores/inmemorydb/filters/InMemoryDBFilterExpression)[Class

### InMemoryVectorStore

InMemoryVectorStore vector database.

To use, you should have the `redis` python package installed
for AWS MemoryDB

.. code-block:: bash

Once running, you can connect to the MemoryDB server with](/python/langchain-aws/vectorstores/inmemorydb/base/InMemoryVectorStore)[Class

### InMemoryVectorStoreRetriever

Retriever for InMemoryVectorStore.](/python/langchain-aws/vectorstores/inmemorydb/base/InMemoryVectorStoreRetriever)[Class

### InMemorySemanticCache

Cache that uses MemoryDB as a vector-store backend.](/python/langchain-aws/vectorstores/inmemorydb/cache/InMemorySemanticCache)[Class

### BedrockRerank

Document compressor that uses AWS Bedrock Rerank API.](/python/langchain-aws/document_compressors/rerank/BedrockRerank)[Class

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

### AnthropicTool](/python/langchain-aws/llms/bedrock/AnthropicTool)[Class

### LLMInputOutputAdapter

Adapter class to prepare the inputs from Langchain to a format
that LLM model expects.

It also provides helper function to extract
the generated text from the model response.](/python/langchain-aws/llms/bedrock/LLMInputOutputAdapter)[Class

### BedrockBase

Base class for Bedrock models.](/python/langchain-aws/llms/bedrock/BedrockBase)[Class

### BedrockLLM

Bedrock models.

To authenticate, the AWS client uses the following methods to
automatically load credentials:
https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html

If a spec](/python/langchain-aws/llms/bedrock/BedrockLLM)[Class

### LineIterator

A helper class for parsing the byte stream input.

```
The output of the model will be in the following format:

b'{"outputs": [" a"]}
```

'
b'{"outputs": [" challenging"]}
'
b'{"outputs": ["](/python/langchain-aws/llms/sagemaker_endpoint/LineIterator)[Class

### ContentHandlerBase

A handler class to transform input from LLM to a
format that SageMaker endpoint expects.

Similarly, the class handles transforming output from the
SageMaker endpoint to a format that LLM class expect](/python/langchain-aws/llms/sagemaker_endpoint/ContentHandlerBase)[Class

### LLMContentHandler

Content handler for LLM class.](/python/langchain-aws/llms/sagemaker_endpoint/LLMContentHandler)[Class

### SagemakerEndpoint

Sagemaker Inference Endpoint models.

To use, you must supply the endpoint name from your deployed
Sagemaker model & the region where it is deployed.

To authenticate, the AWS client uses the followin](/python/langchain-aws/llms/sagemaker_endpoint/SagemakerEndpoint)[Class

### NeptuneRdfGraph

Neptune wrapper for RDF graph operations.](/python/langchain-aws/graphs/neptune_rdf_graph/NeptuneRdfGraph)[Class

### NeptuneQueryException

Exception for the Neptune queries.](/python/langchain-aws/graphs/neptune_graph/NeptuneQueryException)[Class

### BaseNeptuneGraph](/python/langchain-aws/graphs/neptune_graph/BaseNeptuneGraph)[Class

### NeptuneAnalyticsGraph

Neptune Analytics wrapper for graph operations.](/python/langchain-aws/graphs/neptune_graph/NeptuneAnalyticsGraph)[Class

### NeptuneGraph

Neptune wrapper for graph operations.](/python/langchain-aws/graphs/neptune_graph/NeptuneGraph)[Class

### ChatPromptAdapter

Adapter class to prepare the inputs from Langchain to prompt format
that Chat model expects.](/python/langchain-aws/chat_models/bedrock/ChatPromptAdapter)[Class

### ChatBedrock

A chat model that uses the Bedrock API.](/python/langchain-aws/chat_models/bedrock/ChatBedrock)[Class

### ChatBedrockConverse

Bedrock chat model integration built on the Bedrock converse API.

This implementation will eventually replace the existing ChatBedrock implementation
once the Bedrock converse API has feature parity](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse)

## Functions

[Function

### setup\_logging](/python/langchain-aws/setup_logging)[Function

### enforce\_stop\_tokens

Cut off the text as soon as any stop words occur.](/python/langchain-aws/utils/enforce_stop_tokens)[Function

### anthropic\_tokens\_supported

Check if all requirements for Anthropic count\_tokens() are met.](/python/langchain-aws/utils/anthropic_tokens_supported)[Function

### get\_num\_tokens\_anthropic

Get the number of tokens in a string of text.](/python/langchain-aws/utils/get_num_tokens_anthropic)[Function

### get\_token\_ids\_anthropic

Get the token ids for a string of text.](/python/langchain-aws/utils/get_token_ids_anthropic)[Function

### thinking\_in\_params

Check if the thinking parameter is enabled in the request.](/python/langchain-aws/utils/thinking_in_params)[Function

### get\_system\_message](/python/langchain-aws/function_calling/get_system_message)[Function

### convert\_to\_anthropic\_tool](/python/langchain-aws/function_calling/convert_to_anthropic_tool)[Function

### trim\_query

Trim the query to only include Cypher keywords.](/python/langchain-aws/chains/graph_qa/neptune_cypher/trim_query)[Function

### extract\_cypher

Extract Cypher code from text using Regex.](/python/langchain-aws/chains/graph_qa/neptune_cypher/extract_cypher)[Function

### use\_simple\_prompt

Decides whether to use the simple prompt](/python/langchain-aws/chains/graph_qa/neptune_cypher/use_simple_prompt)[Function

### get\_prompt

Selects the final prompt](/python/langchain-aws/chains/graph_qa/neptune_cypher/get_prompt)[Function

### create\_neptune\_opencypher\_qa\_chain

Chain for question-answering against a Neptune graph
by generating openCypher statements.

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only](/python/langchain-aws/chains/graph_qa/neptune_cypher/create_neptune_opencypher_qa_chain)[Function

### extract\_sparql

Extract SPARQL code from a text.](/python/langchain-aws/chains/graph_qa/neptune_sparql/extract_sparql)[Function

### get\_prompt

Selects the final prompt.](/python/langchain-aws/chains/graph_qa/neptune_sparql/get_prompt)[Function

### create\_neptune\_sparql\_qa\_chain

Chain for question-answering against a Neptune graph
by generating SPARQL statements.

*Security note*: Make sure that the database connection uses credentials
that are narrowly-scoped to only inc](/python/langchain-aws/chains/graph_qa/neptune_sparql/create_neptune_sparql_qa_chain)[Function

### clean\_excerpt

Clean an excerpt from Kendra.](/python/langchain-aws/retrievers/kendra/clean_excerpt)[Function

### combined\_text

Combine a ResultItem title and excerpt into a single string.](/python/langchain-aws/retrievers/kendra/combined_text)[Function

### read\_schema

Read in the index schema from a dict or yaml file.

Check if it is a dict and return RedisModel otherwise, check if it's a path and
read in the file assuming it's a yaml file and return a RedisModel](/python/langchain-aws/vectorstores/inmemorydb/schema/read_schema)[Function

### check\_operator\_misuse

Decorator to check for misuse of equality operators.](/python/langchain-aws/vectorstores/inmemorydb/filters/check_operator_misuse)[Function

### check\_index\_exists

Check if MemoryDB index exists.](/python/langchain-aws/vectorstores/inmemorydb/base/check_index_exists)[Function

### get\_boto\_session

Construct the boto3 session](/python/langchain-aws/agents/utils/get_boto_session)[Function

### parse\_agent\_response

Parses the raw response from Bedrock Agent](/python/langchain-aws/agents/utils/parse_agent_response)[Function

### extract\_tool\_calls](/python/langchain-aws/llms/bedrock/extract_tool_calls)[Function

### enforce\_stop\_tokens

Cut off the text as soon as any stop words occur.](/python/langchain-aws/llms/sagemaker_endpoint/enforce_stop_tokens)[Function

### convert\_messages\_to\_prompt\_llama

Convert a list of messages to a prompt for llama.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama)[Function

### convert\_messages\_to\_prompt\_llama3

Convert a list of messages to a prompt for llama.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_llama3)[Function

### convert\_messages\_to\_prompt\_anthropic

Format a list of messages into a full prompt for the Anthropic model
Args:
messages (List[BaseMessage]): List of BaseMessage to combine.
human\_prompt (str, optional): Human prompt](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_anthropic)[Function

### convert\_messages\_to\_prompt\_mistral

Convert a list of messages to a prompt for mistral.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_mistral)[Function

### convert\_messages\_to\_prompt\_deepseek

Convert a list of messages to a prompt for DeepSeek-R1.](/python/langchain-aws/chat_models/bedrock/convert_messages_to_prompt_deepseek)

## Modules

[Module

### langchain\_aws](/python/langchain-aws/langchain_aws)[Module

### utils](/python/langchain-aws/utils)[Module

### function\_calling

Methods for creating function specs in the style of Bedrock Functions
for supported model providers](/python/langchain-aws/function_calling)[Module

### embeddings](/python/langchain-aws/embeddings)[Module

### bedrock](/python/langchain-aws/embeddings/bedrock)[Module

### runnables](/python/langchain-aws/runnables)[Module

### q\_business](/python/langchain-aws/runnables/q_business)[Module

### chains](/python/langchain-aws/chains)[Module

### graph\_qa](/python/langchain-aws/chains/graph_qa)[Module

### prompts](/python/langchain-aws/chains/graph_qa/prompts)[Module

### neptune\_cypher](/python/langchain-aws/chains/graph_qa/neptune_cypher)[Module

### neptune\_sparql

Question answering over an RDF or OWL graph using SPARQL.](/python/langchain-aws/chains/graph_qa/neptune_sparql)[Module

### retrievers](/python/langchain-aws/retrievers)[Module

### bedrock](/python/langchain-aws/retrievers/bedrock)[Module

### kendra](/python/langchain-aws/retrievers/kendra)[Module

### vectorstores](/python/langchain-aws/vectorstores)[Module

### inmemorydb](/python/langchain-aws/vectorstores/inmemorydb)[Module

### schema](/python/langchain-aws/vectorstores/inmemorydb/schema)[Module

### filters](/python/langchain-aws/vectorstores/inmemorydb/filters)[Module

### constants](/python/langchain-aws/vectorstores/inmemorydb/constants)[Module

### base

Wrapper around MemoryDB vector database.](/python/langchain-aws/vectorstores/inmemorydb/base)[Module

### cache](/python/langchain-aws/vectorstores/inmemorydb/cache)[Module

### document\_compressors](/python/langchain-aws/document_compressors)[Module

### rerank](/python/langchain-aws/document_compressors/rerank)[Module

### agents](/python/langchain-aws/agents)[Module

### utils](/python/langchain-aws/agents/utils)[Module

### types](/python/langchain-aws/agents/types)[Module

### base](/python/langchain-aws/agents/base)[Module

### llms](/python/langchain-aws/llms)[Module

### bedrock](/python/langchain-aws/llms/bedrock)[Module

### sagemaker\_endpoint

Sagemaker InvokeEndpoint API.](/python/langchain-aws/llms/sagemaker_endpoint)[Module

### graphs](/python/langchain-aws/graphs)[Module

### neptune\_rdf\_graph](/python/langchain-aws/graphs/neptune_rdf_graph)[Module

### neptune\_graph](/python/langchain-aws/graphs/neptune_graph)[Module

### chat\_models](/python/langchain-aws/chat_models)[Module

### bedrock](/python/langchain-aws/chat_models/bedrock)[Module

### bedrock\_converse](/python/langchain-aws/chat_models/bedrock_converse)

## Types

[Type

### FilterValue](/python/langchain-aws/retrievers/bedrock/FilterValue)[Type

### DocumentAttributeValueType

Possible types of a DocumentAttributeValue.

Dates are also represented as str.](/python/langchain-aws/retrievers/kendra/DocumentAttributeValueType)[Type

### OutputType](/python/langchain-aws/agents/types/OutputType)

Copy page

### On This Page

DescriptionClasses65Functions30Modules37Types3