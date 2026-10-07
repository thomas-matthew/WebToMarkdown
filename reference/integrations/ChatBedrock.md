Python[langchain-aws](/python/langchain-aws)[chat\_models](/python/langchain-aws/chat_models)[bedrock](/python/langchain-aws/chat_models/bedrock)ChatBedrock

Classv0.2.14 (latest)●Since v0.1

# ChatBedrock

A chat model that uses the Bedrock API.

Copy

```
ChatBedrock()
```

## Bases

`BaseChatModel``BedrockBase`

## Used in Docs

* [AWS middleware integration](https://docs.langchain.com/oss/python/integrations/middleware/aws)
* [Bedrock (knowledge bases) integration](https://docs.langchain.com/oss/python/integrations/retrievers/bedrock)

## Attributes

[attribute

system\_prompt\_with\_tools: str](/python/langchain-aws/chat_models/bedrock/ChatBedrock/system_prompt_with_tools)[attribute

beta\_use\_converse\_api: bool

Use the new Bedrock `converse` API which provides a standardized interface to
all Bedrock models. Support still in beta. See ChatBedrockConverse docs for more.](/python/langchain-aws/chat_models/bedrock/ChatBedrock/beta_use_converse_api)[attribute

stop\_sequences: Optional[List[str]]

Stop sequence inference parameter from new Bedrock `converse` API providing
a sequence of characters that causes a model to stop generating a response. See
<https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_InferenceConfiguration.html>
for more.](/python/langchain-aws/chat_models/bedrock/ChatBedrock/stop_sequences)[attribute

lc\_attributes: Dict[str, Any]](/python/langchain-aws/chat_models/bedrock/ChatBedrock/lc_attributes)[attribute

model\_config](/python/langchain-aws/chat_models/bedrock/ChatBedrock/model_config)

## Methods

[method

is\_lc\_serializable

Return whether this model can be serialized by Langchain.](/python/langchain-aws/chat_models/bedrock/ChatBedrock/is_lc_serializable)[method

get\_lc\_namespace

Get the namespace of the langchain object.](/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_lc_namespace)[method

set\_beta\_use\_converse\_api](/python/langchain-aws/chat_models/bedrock/ChatBedrock/set_beta_use_converse_api)[method

get\_num\_tokens](/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_num_tokens)[method

get\_token\_ids](/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_token_ids)[method

set\_system\_prompt\_with\_tools

Workaround to bind. Sets the system prompt with tools](/python/langchain-aws/chat_models/bedrock/ChatBedrock/set_system_prompt_with_tools)[method

bind\_tools

Bind tool-like objects to this chat model.

Assumes model has a tool calling API.](/python/langchain-aws/chat_models/bedrock/ChatBedrock/bind_tools)[method

with\_structured\_output

Model wrapper that returns outputs formatted to match the given schema.](/python/langchain-aws/chat_models/bedrock/ChatBedrock/with_structured_output)

## Inherited from[BaseChatModel](/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain\_core)

### Attributes

[Arate\_limiter](/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable\_streaming](/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aoutput\_version](/python/langchain-core/language_models/chat_models/BaseChatModel/output_version)[Aprofile](/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[AOutputType](/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Masdict](/python/langchain-core/language_models/chat_models/BaseChatModel/asdict)[Mbind](/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BedrockBase](/python/langchain-aws/llms/bedrock/BedrockBase)

### Attributes

[Aclient: Any](/python/langchain-aws/llms/bedrock/BedrockBase/client)[Aregion\_name: Optional[str]

—

The aws region e.g., `us-west-2`. Fallsback to AWS\_REGION or AWS\_DEFAULT\_REGION](/python/langchain-aws/llms/bedrock/BedrockBase/region_name)[Acredentials\_profile\_name: Optional[str]

—

The name of the profile in the ~/.aws/credentials or ~/.aws/config files, which](/python/langchain-aws/llms/bedrock/BedrockBase/credentials_profile_name)[Aaws\_access\_key\_id: Optional[SecretStr]

—

AWS access key id.](/python/langchain-aws/llms/bedrock/BedrockBase/aws_access_key_id)[Aaws\_secret\_access\_key: Optional[SecretStr]

—

AWS secret\_access\_key.](/python/langchain-aws/llms/bedrock/BedrockBase/aws_secret_access_key)[Aaws\_session\_token: Optional[SecretStr]

—

AWS session token.](/python/langchain-aws/llms/bedrock/BedrockBase/aws_session_token)[Aconfig: Any

—

An optional botocore.config.Config instance to pass to the client.](/python/langchain-aws/llms/bedrock/BedrockBase/config)[Aprovider: Optional[str]

—

The model provider, e.g., amazon, cohere, ai21, etc. When not supplied, provider](/python/langchain-aws/llms/bedrock/BedrockBase/provider)[Amodel\_id: str

—

Id of the model to call, e.g., amazon.titan-text-express-v1, this is](/python/langchain-aws/llms/bedrock/BedrockBase/model_id)[Amodel\_kwargs: Optional[Dict[str, Any]]

—

Keyword arguments to pass to the model.](/python/langchain-aws/llms/bedrock/BedrockBase/model_kwargs)[Aendpoint\_url: Optional[str]

—

Needed if you don't want to default to us-east-1 endpoint](/python/langchain-aws/llms/bedrock/BedrockBase/endpoint_url)[Astreaming: bool

—

Whether to stream the results.](/python/langchain-aws/llms/bedrock/BedrockBase/streaming)[Aprovider\_stop\_sequence\_key\_name\_map: Mapping[str, str]](/python/langchain-aws/llms/bedrock/BedrockBase/provider_stop_sequence_key_name_map)[Aprovider\_stop\_reason\_key\_map: Mapping[str, str]](/python/langchain-aws/llms/bedrock/BedrockBase/provider_stop_reason_key_map)[Aguardrails: Optional[Mapping[str, Any]]

—

An optional dictionary to configure guardrails for Bedrock.](/python/langchain-aws/llms/bedrock/BedrockBase/guardrails)[Atemperature: Optional[float]](/python/langchain-aws/llms/bedrock/BedrockBase/temperature)[Amax\_tokens: Optional[int]](/python/langchain-aws/llms/bedrock/BedrockBase/max_tokens)[Alc\_secrets: Dict[str, str]](/python/langchain-aws/llms/bedrock/BedrockBase/lc_secrets)

### Methods

[Mvalidate\_environment

—

Validate that AWS credentials to and python package exists in environment.](/python/langchain-aws/llms/bedrock/BedrockBase/validate_environment)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget\_num\_tokens\_from\_messages](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[Mto\_json](/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Alc\_secrets](/python/langchain-core/load/serializable/Serializable/lc_secrets)

### Methods

[Mlc\_id](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/Runnable/name)[AInputType](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](/python/langchain-core/runnables/base/Runnable/stream)[Mastream](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L490)

Version History

Copy page

### On This Page

Related Documentation

Attributes

Asystem\_prompt\_with\_toolsAbeta\_use\_converse\_apiAstop\_sequencesAlc\_attributesAmodel\_config

Methods

Mis\_lc\_serializableMget\_lc\_namespaceMset\_beta\_use\_converse\_apiMget\_num\_tokensMget\_token\_idsMset\_system\_prompt\_with\_toolsMbind\_toolsMwith\_structured\_output

from BaseChatModel

AAttributes

Arate\_limiterAdisable\_streamingAoutput\_versionAprofileAOutputType

MMethods

MinvokeMainvokeMstreamMastreamMstream\_eventsMastream\_eventsMgenerateMagenerateMgenerate\_promptMagenerate\_promptMdictMasdictMbind

from BedrockBase

AAttributes

AclientAregion\_nameAcredentials\_profile\_nameAaws\_access\_key\_idAaws\_secret\_access\_keyAaws\_session\_tokenAconfigAproviderAmodel\_idAmodel\_kwargsAendpoint\_urlAstreamingAprovider\_stop\_sequence\_key\_name\_mapAprovider\_stop\_reason\_key\_mapAguardrailsAtemperatureAmax\_tokensAlc\_secrets

MMethods

Mvalidate\_environment

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAInputType

MMethods

Mmodel\_post\_initMset\_verboseMgenerate\_promptMagenerate\_promptMget\_num\_tokens\_from\_messages

from RunnableSerializable

AAttributes

Aname

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Alc\_secrets

MMethods

Mlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool