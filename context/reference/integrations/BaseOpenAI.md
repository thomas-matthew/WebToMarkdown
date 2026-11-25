Classv1.8.5 (latest)●Since v1.3

# BaseOpenAI

Base OpenAI large language model class.

```
BaseOpenAI()
```

## Bases

`BaseLLM`

**Setup:**

Install `langchain-openai` and set environment variable `OPENAI_API_KEY`.

```
pip install -U langchain-openai
export OPENAI_API_KEY="your-api-key"
```

Copy

Key init args — completion params:
model_name:
Name of OpenAI model to use.
temperature:
Sampling temperature.
max_tokens:
Max number of tokens to generate.
top_p:
Total probability mass of tokens to consider at each step.
frequency_penalty:
Penalizes repeated tokens according to frequency.
presence_penalty:
Penalizes repeated tokens.
n:
How many completions to generate for each prompt.
best_of:
Generates best_of completions server-side and returns the "best".
logit_bias:
Adjust the probability of specific tokens being generated.
seed:
Seed for generation.
logprobs:
Include the log probabilities on the logprobs most likely output tokens.
streaming:
Whether to stream the results or not.

Key init args — client params:
openai_api_key:
OpenAI API key. If not passed in will be read from env var
`OPENAI_API_KEY`.
openai_api_base:
Base URL path for API requests, leave blank if not using a proxy or
service emulator. Falls back to env var `OPENAI_API_BASE`, then to
`OPENAI_BASE_URL` (read by the underlying SDK client).
openai_organization:
OpenAI organization ID. If not passed in will be read from env
var `OPENAI_ORG_ID`.
request_timeout:
Timeout for requests to OpenAI completion API.
max_retries:
Maximum number of retries to make when generating.
batch_size:
Batch size to use when passing multiple documents to generate.

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

```
from langchain_openai.llms.base import BaseOpenAI

model = BaseOpenAI(
    model_name="gpt-3.5-turbo-instruct",
    temperature=0.7,
    max_tokens=256,
    top_p=1,
    frequency_penalty=0,
    presence_penalty=0,
    # openai_api_key="...",
    # openai_api_base="...",
    # openai_organization="...",
    # other params...
)
```

Copy

**Invoke:**

```
input_text = "The meaning of life is "
response = model.invoke(input_text)
print(response)
```

Copy

```
"a philosophical question that has been debated by thinkers and
scholars for centuries."
```

Copy

**Stream:**

```
for chunk in model.stream(input_text):
    print(chunk, end="")
```

Copy

```
a philosophical question that has been debated by thinkers and
scholars for centuries.
```

Copy

**Async:**

```
response = await model.ainvoke(input_text)

# stream:
# async for chunk in model.astream(input_text):
#     print(chunk, end="")

# batch:
# await model.abatch([input_text])
```

Copy

```
"a philosophical question that has been debated by thinkers and
scholars for centuries."
```

Copy

## Attributes

attribute

client: Any

attribute

async_client: Any

attribute

model_name: str

Model name to use.

attribute

temperature: float

What sampling temperature to use.

attribute

max_tokens: int

The maximum number of tokens to generate in the completion.
-1 returns as many tokens as possible given the prompt and
the models maximal context size.

attribute

top_p: float

Total probability mass of tokens to consider at each step.

attribute

frequency_penalty: float

Penalizes repeated tokens according to frequency.

attribute

presence_penalty: float

Penalizes repeated tokens.

attribute

n: int

How many completions to generate for each prompt.

attribute

best_of: int

Generates best_of completions server-side and returns the "best".

attribute

model_kwargs: dict[str, Any]

Holds any model parameters valid for `create` call not explicitly specified.

attribute

openai_api_key: SecretStr | Callable[[], str] | None

Automatically inferred from env var `OPENAI_API_KEY` if not provided.

attribute

openai_api_base: str | None

Base URL path for API requests, leave blank if not using a proxy or service
emulator.

Resolution order (first match wins):

1. Explicit `base_url` (or `openai_api_base`) kwarg.
2. Env var `OPENAI_API_BASE` (read by LangChain at init).
3. Env var `OPENAI_BASE_URL` (read by the underlying `openai` SDK client).

attribute

openai_organization: str | None

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

attribute

openai_proxy: str | None

attribute

batch_size: int

Batch size to use when passing multiple documents to generate.

attribute

request_timeout: float | tuple[float, float] | Any | None

Timeout for requests to OpenAI completion API. Can be float, `httpx.Timeout` or
None.

attribute

logit_bias: dict[str, float] | None

Adjust the probability of specific tokens being generated.

attribute

max_retries: int

Maximum number of retries to make when generating.

attribute

seed: int | None

Seed for generation

attribute

logprobs: int | None

Include the log probabilities on the logprobs most likely output tokens,
as well the chosen tokens.

attribute

streaming: bool

Whether to stream the results or not.

attribute

allowed_special: Literal['all'] | set[str]

Set of special tokens that are allowed。

attribute

disallowed_special: Literal['all'] | Collection[str]

Set of special tokens that are not allowed。

attribute

tiktoken_model_name: str | None

The model name to pass to tiktoken when using this class.

Tiktoken is used to count the number of tokens in documents to constrain
them to be under a certain limit.

By default, when set to `None`, this will be the same as the embedding model name.
However, there are some cases where you may want to use this `Embedding` class with
a model name not supported by tiktoken. This can include when using Azure embeddings
or when using one of the many model providers that expose an OpenAI-like
API but with different models. In those cases, in order to avoid erroring
when tiktoken is called, you can specify a model name to use here.

attribute

default_headers: Mapping[str, str] | None

attribute

default_query: Mapping[str, object] | None

attribute

http_client: Any | None

Optional `httpx.Client`.

Only used for sync invocations. Must specify `http_async_client` as well if you'd
like a custom client for async invocations.

attribute

http_async_client: Any | None

Optional `httpx.AsyncClient`.

Only used for async invocations. Must specify `http_client` as well if you'd like a
custom client for sync invocations.

attribute

extra_body: Mapping[str, Any] | None

Optional additional JSON properties to include in the request parameters when
making requests to OpenAI compatible APIs, such as vLLM.

attribute

model_config

attribute

max_context_size: int

Get max context size for this model.

## Methods

method

build_extra

Build extra kwargs from additional params that were passed in.

method

validate_environment

Validate that api key and python package exists in environment.

method

get_sub_prompts

Get the sub prompts for llm call.

method

create_llm_result

Create the LLMResult from the choices and prompts.

method

get_token_ids

Get the token IDs using the tiktoken package.

method

max_tokens_for_prompt

Calculate the maximum number of tokens possible to generate for a prompt.

deprecatedmethod

modelname_to_contextsize

Return the maximum input context size for a model.

Prefers the model's profile (`max_input_tokens`) and falls back to a
mapping of legacy models that have no profile.

Changed in 1.2

Now returns `max_input_tokens` from the model profile, which is the
input context window. Earlier releases returned a hand-maintained
number that for some newer models (e.g. `gpt-5`) reflected the
*total* context (input + output). Callers using the result as an
input-token budget are unaffected; callers using it as a combined
input+output budget should switch to the profile fields directly.

## Inherited from[BaseLLM](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM)(langchain_core)

### Attributes

[AOutputType](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/OutputType)

### Methods

[Minvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/batch)[Mabatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/abatch)[Mstream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/stream)[Mastream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/astream)[Mgenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate_prompt)[Magenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate_prompt)[Mgenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate)[Magenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate)[Mdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/dict)[Masdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/asdict)[Msave](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/save)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel)(langchain_core)

### Attributes

[Acache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom_get_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel_post_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mwith_structured_output](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/with_structured_output)[Mget_num_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget_num_tokens_from_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)(langchain_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[Mto_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)(langchain_core)

### Attributes

[Alc_secrets](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc_attributes](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[Mis_lc_serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/is_lc_serializable)[Mget_lc_namespace](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/get_lc_namespace)[Mlc_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id)[Mto_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json)[Mto_json_not_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)(langchain_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name)[AInputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name)[Mget_input_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget_input_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget_output_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget_output_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema)[Mget_config_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph)[Mget_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick)[Massign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch)[Mbatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream)[Mastream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream)[Mastream_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform)[Matransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind)[Mwith_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config)[Mwith_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types)[Mwith_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map)[Mwith_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/llms/base.py#L56)

Version History
