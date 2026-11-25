Classv0.2.14 (latest)●Since v0.1

# ChatBedrockConverse

Bedrock chat model integration built on the Bedrock converse API.

This implementation will eventually replace the existing ChatBedrock implementation
once the Bedrock converse API has feature parity with older Bedrock API.
Specifically the converse API does not yet support custom Bedrock models.

```python
ChatBedrockConverse()
```

## Bases

`BaseChatModel`

**Setup:**

To use Amazon Bedrock make sure you've gone through all the steps described
here: https://docs.aws.amazon.com/bedrock/latest/userguide/setting-up.html

Once that's completed, install the LangChain integration:

```bash
pip install -U langchain-aws
```

Key init args — completion params:

```text
model: str
    Name of BedrockConverse model to use.
temperature: float
    Sampling temperature.
max_tokens: Optional[int]
    Max number of tokens to generate.
```

Key init args — client params:

```text
region_name: Optional[str]
    AWS region to use, e.g. 'us-west-2'.
base_url: Optional[str]
    Bedrock endpoint to use. Needed if you don't want to default to us-east-
    1 endpoint.
credentials_profile_name: Optional[str]
    The name of the profile in the ~/.aws/credentials or ~/.aws/config files.
```

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

```python
from langchain_aws import ChatBedrockConverse

llm = ChatBedrockConverse(
    model="anthropic.claude-3-sonnet-20240229-v1:0",
    temperature=0,
    max_tokens=None,
    # other params...
)
```

**Invoke:**

```python
messages = [
    ("system", "You are a helpful translator. Translate the user sentence to French."),
    ("human", "I love programming."),
]
llm.invoke(messages)
```

```python
AIMessage(content=[{'type': 'text', 'text': "J'aime la programmation."}], response_metadata={'ResponseMetadata': {'RequestId': '9ef1e313-a4c1-4f79-b631-171f658d3c0e', 'HTTPStatusCode': 200, 'HTTPHeaders': {'date': 'Sat, 15 Jun 2024 01:19:24 GMT', 'content-type': 'application/json', 'content-length': '205', 'connection': 'keep-alive', 'x-amzn-requestid': '9ef1e313-a4c1-4f79-b631-171f658d3c0e'}, 'RetryAttempts': 0}, 'stopReason': 'end_turn', 'metrics': {'latencyMs': 609}}, id='run-754e152b-2b41-4784-9538-d40d71a5c3bc-0', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```

**Stream:**

```python
for chunk in llm.stream(messages):
    print(chunk)
```

```python
AIMessageChunk(content=[], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'type': 'text', 'text': 'J', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': "'", 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': 'a', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': 'ime', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': ' la', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': ' programm', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': 'ation', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'text': '.', 'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[{'index': 0}], id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[], response_metadata={'stopReason': 'end_turn'}, id='run-da3c2606-4792-440a-ac66-72e0d1f6d117')
AIMessageChunk(content=[], response_metadata={'metrics': {'latencyMs': 581}}, id='run-da3c2606-4792-440a-ac66-72e0d1f6d117', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```

```python
stream = llm.stream(messages)
full = next(stream)
for chunk in stream:
    full += chunk
full
```

```python
AIMessageChunk(content=[{'type': 'text', 'text': "J'aime la programmation.", 'index': 0}], response_metadata={'stopReason': 'end_turn', 'metrics': {'latencyMs': 554}}, id='run-56a5a5e0-de86-412b-9835-624652dc3539', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```

**Tool calling:**

```python
from pydantic import BaseModel, Field

class GetWeather(BaseModel):
    '''Get the current weather in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

class GetPopulation(BaseModel):
    '''Get the current population in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

llm_with_tools = llm.bind_tools([GetWeather, GetPopulation])
ai_msg = llm_with_tools.invoke("Which city is hotter today and which is bigger: LA or NY?")
ai_msg.tool_calls
```

```python
[{'name': 'GetWeather',
  'args': {'location': 'Los Angeles, CA'},
  'id': 'tooluse_Mspi2igUTQygp-xbX6XGVw'},
 {'name': 'GetWeather',
  'args': {'location': 'New York, NY'},
  'id': 'tooluse_tOPHiDhvR2m0xF5_5tyqWg'},
 {'name': 'GetPopulation',
  'args': {'location': 'Los Angeles, CA'},
  'id': 'tooluse__gcY_klbSC-GqB-bF_pxNg'},
 {'name': 'GetPopulation',
  'args': {'location': 'New York, NY'},
  'id': 'tooluse_-1HSoGX0TQCSaIg7cdFy8Q'}]
```

See `ChatBedrockConverse.bind_tools()` method for more.

**Structured output:**

```python
from typing import Optional

from pydantic import BaseModel, Field

class Joke(BaseModel):
    '''Joke to tell user.'''

    setup: str = Field(description="The setup of the joke")
    punchline: str = Field(description="The punchline to the joke")
    rating: Optional[int] = Field(description="How funny the joke is, from 1 to 10")

structured_llm = llm.with_structured_output(Joke)
structured_llm.invoke("Tell me a joke about cats")
```

```python
Joke(setup='What do you call a cat that gets all dressed up?', punchline='A purrfessional!', rating=7)
```

See `ChatBedrockConverse.with_structured_output()` for more.

**Image input:**

```python
import base64
import httpx
from langchain_core.messages import HumanMessage

image_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Gfp-wisconsin-madison-the-nature-boardwalk.jpg/2560px-Gfp-wisconsin-madison-the-nature-boardwalk.jpg"
image_data = base64.b64encode(httpx.get(image_url).content).decode("utf-8")
message = HumanMessage(
    content=[
        {"type": "text", "text": "describe the weather in this image"},
        {
            "type": "image",
            "source": {"type": "base64", "media_type": "image/jpeg", "data": image_data},
        },
    ],
)
ai_msg = llm.invoke([message])
ai_msg.content
```

```python
[{'type': 'text',
  'text': 'The image depicts a sunny day with a partly cloudy sky. The sky is a brilliant blue color with scattered white clouds drifting across. The lighting and cloud patterns suggest pleasant, mild weather conditions. The scene shows an open grassy field or meadow, indicating warm temperatures conducive for vegetation growth. Overall, the weather portrayed in this scenic outdoor image appears to be sunny with some clouds, likely representing a nice, comfortable day.'}]
```

**Token usage:**

```python
ai_msg = llm.invoke(messages)
ai_msg.usage_metadata
```

```python
{'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36}
```

Response metadata

```python
ai_msg = llm.invoke(messages)
ai_msg.response_metadata
```

```python
{'ResponseMetadata': {'RequestId': '776a2a26-5946-45ae-859e-82dc5f12017c',
  'HTTPStatusCode': 200,
  'HTTPHeaders': {'date': 'Mon, 17 Jun 2024 01:37:05 GMT',
   'content-type': 'application/json',
   'content-length': '206',
   'connection': 'keep-alive',
   'x-amzn-requestid': '776a2a26-5946-45ae-859e-82dc5f12017c'},
  'RetryAttempts': 0},
 'stopReason': 'end_turn',
 'metrics': {'latencyMs': 1290}}
```

## Used in Docs

* [Amazon neptune with cypher integration](https://docs.langchain.com/oss/python/integrations/graphs/amazon_neptune_open_cypher)
* [AWS (Amazon) integrations](https://docs.langchain.com/oss/python/integrations/providers/aws)
* [AWS middleware integration](https://docs.langchain.com/oss/python/integrations/middleware/aws)
* [ChatBedrock integration](https://docs.langchain.com/oss/python/integrations/chat/bedrock)

## Attributes

### [client: Any](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/client)

### [model_id: str](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/model_id)

Id of the model to call.

e.g., `"anthropic.claude-3-sonnet-20240229-v1:0"`. This is equivalent to the
modelID property in the list-foundation-models api. For custom and provisioned
models, an ARN value is expected. See
<https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns>
for a list of all supported built-in models.

### [max_tokens: Optional[int]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/max_tokens)

Max tokens to generate.

### [stop_sequences: Optional[List[str]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/stop_sequences)

Stop generation if any of these substrings occurs.

### [temperature: Optional[float]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/temperature)

Sampling temperature. Must be 0 to 1.

### [top_p: Optional[float]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/top_p)

The percentage of most-likely candidates that are considered for the next token.

Must be 0 to 1.

For example, if you choose a value of 0.8 for topP, the model selects from
the top 80% of the probability distribution of tokens that could be next in the
sequence.

### [region_name: Optional[str]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/region_name)

The aws region, e.g., `us-west-2`.

Falls back to AWS_REGION or AWS_DEFAULT_REGION env variable or region specified in
~/.aws/config in case it is not provided here.

### [credentials_profile_name: Optional[str]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/credentials_profile_name)

The name of the profile in the ~/.aws/credentials or ~/.aws/config files.

Profile should either have access keys or role information specified.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

### [aws_access_key_id: Optional[SecretStr]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/aws_access_key_id)

AWS access key id.

If provided, aws_secret_access_key must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS_ACCESS_KEY_ID' environment variable.

### [aws_secret_access_key: Optional[SecretStr]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/aws_secret_access_key)

AWS secret_access_key.

If provided, aws_access_key_id must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS_SECRET_ACCESS_KEY' environment variable.

### [aws_session_token: Optional[SecretStr]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/aws_session_token)

AWS session token.

If provided, aws_access_key_id and aws_secret_access_key must
also be provided. Not required unless using temporary credentials.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS_SESSION_TOKEN' environment variable.

### [provider: str](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/provider)

The model provider, e.g., amazon, cohere, ai21, etc.

When not supplied, provider is extracted from the first part of the model_id, e.g.
'amazon' in 'amazon.titan-text-express-v1'. This value should be provided for model
ids that do not have the provider in them, like custom and provisioned models that
have an ARN associated with them.

### [endpoint_url: Optional[str]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/endpoint_url)

Needed if you don't want to default to us-east-1 endpoint

### [config: Any](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/config)

An optional botocore.config.Config instance to pass to the client.

### [guardrail_config: Optional[Dict[str, Any]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/guardrail_config)

Configuration information for a guardrail that you want to use in the request.

### [additional_model_request_fields: Optional[Dict[str, Any]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/additional_model_request_fields)

Additional inference parameters that the model supports.

Parameters beyond the base set of inference parameters that Converse supports in the
inferenceConfig field.

### [additional_model_response_field_paths: Optional[List[str]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/additional_model_response_field_paths)

Additional model parameters field paths to return in the response.

Converse returns the requested fields as a JSON Pointer object in the
additionalModelResponseFields field. The following is example JSON for
additionalModelResponseFieldPaths.

### [supports_tool_choice_values: Optional[Sequence[Literal['auto', 'any', 'tool']]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/supports_tool_choice_values)

Which types of tool_choice values the model supports.

Inferred if not specified. Inferred as ('auto', 'any', 'tool') if a 'claude-3'
model is used, ('auto', 'any') if a 'mistral-large' model is used,
('auto') if a 'nova' model is used, empty otherwise.

### [performance_config: Optional[Mapping[str, Any]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/performance_config)

### [request_metadata: Optional[Dict[str, str]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/request_metadata)

Key-Value pairs that you can use to filter invocation logs.

### [model_config](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/model_config)

### [lc_secrets: Dict[str, str]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/lc_secrets)

## Methods

### [set_disable_streaming](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/set_disable_streaming)

### [validate_environment](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/validate_environment)

Validate that AWS credentials to and python package exists in environment.

### [bind_tools](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/bind_tools)

### [with_structured_output](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/with_structured_output)

### [is_lc_serializable](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/is_lc_serializable)

### [get_lc_namespace](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/get_lc_namespace)

## Inherited from[BaseChatModel](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel) (langchain_core)

### Attributes

[rate_limiter](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter) [disable_streaming](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming) [output_version](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/output_version) [profile](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/profile) [OutputType](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[invoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/invoke) [ainvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke) [stream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream) [astream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream) [stream_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events) [astream_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events) [generate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate) [agenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate) [generate_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt) [agenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt) [dict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/dict) [asdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/asdict) [bind](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel) (langchain_core)

### Attributes

[cache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache) [verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose) [callbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks) [tags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags) [metadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata) [custom_get_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids) [InputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[model_post_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init) [set_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose) [generate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt) [agenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt) [get_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids) [get_num_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens) [get_num_tokens_from_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable) (langchain_core)

### Attributes

[name](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[to_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json) [configurable_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields) [configurable_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable) (langchain_core)

### Attributes

[lc_attributes](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[lc_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id) [to_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json) [to_json_not_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable) (langchain_core)

### Attributes

[name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name) [InputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType) [OutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType) [input_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema) [output_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema) [config_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[get_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name) [get_input_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema) [get_input_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema) [get_output_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema) [get_output_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema) [config_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema) [get_config_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema) [get_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph) [get_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts) [pipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe) [pick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick) [assign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign) [invoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke) [ainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke) [batch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch) [batch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed) [abatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch) [abatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed) [stream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream) [astream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream) [astream_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log) [astream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events) [stream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events) [transform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform) [atransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform) [bind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind) [with_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config) [with_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners) [with_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners) [with_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types) [with_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry) [map](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map) [with_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks) [as_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L64)

Version History

Source: [https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse)

---

## set_disable_streaming

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/set_disable_streaming)

### Signature

```python
set_disable_streaming(
    cls,
    values: Dict,
) -> Any
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L418)

---

## validate_environment

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/validate_environment)

Validate that AWS credentials to and python package exists in environment.

### Signature

```python
validate_environment(
    self,
) -> Self
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L476)

---

## bind_tools

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/bind_tools)

### Signature

```python
bind_tools(
    self,
    tools: Sequence[Union[Dict[str, Any], TypeBaseModel, Callable, BaseTool]],
    *,
    tool_choice: Optional[Union[dict, str, Literal['auto', 'any']]] = None,
    kwargs: Any = {},
) -> Runnable[LanguageModelInput, BaseMessage]
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L593)

---

## with_structured_output

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/with_structured_output)

### Signature

```python
with_structured_output(
    self,
    schema: _DictOrPydanticClass,
    *,
    include_raw: bool = False,
    kwargs: Any = {},
) -> Runnable[LanguageModelInput, Union[Dict, BaseModel]]
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L630)

---

## is_lc_serializable

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/is_lc_serializable)

### Signature

```python
is_lc_serializable(
    cls,
) -> bool
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L743)

---

## get_lc_namespace

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/get_lc_namespace)

### Signature

```python
get_lc_namespace(
    cls,
) -> list[str]
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L747)
