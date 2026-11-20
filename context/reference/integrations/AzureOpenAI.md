Classv1.8.3 (latest)●Since v1.3

# AzureOpenAI

Azure-specific OpenAI large language models.

To use, you should have the `openai` python package installed, and the
environment variable `OPENAI_API_KEY` set with your API key.

Any parameters that are valid to be passed to the openai.create call can be passed
in, even if not explicitly saved on this class.

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

attribute

azure\_endpoint: str | None

Your Azure endpoint, including the resource.

Automatically inferred from env var `AZURE_OPENAI_ENDPOINT` if not provided.

Example: `'https://example-resource.azure.openai.com/'`

attribute

deployment\_name: str | None

A model deployment.

If given sets the base client URL to include `/deployments/{azure_deployment}`.

Note

This means you won't be able to use non-deployment endpoints.

attribute

openai\_api\_version: str | None

Automatically inferred from env var `OPENAI_API_VERSION` if not provided.

attribute

openai\_api\_key: SecretStr | None

attribute

azure\_ad\_token: SecretStr | None

Your Azure Active Directory token.

Automatically inferred from env var `AZURE_OPENAI_AD_TOKEN` if not provided.

`For more, see this page <https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id>.`\_\_

attribute

azure\_ad\_token\_provider: Callable[[], str] | None

A function that returns an Azure Active Directory token.

Will be invoked on every sync request. For async requests,
will be invoked if `azure_ad_async_token_provider` is not provided.

attribute

azure\_ad\_async\_token\_provider: Callable[[], Awaitable[str]] | None

A function that returns an Azure Active Directory token.

Will be invoked on every async request.

attribute

openai\_api\_type: str | None

Legacy, for `openai<1.0.0` support.

attribute

validate\_base\_url: bool

For backwards compatibility. If legacy val openai\_api\_base is passed in, try to
infer if it is a base\_url or azure\_endpoint and update accordingly.

attribute

lc\_secrets: dict[str, str]

Mapping of secret keys to environment variables.

attribute

lc\_attributes: dict[str, Any]

Attributes relevant to tracing.

## Methods

method

get\_lc\_namespace

Get the namespace of the LangChain object.

method

is\_lc\_serializable

Return whether this model can be serialized by LangChain.

method

validate\_environment

Validate that api key and python package exists in environment.

## Inherited from[BaseOpenAI](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI)

### Attributes

[Aclient: Any](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/client)[Aasync\_client: Any](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/async_client)

Amodel\_name: str

—

Model name to use.

Atemperature: float

—

What sampling temperature to use.

Amax\_tokens: int

—

The maximum number of tokens to generate in the completion.

Atop\_p: float

—

Total probability mass of tokens to consider at each step.

Afrequency\_penalty: float

—

Penalizes repeated tokens according to frequency.

Apresence\_penalty: float

—

Penalizes repeated tokens.

An: int

—

How many completions to generate for each prompt.

Abest\_of: int

—

Generates best\_of completions server-side and returns the "best".

Amodel\_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.

Aopenai\_api\_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or service

Aopenai\_organization: str | None

—

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

[Aopenai\_proxy: str | None](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/openai_proxy)

Abatch\_size: int

—

Batch size to use when passing multiple documents to generate.

Arequest\_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API. Can be float, `httpx.Timeout` or

Alogit\_bias: dict[str, float] | None

—

Adjust the probability of specific tokens being generated.

Amax\_retries: int

—

Maximum number of retries to make when generating.

Aseed: int | None

—

Seed for generation

Alogprobs: int | None

—

Include the log probabilities on the logprobs most likely output tokens,

Astreaming: bool

—

Whether to stream the results or not.

Aallowed\_special: Literal['all'] | set[str]

—

Set of special tokens that are allowed。

Adisallowed\_special: Literal['all'] | Collection[str]

—

Set of special tokens that are not allowed。

Atiktoken\_model\_name: str | None

—

The model name to pass to tiktoken when using this class.

[Adefault\_headers: Mapping[str, str] | None](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/default_headers)[Adefault\_query: Mapping[str, object] | None](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/default_query)

Ahttp\_client: Any | None

—

Optional `httpx.Client`.

Ahttp\_async\_client: Any | None

—

Optional `httpx.AsyncClient`.

Aextra\_body: Mapping[str, Any] | None

—

Optional additional JSON properties to include in the request parameters when

[Amodel\_config](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/model_config)

Amax\_context\_size: int

—

Get max context size for this model.

### Methods

Mbuild\_extra

—

Build extra kwargs from additional params that were passed in.

Mget\_sub\_prompts

—

Get the sub prompts for llm call.

Mcreate\_llm\_result

—

Create the LLMResult from the choices and prompts.

Mget\_token\_ids

—

Get the token IDs using the tiktoken package.

Mmodelname\_to\_contextsize

—

Return the maximum input context size for a model.

Mmax\_tokens\_for\_prompt

—

Calculate the maximum number of tokens possible to generate for a prompt.

## Inherited from[BaseLLM](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM)(langchain\_core)

### Attributes

[Amodel\_config](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/model_config)[AOutputType](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/OutputType)

### Methods

[Minvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/batch)[Mabatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/abatch)[Mstream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/stream)[Mastream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/astream)[Mgenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate_prompt)[Magenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate_prompt)[Mgenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate)[Magenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate)[Mdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/dict)[Masdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/asdict)[Msave](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/save)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[Amodel\_config](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_config)[AInputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mwith\_structured\_output](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/with_structured_output)[Mget\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget\_num\_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)[Amodel\_config](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/model_config)

### Methods

[Mto\_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Amodel\_config](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

[Mlc\_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name)[AInputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick)[Massign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream)[Mastream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform)[Matransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/llms/azure.py#L20)

Version History
