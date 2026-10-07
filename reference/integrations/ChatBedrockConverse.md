Python[langchain-aws](/python/langchain-aws)[chat\_models](/python/langchain-aws/chat_models)[bedrock\_converse](/python/langchain-aws/chat_models/bedrock_converse)ChatBedrockConverse

Classv0.2.14 (latest)●Since v0.1

# ChatBedrockConverse

Bedrock chat model integration built on the Bedrock converse API.

This implementation will eventually replace the existing ChatBedrock implementation
once the Bedrock converse API has feature parity with older Bedrock API.
Specifically the converse API does not yet support custom Bedrock models.

Copy

```
ChatBedrockConverse()
```

## Bases

`BaseChatModel`

**Setup:**

To use Amazon Bedrock make sure you've gone through all the steps described
here: <https://docs.aws.amazon.com/bedrock/latest/userguide/setting-up.html>

Once that's completed, install the LangChain integration:

.. code-block:: bash

```
pip install -U langchain-aws
```

Copy

Key init args — completion params:
model: str
Name of BedrockConverse model to use.
temperature: float
Sampling temperature.
max\_tokens: Optional[int]
Max number of tokens to generate.

Key init args — client params:
region\_name: Optional[str]
AWS region to use, e.g. 'us-west-2'.
base\_url: Optional[str]
Bedrock endpoint to use. Needed if you don't want to default to us-east-
1 endpoint.
credentials\_profile\_name: Optional[str]
The name of the profile in the ~/.aws/credentials or ~/.aws/config files.

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

.. code-block:: python

from langchain\_aws import ChatBedrockConverse

llm = ChatBedrockConverse(
model="anthropic.claude-3-sonnet-20240229-v1:0",
temperature=0,
max\_tokens=None,
# other params...
)

**Invoke:**

.. code-block:: python

```
messages = [
    ("system", "You are a helpful translator. Translate the user sentence to French."),
    ("human", "I love programming."),
]
llm.invoke(messages)
```

Copy

.. code-block:: python

```
AIMessage(content=[{'type': 'text', 'text': "J'aime la programmation."}], response_metadata={'ResponseMetadata': {'RequestId': '9ef1e313-a4c1-4f79-b631-171f658d3c0e', 'HTTPStatusCode': 200, 'HTTPHeaders': {'date': 'Sat, 15 Jun 2024 01:19:24 GMT', 'content-type': 'application/json', 'content-length': '205', 'connection': 'keep-alive', 'x-amzn-requestid': '9ef1e313-a4c1-4f79-b631-171f658d3c0e'}, 'RetryAttempts': 0}, 'stopReason': 'end_turn', 'metrics': {'latencyMs': 609}}, id='run-754e152b-2b41-4784-9538-d40d71a5c3bc-0', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```

Copy

**Stream:**

.. code-block:: python

```
for chunk in llm.stream(messages):
    print(chunk)
```

Copy

.. code-block:: python

```
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

Copy

.. code-block:: python

```
stream = llm.stream(messages)
full = next(stream)
for chunk in stream:
    full += chunk
full
```

Copy

.. code-block:: python

```
AIMessageChunk(content=[{'type': 'text', 'text': "J'aime la programmation.", 'index': 0}], response_metadata={'stopReason': 'end_turn', 'metrics': {'latencyMs': 554}}, id='run-56a5a5e0-de86-412b-9835-624652dc3539', usage_metadata={'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36})
```

Copy

**Tool calling:**

.. code-block:: python

```
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

Copy

.. code-block:: python

```
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

Copy

See `ChatBedrockConverse.bind_tools()` method for more.

**Structured output:**

.. code-block:: python

```
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

Copy

.. code-block:: python

```
Joke(setup='What do you call a cat that gets all dressed up?', punchline='A purrfessional!', rating=7)
```

Copy

See `ChatBedrockConverse.with_structured_output()` for more.

**Image input:**

.. code-block:: python

```
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

Copy

.. code-block:: python

```
[{'type': 'text',
  'text': 'The image depicts a sunny day with a partly cloudy sky. The sky is a brilliant blue color with scattered white clouds drifting across. The lighting and cloud patterns suggest pleasant, mild weather conditions. The scene shows an open grassy field or meadow, indicating warm temperatures conducive for vegetation growth. Overall, the weather portrayed in this scenic outdoor image appears to be sunny with some clouds, likely representing a nice, comfortable day.'}]
```

Copy

**Token usage:**

.. code-block:: python

```
ai_msg = llm.invoke(messages)
ai_msg.usage_metadata
```

Copy

.. code-block:: python

```
{'input_tokens': 25, 'output_tokens': 11, 'total_tokens': 36}
```

Copy

Response metadata
.. code-block:: python

```
ai_msg = llm.invoke(messages)
ai_msg.response_metadata
```

Copy

.. code-block:: python

```
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

Copy

## Used in Docs

* [Amazon neptune with cypher integration](https://docs.langchain.com/oss/python/integrations/graphs/amazon_neptune_open_cypher)
* [AWS (Amazon) integrations](https://docs.langchain.com/oss/python/integrations/providers/aws)
* [AWS middleware integration](https://docs.langchain.com/oss/python/integrations/middleware/aws)
* [ChatBedrock integration](https://docs.langchain.com/oss/python/integrations/chat/bedrock)

## Attributes

[attribute

client: Any](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/client)[attribute

model\_id: str

Id of the model to call.

e.g., `"anthropic.claude-3-sonnet-20240229-v1:0"`. This is equivalent to the
modelID property in the list-foundation-models api. For custom and provisioned
models, an ARN value is expected. See
<https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns>
for a list of all supported built-in models.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/model_id)[attribute

max\_tokens: Optional[int]

Max tokens to generate.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/max_tokens)[attribute

stop\_sequences: Optional[List[str]]

Stop generation if any of these substrings occurs.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/stop_sequences)[attribute

temperature: Optional[float]

Sampling temperature. Must be 0 to 1.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/temperature)[attribute

top\_p: Optional[float]

The percentage of most-likely candidates that are considered for the next token.

Must be 0 to 1.

For example, if you choose a value of 0.8 for topP, the model selects from
the top 80% of the probability distribution of tokens that could be next in the
sequence.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/top_p)[attribute

region\_name: Optional[str]

The aws region, e.g., `us-west-2`.

Falls back to AWS\_REGION or AWS\_DEFAULT\_REGION env variable or region specified in
~/.aws/config in case it is not provided here.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/region_name)[attribute

credentials\_profile\_name: Optional[str]

The name of the profile in the ~/.aws/credentials or ~/.aws/config files.

Profile should either have access keys or role information specified.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/credentials_profile_name)[attribute

aws\_access\_key\_id: Optional[SecretStr]

AWS access key id.

If provided, aws\_secret\_access\_key must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_ACCESS\_KEY\_ID' environment variable.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/aws_access_key_id)[attribute

aws\_secret\_access\_key: Optional[SecretStr]

AWS secret\_access\_key.

If provided, aws\_access\_key\_id must also be provided.
If not specified, the default credential profile or, if on an EC2 instance,
credentials from IMDS will be used.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_SECRET\_ACCESS\_KEY' environment variable.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/aws_secret_access_key)[attribute

aws\_session\_token: Optional[SecretStr]

AWS session token.

If provided, aws\_access\_key\_id and aws\_secret\_access\_key must
also be provided. Not required unless using temporary credentials.
See: <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/credentials.html>

If not provided, will be read from 'AWS\_SESSION\_TOKEN' environment variable.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/aws_session_token)[attribute

provider: str

The model provider, e.g., amazon, cohere, ai21, etc.

When not supplied, provider is extracted from the first part of the model\_id, e.g.
'amazon' in 'amazon.titan-text-express-v1'. This value should be provided for model
ids that do not have the provider in them, like custom and provisioned models that
have an ARN associated with them.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/provider)[attribute

endpoint\_url: Optional[str]

Needed if you don't want to default to us-east-1 endpoint](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/endpoint_url)[attribute

config: Any

An optional botocore.config.Config instance to pass to the client.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/config)[attribute

guardrail\_config: Optional[Dict[str, Any]]

Configuration information for a guardrail that you want to use in the request.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/guardrail_config)[attribute

additional\_model\_request\_fields: Optional[Dict[str, Any]]

Additional inference parameters that the model supports.

Parameters beyond the base set of inference parameters that Converse supports in the
inferenceConfig field.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/additional_model_request_fields)[attribute

additional\_model\_response\_field\_paths: Optional[List[str]]

Additional model parameters field paths to return in the response.

Converse returns the requested fields as a JSON Pointer object in the
additionalModelResponseFields field. The following is example JSON for
additionalModelResponseFieldPaths.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/additional_model_response_field_paths)[attribute

supports\_tool\_choice\_values: Optional[Sequence[Literal['auto', 'any', 'tool']]]

Which types of tool\_choice values the model supports.

Inferred if not specified. Inferred as ('auto', 'any', 'tool') if a 'claude-3'
model is used, ('auto', 'any') if a 'mistral-large' model is used,
('auto') if a 'nova' model is used, empty otherwise.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/supports_tool_choice_values)[attribute

performance\_config: Optional[Mapping[str, Any]]](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/performance_config)[attribute

request\_metadata: Optional[Dict[str, str]]

Key-Value pairs that you can use to filter invocation logs.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/request_metadata)[attribute

model\_config](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/model_config)[attribute

lc\_secrets: Dict[str, str]](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/lc_secrets)

## Methods

[method

set\_disable\_streaming](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/set_disable_streaming)[method

validate\_environment

Validate that AWS credentials to and python package exists in environment.](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/validate_environment)[method

bind\_tools](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/bind_tools)[method

with\_structured\_output](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/with_structured_output)[method

is\_lc\_serializable](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/is_lc_serializable)[method

get\_lc\_namespace](/python/langchain-aws/chat_models/bedrock_converse/ChatBedrockConverse/get_lc_namespace)

## Inherited from[BaseChatModel](/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain\_core)

### Attributes

[Arate\_limiter](/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable\_streaming](/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aoutput\_version](/python/langchain-core/language_models/chat_models/BaseChatModel/output_version)[Aprofile](/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[AOutputType](/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Masdict](/python/langchain-core/language_models/chat_models/BaseChatModel/asdict)[Mbind](/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget\_num\_tokens](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[Mto\_json](/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Alc\_attributes](/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[Mlc\_id](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/Runnable/name)[AInputType](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](/python/langchain-core/runnables/base/Runnable/stream)[Mastream](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock_converse.py#L64)

Version History

Copy page

### On This Page

Related Documentation

Attributes

AclientAmodel\_idAmax\_tokensAstop\_sequencesAtemperatureAtop\_pAregion\_nameAcredentials\_profile\_nameAaws\_access\_key\_idAaws\_secret\_access\_keyAaws\_session\_tokenAproviderAendpoint\_urlAconfigAguardrail\_configAadditional\_model\_request\_fieldsAadditional\_model\_response\_field\_pathsAsupports\_tool\_choice\_valuesAperformance\_configArequest\_metadataAmodel\_configAlc\_secrets

Methods

Mset\_disable\_streamingMvalidate\_environmentMbind\_toolsMwith\_structured\_outputMis\_lc\_serializableMget\_lc\_namespace

from BaseChatModel

AAttributes

Arate\_limiterAdisable\_streamingAoutput\_versionAprofileAOutputType

MMethods

MinvokeMainvokeMstreamMastreamMstream\_eventsMastream\_eventsMgenerateMagenerateMgenerate\_promptMagenerate\_promptMdictMasdictMbind

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAInputType

MMethods

Mmodel\_post\_initMset\_verboseMgenerate\_promptMagenerate\_promptMget\_token\_idsMget\_num\_tokensMget\_num\_tokens\_from\_messages

from RunnableSerializable

AAttributes

Aname

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Alc\_attributes

MMethods

Mlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool