Classv1.8.3 (latest)●Since v1.3

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
model\_name:
Name of OpenAI model to use.
temperature:
Sampling temperature.
max\_tokens:
Max number of tokens to generate.
top\_p:
Total probability mass of tokens to consider at each step.
frequency\_penalty:
Penalizes repeated tokens according to frequency.
presence\_penalty:
Penalizes repeated tokens.
n:
How many completions to generate for each prompt.
best\_of:
Generates best\_of completions server-side and returns the "best".
logit\_bias:
Adjust the probability of specific tokens being generated.
seed:
Seed for generation.
logprobs:
Include the log probabilities on the logprobs most likely output tokens.
streaming:
Whether to stream the results or not.

Key init args — client params:
openai\_api\_key:
OpenAI API key. If not passed in will be read from env var
`OPENAI_API_KEY`.
openai\_api\_base:
Base URL path for API requests, leave blank if not using a proxy or
service emulator. Falls back to env var `OPENAI_API_BASE`, then to
`OPENAI_BASE_URL` (read by the underlying SDK client).
openai\_organization:
OpenAI organization ID. If not passed in will be read from env
var `OPENAI_ORG_ID`.
request\_timeout:
Timeout for requests to OpenAI completion API.
max\_retries:
Maximum number of retries to make when generating.
batch\_size:
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

async\_client: Any

attribute

model\_name: str

Model name to use.

attribute

temperature: float

What sampling temperature to use.

attribute

max\_tokens: int

The maximum number of tokens to generate in the completion.
-1 returns as many tokens as possible given the prompt and
the models maximal context size.

attribute

top\_p: float

Total probability mass of tokens to consider at each step.

attribute

frequency\_penalty: float

Penalizes repeated tokens according to frequency.

attribute

presence\_penalty: float

Penalizes repeated tokens.

attribute

n: int

How many completions to generate for each prompt.

attribute

best\_of: int

Generates best\_of completions server-side and returns the "best".

attribute

model\_kwargs: dict[str, Any]

Holds any model parameters valid for `create` call not explicitly specified.

attribute

openai\_api\_key: SecretStr | Callable[[], str] | None

Automatically inferred from env var `OPENAI_API_KEY` if not provided.

attribute

openai\_api\_base: str | None

Base URL path for API requests, leave blank if not using a proxy or service
emulator.

Resolution order (first match wins):

1. Explicit `base_url` (or `openai_api_base`) kwarg.
2. Env var `OPENAI_API_BASE` (read by LangChain at init).
3. Env var `OPENAI_BASE_URL` (read by the underlying `openai` SDK client).

attribute

openai\_organization: str | None

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

attribute

openai\_proxy: str | None

attribute

batch\_size: int

Batch size to use when passing multiple documents to generate.

attribute

request\_timeout: float | tuple[float, float] | Any | None

Timeout for requests to OpenAI completion API. Can be float, `httpx.Timeout` or
None.

attribute

logit\_bias: dict[str, float] | None

Adjust the probability of specific tokens being generated.

attribute

max\_retries: int

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

allowed\_special: Literal['all'] | set[str]

Set of special tokens that are allowed。

attribute

disallowed\_special: Literal['all'] | Collection[str]

Set of special tokens that are not allowed。

attribute

tiktoken\_model\_name: str | None

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

default\_headers: Mapping[str, str] | None

attribute

default\_query: Mapping[str, object] | None

attribute

http\_client: Any | None

Optional `httpx.Client`.

Only used for sync invocations. Must specify `http_async_client` as well if you'd
like a custom client for async invocations.

attribute

http\_async\_client: Any | None

Optional `httpx.AsyncClient`.

Only used for async invocations. Must specify `http_client` as well if you'd like a
custom client for sync invocations.

attribute

extra\_body: Mapping[str, Any] | None

Optional additional JSON properties to include in the request parameters when
making requests to OpenAI compatible APIs, such as vLLM.

attribute

model\_config

attribute

max\_context\_size: int

Get max context size for this model.

## Methods

method

build\_extra

Build extra kwargs from additional params that were passed in.

method

validate\_environment

Validate that api key and python package exists in environment.

method

get\_sub\_prompts

Get the sub prompts for llm call.

method

create\_llm\_result

Create the LLMResult from the choices and prompts.

method

get\_token\_ids

Get the token IDs using the tiktoken package.

method

max\_tokens\_for\_prompt

Calculate the maximum number of tokens possible to generate for a prompt.

deprecatedmethod

modelname\_to\_contextsize

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

## Inherited from[BaseLLM](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM)(langchain\_core)

### Attributes

[AOutputType](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/OutputType)

### Methods

[Minvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/batch)[Mabatch](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/abatch)[Mstream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/stream)[Mastream](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/astream)[Mgenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate_prompt)[Magenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate_prompt)[Mgenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/generate)[Magenerate](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/agenerate)[Mdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/dict)[Masdict](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/asdict)[Msave](https://reference.langchain.com/python/langchain-core/language_models/llms/BaseLLM/save)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mwith\_structured\_output](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/with_structured_output)[Mget\_num\_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[Mto\_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Alc\_secrets](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc\_attributes](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[Mis\_lc\_serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/is_lc_serializable)[Mget\_lc\_namespace](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/get_lc_namespace)[Mlc\_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name)[AInputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick)[Massign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream)[Mastream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform)[Matransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/llms/base.py#L56)

Version History
