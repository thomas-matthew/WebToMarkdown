Classv1.8.5 (latest)●Since v1.3

# OpenAI

OpenAI completion model integration.

```
OpenAI()
```

## Bases

`BaseOpenAI`

**Setup:**

Install `langchain-openai` and set environment variable `OPENAI_API_KEY`.

```
pip install -U langchain-openai
export OPENAI_API_KEY="your-api-key"
```

Copy

Key init args — completion params:
model:
Name of OpenAI model to use.
temperature:
Sampling temperature.
max_tokens:
Max number of tokens to generate.
logprobs:
Whether to return logprobs.
stream_options:
Configure streaming outputs, like whether to return token usage when
streaming (`{"include_usage": True}`).

Key init args — client params:
timeout:
Timeout for requests.
max_retries:
Max number of retries.
api_key:
OpenAI API key. If not passed in will be read from env var `OPENAI_API_KEY`.
base_url:
Base URL for API requests. Only specify if using a proxy or service
emulator.
organization:
OpenAI organization ID. If not passed in will be read from env
var `OPENAI_ORG_ID`.

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

```
from langchain_openai import OpenAI

model = OpenAI(
    model="gpt-3.5-turbo-instruct",
    temperature=0,
    max_retries=2,
    # api_key="...",
    # base_url="...",
    # organization="...",
    # other params...
)
```

Copy

**Invoke:**

```
input_text = "The meaning of life is "
model.invoke(input_text)
```

Copy

```
"a philosophical question that has been debated by thinkers and scholars for centuries."
```

Copy

**Stream:**

```
for chunk in model.stream(input_text):
    print(chunk, end="|")
```

Copy

```
a| philosophical| question| that| has| been| debated| by| thinkers| and| scholars| for| centuries|.
```

Copy

```
"".join(model.stream(input_text))
```

Copy

```
"a philosophical question that has been debated by thinkers and scholars for centuries."
```

Copy

**Async:**

```
await model.ainvoke(input_text)

# stream:
# async for chunk in (await model.astream(input_text)):
#    print(chunk)

# batch:
# await model.abatch([input_text])
```

Copy

```
"a philosophical question that has been debated by thinkers and scholars for centuries."
```

Copy

## Used in Docs

* [Docugami integration](https://docs.langchain.com/oss/python/integrations/document_loaders/docugami)
* [Helicone integrations](https://docs.langchain.com/oss/python/integrations/providers/helicone)
* [Log10 integrations](https://docs.langchain.com/oss/python/integrations/providers/log10)
* [OpenAI integration](https://docs.langchain.com/oss/python/integrations/llms/openai)
* [Ray serve integrations](https://docs.langchain.com/oss/python/integrations/providers/ray_serve)

+4 more

## Attributes

attribute

lc_secrets: dict[str, str]

Mapping of secret keys to environment variables.

attribute

lc_attributes: dict[str, Any]

LangChain attributes for this class.

## Methods

method

get_lc_namespace

Get the namespace of the LangChain object.

method

is_lc_serializable

Return whether this model can be serialized by LangChain.

## Inherited from[BaseOpenAI](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI)

### Attributes

[Aclient: Any](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/client)[Aasync_client: Any](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/async_client)

Amodel_name: str

—

Model name to use.

Atemperature: float

—

What sampling temperature to use.

Amax_tokens: int

—

The maximum number of tokens to generate in the completion.

Atop_p: float

—

Total probability mass of tokens to consider at each step.

Afrequency_penalty: float

—

Penalizes repeated tokens according to frequency.

Apresence_penalty: float

—

Penalizes repeated tokens.

An: int

—

How many completions to generate for each prompt.

Abest_of: int

—

Generates best_of completions server-side and returns the "best".

Amodel_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.

Aopenai_api_key: SecretStr | Callable[[], str] | None

—

Automatically inferred from env var `OPENAI_API_KEY` if not provided.

Aopenai_api_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or service

Aopenai_organization: str | None

—

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

[Aopenai_proxy: str | None](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/openai_proxy)

Abatch_size: int

—

Batch size to use when passing multiple documents to generate.

Arequest_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API. Can be float, `httpx.Timeout` or

Alogit_bias: dict[str, float] | None

—

Adjust the probability of specific tokens being generated.

Amax_retries: int

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

Aallowed_special: Literal['all'] | set[str]

—

Set of special tokens that are allowed。

Adisallowed_special: Literal['all'] | Collection[str]

—

Set of special tokens that are not allowed。

Atiktoken_model_name: str | None

—

The model name to pass to tiktoken when using this class.

[Adefault_headers: Mapping[str, str] | None](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/default_headers)[Adefault_query: Mapping[str, object] | None](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/default_query)

Ahttp_client: Any | None

—

Optional `httpx.Client`.

Ahttp_async_client: Any | None

—

Optional `httpx.AsyncClient`.

Aextra_body: Mapping[str, Any] | None

—

Optional additional JSON properties to include in the request parameters when

[Amodel_config](https://reference.langchain.com/python/langchain-openai/llms/base/BaseOpenAI/model_config)

Amax_context_size: int

—

Get max context size for this model.

### Methods

Mbuild_extra

—

Build extra kwargs from additional params that were passed in.

Mvalidate_environment

—

Validate that api key and python package exists in environment.

Mget_sub_prompts

—

Get the sub prompts for llm call.

Mcreate_llm_result

—

Create the LLMResult from the choices and prompts.

Mget_token_ids

—

Get the token IDs using the tiktoken package.

Mmodelname_to_contextsize

—

Return the maximum input context size for a model.

Mmax_tokens_for_prompt

—

Calculate the maximum number of tokens possible to generate for a prompt.

## Inherited from[BaseLLM](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM)(langchain_core)

### Attributes

[Amodel_config](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/model_config)[AOutputType](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/OutputType)

### Methods

[Minvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/batch)[Mabatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/abatch)[Mstream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/stream)[Mastream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/astream)[Mgenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate_prompt)[Magenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate_prompt)[Mgenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate)[Magenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate)[Mdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/dict)[Masdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/asdict)[Msave](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/save)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel)(langchain_core)

### Attributes

[Acache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom_get_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[Amodel_config](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_config)[AInputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel_post_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mwith_structured_output](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/with_structured_output)[Mget_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget_num_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget_num_tokens_from_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)(langchain_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)[Amodel_config](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/model_config)

### Methods

[Mto_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)(langchain_core)

### Attributes

[Amodel_config](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

[Mlc_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id)[Mto_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json)[Mto_json_not_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)(langchain_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name)[AInputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name)[Mget_input_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget_input_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget_output_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget_output_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema)[Mget_config_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph)[Mget_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick)[Massign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch)[Mbatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream)[Mastream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream)[Mastream_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform)[Matransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind)[Mwith_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config)[Mwith_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types)[Mwith_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map)[Mwith_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/llms/base.py#L786)

Version History
