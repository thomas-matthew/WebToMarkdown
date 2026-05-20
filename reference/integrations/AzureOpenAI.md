Python[langchain-openai](/python/langchain-openai)[llms](/python/langchain-openai/llms)[azure](/python/langchain-openai/llms/azure)AzureOpenAI

Classv1.2.1 (latest)●Since v0.1

# AzureOpenAI

Azure-specific OpenAI large language models.

To use, you should have the `openai` python package installed, and the
environment variable `OPENAI_API_KEY` set with your API key.

Any parameters that are valid to be passed to the openai.create call can be passed
in, even if not explicitly saved on this class.

Copy

```
AzureOpenAI()
```

## Bases

`BaseOpenAI`

**Example:**

```
from langchain_openai import AzureOpenAI

openai = AzureOpenAI(model_name="gpt-3.5-turbo-instruct")
```

Copy

## Used in Docs

* [Azure OpenAI integration](https://docs.langchain.com/oss/python/integrations/llms/azure_openai)

## Attributes

[attribute

azure\_endpoint: str | None

Your Azure endpoint, including the resource.

Automatically inferred from env var `AZURE_OPENAI_ENDPOINT` if not provided.

Example: `'https://example-resource.azure.openai.com/'`](/python/langchain-openai/llms/azure/AzureOpenAI/azure_endpoint)[attribute

deployment\_name: str | None

A model deployment.

If given sets the base client URL to include `/deployments/{azure_deployment}`.

Note

This means you won't be able to use non-deployment endpoints.](/python/langchain-openai/llms/azure/AzureOpenAI/deployment_name)[attribute

openai\_api\_version: str | None

Automatically inferred from env var `OPENAI_API_VERSION` if not provided.](/python/langchain-openai/llms/azure/AzureOpenAI/openai_api_version)[attribute

openai\_api\_key: SecretStr | None](/python/langchain-openai/llms/azure/AzureOpenAI/openai_api_key)[attribute

azure\_ad\_token: SecretStr | None

Your Azure Active Directory token.

Automatically inferred from env var `AZURE_OPENAI_AD_TOKEN` if not provided.

`For more, see this page <https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id>.`\_\_](/python/langchain-openai/llms/azure/AzureOpenAI/azure_ad_token)[attribute

azure\_ad\_token\_provider: Callable[[], str] | None

A function that returns an Azure Active Directory token.

Will be invoked on every sync request. For async requests,
will be invoked if `azure_ad_async_token_provider` is not provided.](/python/langchain-openai/llms/azure/AzureOpenAI/azure_ad_token_provider)[attribute

azure\_ad\_async\_token\_provider: Callable[[], Awaitable[str]] | None

A function that returns an Azure Active Directory token.

Will be invoked on every async request.](/python/langchain-openai/llms/azure/AzureOpenAI/azure_ad_async_token_provider)[attribute

openai\_api\_type: str | None

Legacy, for `openai<1.0.0` support.](/python/langchain-openai/llms/azure/AzureOpenAI/openai_api_type)[attribute

validate\_base\_url: bool

For backwards compatibility. If legacy val openai\_api\_base is passed in, try to
infer if it is a base\_url or azure\_endpoint and update accordingly.](/python/langchain-openai/llms/azure/AzureOpenAI/validate_base_url)[attribute

lc\_secrets: dict[str, str]

Mapping of secret keys to environment variables.](/python/langchain-openai/llms/azure/AzureOpenAI/lc_secrets)[attribute

lc\_attributes: dict[str, Any]

Attributes relevant to tracing.](/python/langchain-openai/llms/azure/AzureOpenAI/lc_attributes)

## Methods

[method

get\_lc\_namespace

Get the namespace of the LangChain object.](/python/langchain-openai/llms/azure/AzureOpenAI/get_lc_namespace)[method

is\_lc\_serializable

Return whether this model can be serialized by LangChain.](/python/langchain-openai/llms/azure/AzureOpenAI/is_lc_serializable)[method

validate\_environment

Validate that api key and python package exists in environment.](/python/langchain-openai/llms/azure/AzureOpenAI/validate_environment)

## Inherited from[BaseOpenAI](/python/langchain-openai/llms/base/BaseOpenAI)

### Attributes

[Aclient: Any](/python/langchain-openai/llms/base/BaseOpenAI/client)[Aasync\_client: Any](/python/langchain-openai/llms/base/BaseOpenAI/async_client)[Amodel\_name: str

—

Model name to use.](/python/langchain-openai/llms/base/BaseOpenAI/model_name)[Atemperature: float

—

What sampling temperature to use.](/python/langchain-openai/llms/base/BaseOpenAI/temperature)[Amax\_tokens: int

—

The maximum number of tokens to generate in the completion.](/python/langchain-openai/llms/base/BaseOpenAI/max_tokens)[Atop\_p: float

—

Total probability mass of tokens to consider at each step.](/python/langchain-openai/llms/base/BaseOpenAI/top_p)[Afrequency\_penalty: float

—

Penalizes repeated tokens according to frequency.](/python/langchain-openai/llms/base/BaseOpenAI/frequency_penalty)[Apresence\_penalty: float

—

Penalizes repeated tokens.](/python/langchain-openai/llms/base/BaseOpenAI/presence_penalty)[An: int

—

How many completions to generate for each prompt.](/python/langchain-openai/llms/base/BaseOpenAI/n)[Abest\_of: int

—

Generates best\_of completions server-side and returns the "best".](/python/langchain-openai/llms/base/BaseOpenAI/best_of)[Amodel\_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.](/python/langchain-openai/llms/base/BaseOpenAI/model_kwargs)[Aopenai\_api\_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or service](/python/langchain-openai/llms/base/BaseOpenAI/openai_api_base)[Aopenai\_organization: str | None

—

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.](/python/langchain-openai/llms/base/BaseOpenAI/openai_organization)[Aopenai\_proxy: str | None](/python/langchain-openai/llms/base/BaseOpenAI/openai_proxy)[Abatch\_size: int

—

Batch size to use when passing multiple documents to generate.](/python/langchain-openai/llms/base/BaseOpenAI/batch_size)[Arequest\_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API. Can be float, `httpx.Timeout` or](/python/langchain-openai/llms/base/BaseOpenAI/request_timeout)[Alogit\_bias: dict[str, float] | None

—

Adjust the probability of specific tokens being generated.](/python/langchain-openai/llms/base/BaseOpenAI/logit_bias)[Amax\_retries: int

—

Maximum number of retries to make when generating.](/python/langchain-openai/llms/base/BaseOpenAI/max_retries)[Aseed: int | None

—

Seed for generation](/python/langchain-openai/llms/base/BaseOpenAI/seed)[Alogprobs: int | None

—

Include the log probabilities on the logprobs most likely output tokens,](/python/langchain-openai/llms/base/BaseOpenAI/logprobs)[Astreaming: bool

—

Whether to stream the results or not.](/python/langchain-openai/llms/base/BaseOpenAI/streaming)[Aallowed\_special: Literal['all'] | set[str]

—

Set of special tokens that are allowed。](/python/langchain-openai/llms/base/BaseOpenAI/allowed_special)[Adisallowed\_special: Literal['all'] | Collection[str]

—

Set of special tokens that are not allowed。](/python/langchain-openai/llms/base/BaseOpenAI/disallowed_special)[Atiktoken\_model\_name: str | None

—

The model name to pass to tiktoken when using this class.](/python/langchain-openai/llms/base/BaseOpenAI/tiktoken_model_name)[Adefault\_headers: Mapping[str, str] | None](/python/langchain-openai/llms/base/BaseOpenAI/default_headers)[Adefault\_query: Mapping[str, object] | None](/python/langchain-openai/llms/base/BaseOpenAI/default_query)[Ahttp\_client: Any | None

—

Optional `httpx.Client`.](/python/langchain-openai/llms/base/BaseOpenAI/http_client)[Ahttp\_async\_client: Any | None

—

Optional `httpx.AsyncClient`.](/python/langchain-openai/llms/base/BaseOpenAI/http_async_client)[Aextra\_body: Mapping[str, Any] | None

—

Optional additional JSON properties to include in the request parameters when](/python/langchain-openai/llms/base/BaseOpenAI/extra_body)[Amodel\_config](/python/langchain-openai/llms/base/BaseOpenAI/model_config)[Amax\_context\_size: int

—

Get max context size for this model.](/python/langchain-openai/llms/base/BaseOpenAI/max_context_size)

### Methods

[Mbuild\_extra

—

Build extra kwargs from additional params that were passed in.](/python/langchain-openai/llms/base/BaseOpenAI/build_extra)[Mget\_sub\_prompts

—

Get the sub prompts for llm call.](/python/langchain-openai/llms/base/BaseOpenAI/get_sub_prompts)[Mcreate\_llm\_result

—

Create the LLMResult from the choices and prompts.](/python/langchain-openai/llms/base/BaseOpenAI/create_llm_result)[Mget\_token\_ids

—

Get the token IDs using the tiktoken package.](/python/langchain-openai/llms/base/BaseOpenAI/get_token_ids)[Mmodelname\_to\_contextsize

—

Return the maximum input context size for a model.](/python/langchain-openai/llms/base/BaseOpenAI/modelname_to_contextsize)[Mmax\_tokens\_for\_prompt

—

Calculate the maximum number of tokens possible to generate for a prompt.](/python/langchain-openai/llms/base/BaseOpenAI/max_tokens_for_prompt)

## Inherited from[BaseLLM](/python/langchain-core/language_models/llms/BaseLLM)(langchain\_core)

### Attributes

[Amodel\_config](/python/langchain-core/language_models/llms/BaseLLM/model_config)[AOutputType](/python/langchain-core/language_models/llms/BaseLLM/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/llms/BaseLLM/invoke)[Mainvoke](/python/langchain-core/language_models/llms/BaseLLM/ainvoke)[Mbatch](/python/langchain-core/language_models/llms/BaseLLM/batch)[Mabatch](/python/langchain-core/language_models/llms/BaseLLM/abatch)[Mstream](/python/langchain-core/language_models/llms/BaseLLM/stream)[Mastream](/python/langchain-core/language_models/llms/BaseLLM/astream)[Mgenerate\_prompt](/python/langchain-core/language_models/llms/BaseLLM/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/llms/BaseLLM/agenerate_prompt)[Mgenerate](/python/langchain-core/language_models/llms/BaseLLM/generate)[Magenerate](/python/langchain-core/language_models/llms/BaseLLM/agenerate)[Mdict](/python/langchain-core/language_models/llms/BaseLLM/dict)[Msave](/python/langchain-core/language_models/llms/BaseLLM/save)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[Amodel\_config](/python/langchain-core/language_models/base/BaseLanguageModel/model_config)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mwith\_structured\_output](/python/langchain-core/language_models/base/BaseLanguageModel/with_structured_output)[Mget\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget\_num\_tokens](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/RunnableSerializable/name)[Amodel\_config](/python/langchain-core/runnables/base/RunnableSerializable/model_config)

### Methods

[Mto\_json](/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Amodel\_config](/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

[Mlc\_id](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/Runnable/name)[AInputType](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](/python/langchain-core/runnables/base/Runnable/stream)[Mastream](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/partners/openai/langchain_openai/llms/azure.py#L20)

Version History

Copy page

### On This Page

Related Documentation

Attributes

Aazure\_endpointAdeployment\_nameAopenai\_api\_versionAopenai\_api\_keyAazure\_ad\_tokenAazure\_ad\_token\_providerAazure\_ad\_async\_token\_providerAopenai\_api\_typeAvalidate\_base\_urlAlc\_secretsAlc\_attributes

Methods

Mget\_lc\_namespaceMis\_lc\_serializableMvalidate\_environment

from BaseOpenAI

AAttributes

AclientAasync\_clientAmodel\_nameAtemperatureAmax\_tokensAtop\_pAfrequency\_penaltyApresence\_penaltyAnAbest\_ofAmodel\_kwargsAopenai\_api\_baseAopenai\_organizationAopenai\_proxyAbatch\_sizeArequest\_timeoutAlogit\_biasAmax\_retriesAseedAlogprobsAstreamingAallowed\_specialAdisallowed\_specialAtiktoken\_model\_nameAdefault\_headersAdefault\_queryAhttp\_clientAhttp\_async\_clientAextra\_bodyAmodel\_configAmax\_context\_size

MMethods

Mbuild\_extraMget\_sub\_promptsMcreate\_llm\_resultMget\_token\_idsMmodelname\_to\_contextsizeMmax\_tokens\_for\_prompt

from BaseLLM

AAttributes

Amodel\_configAOutputType

MMethods

MinvokeMainvokeMbatchMabatchMstreamMastreamMgenerate\_promptMagenerate\_promptMgenerateMagenerateMdictMsave

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAmodel\_configAInputType

MMethods

Mset\_verboseMgenerate\_promptMagenerate\_promptMwith\_structured\_outputMget\_token\_idsMget\_num\_tokensMget\_num\_tokens\_from\_messages

from RunnableSerializable

AAttributes

AnameAmodel\_config

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Amodel\_config

MMethods

Mlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool