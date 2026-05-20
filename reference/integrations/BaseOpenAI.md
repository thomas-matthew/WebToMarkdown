Python[langchain-openai](/python/langchain-openai)[llms](/python/langchain-openai/llms)[base](/python/langchain-openai/llms/base)BaseOpenAI

Classv1.2.1 (latest)●Since v0.1

# BaseOpenAI

Base OpenAI large language model class.

Copy

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

[attribute

client: Any](/python/langchain-openai/llms/base/BaseOpenAI/client)[attribute

async\_client: Any](/python/langchain-openai/llms/base/BaseOpenAI/async_client)[attribute

model\_name: str

Model name to use.](/python/langchain-openai/llms/base/BaseOpenAI/model_name)[attribute

temperature: float

What sampling temperature to use.](/python/langchain-openai/llms/base/BaseOpenAI/temperature)[attribute

max\_tokens: int

The maximum number of tokens to generate in the completion.
-1 returns as many tokens as possible given the prompt and
the models maximal context size.](/python/langchain-openai/llms/base/BaseOpenAI/max_tokens)[attribute

top\_p: float

Total probability mass of tokens to consider at each step.](/python/langchain-openai/llms/base/BaseOpenAI/top_p)[attribute

frequency\_penalty: float

Penalizes repeated tokens according to frequency.](/python/langchain-openai/llms/base/BaseOpenAI/frequency_penalty)[attribute

presence\_penalty: float

Penalizes repeated tokens.](/python/langchain-openai/llms/base/BaseOpenAI/presence_penalty)[attribute

n: int

How many completions to generate for each prompt.](/python/langchain-openai/llms/base/BaseOpenAI/n)[attribute

best\_of: int

Generates best\_of completions server-side and returns the "best".](/python/langchain-openai/llms/base/BaseOpenAI/best_of)[attribute

model\_kwargs: dict[str, Any]

Holds any model parameters valid for `create` call not explicitly specified.](/python/langchain-openai/llms/base/BaseOpenAI/model_kwargs)[attribute

openai\_api\_key: SecretStr | None | Callable[[], str]

Automatically inferred from env var `OPENAI_API_KEY` if not provided.](/python/langchain-openai/llms/base/BaseOpenAI/openai_api_key)[attribute

openai\_api\_base: str | None

Base URL path for API requests, leave blank if not using a proxy or service
emulator.

Resolution order (first match wins):

1. Explicit `base_url` (or `openai_api_base`) kwarg.
2. Env var `OPENAI_API_BASE` (read by LangChain at init).
3. Env var `OPENAI_BASE_URL` (read by the underlying `openai` SDK client).](/python/langchain-openai/llms/base/BaseOpenAI/openai_api_base)[attribute

openai\_organization: str | None

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.](/python/langchain-openai/llms/base/BaseOpenAI/openai_organization)[attribute

openai\_proxy: str | None](/python/langchain-openai/llms/base/BaseOpenAI/openai_proxy)[attribute

batch\_size: int

Batch size to use when passing multiple documents to generate.](/python/langchain-openai/llms/base/BaseOpenAI/batch_size)[attribute

request\_timeout: float | tuple[float, float] | Any | None

Timeout for requests to OpenAI completion API. Can be float, `httpx.Timeout` or
None.](/python/langchain-openai/llms/base/BaseOpenAI/request_timeout)[attribute

logit\_bias: dict[str, float] | None

Adjust the probability of specific tokens being generated.](/python/langchain-openai/llms/base/BaseOpenAI/logit_bias)[attribute

max\_retries: int

Maximum number of retries to make when generating.](/python/langchain-openai/llms/base/BaseOpenAI/max_retries)[attribute

seed: int | None

Seed for generation](/python/langchain-openai/llms/base/BaseOpenAI/seed)[attribute

logprobs: int | None

Include the log probabilities on the logprobs most likely output tokens,
as well the chosen tokens.](/python/langchain-openai/llms/base/BaseOpenAI/logprobs)[attribute

streaming: bool

Whether to stream the results or not.](/python/langchain-openai/llms/base/BaseOpenAI/streaming)[attribute

allowed\_special: Literal['all'] | set[str]

Set of special tokens that are allowed。](/python/langchain-openai/llms/base/BaseOpenAI/allowed_special)[attribute

disallowed\_special: Literal['all'] | Collection[str]

Set of special tokens that are not allowed。](/python/langchain-openai/llms/base/BaseOpenAI/disallowed_special)[attribute

tiktoken\_model\_name: str | None

The model name to pass to tiktoken when using this class.

Tiktoken is used to count the number of tokens in documents to constrain
them to be under a certain limit.

By default, when set to `None`, this will be the same as the embedding model name.
However, there are some cases where you may want to use this `Embedding` class with
a model name not supported by tiktoken. This can include when using Azure embeddings
or when using one of the many model providers that expose an OpenAI-like
API but with different models. In those cases, in order to avoid erroring
when tiktoken is called, you can specify a model name to use here.](/python/langchain-openai/llms/base/BaseOpenAI/tiktoken_model_name)[attribute

default\_headers: Mapping[str, str] | None](/python/langchain-openai/llms/base/BaseOpenAI/default_headers)[attribute

default\_query: Mapping[str, object] | None](/python/langchain-openai/llms/base/BaseOpenAI/default_query)[attribute

http\_client: Any | None

Optional `httpx.Client`.

Only used for sync invocations. Must specify `http_async_client` as well if you'd
like a custom client for async invocations.](/python/langchain-openai/llms/base/BaseOpenAI/http_client)[attribute

http\_async\_client: Any | None

Optional `httpx.AsyncClient`.

Only used for async invocations. Must specify `http_client` as well if you'd like a
custom client for sync invocations.](/python/langchain-openai/llms/base/BaseOpenAI/http_async_client)[attribute

extra\_body: Mapping[str, Any] | None

Optional additional JSON properties to include in the request parameters when
making requests to OpenAI compatible APIs, such as vLLM.](/python/langchain-openai/llms/base/BaseOpenAI/extra_body)[attribute

model\_config](/python/langchain-openai/llms/base/BaseOpenAI/model_config)[attribute

max\_context\_size: int

Get max context size for this model.](/python/langchain-openai/llms/base/BaseOpenAI/max_context_size)

## Methods

[method

build\_extra

Build extra kwargs from additional params that were passed in.](/python/langchain-openai/llms/base/BaseOpenAI/build_extra)[method

validate\_environment

Validate that api key and python package exists in environment.](/python/langchain-openai/llms/base/BaseOpenAI/validate_environment)[method

get\_sub\_prompts

Get the sub prompts for llm call.](/python/langchain-openai/llms/base/BaseOpenAI/get_sub_prompts)[method

create\_llm\_result

Create the LLMResult from the choices and prompts.](/python/langchain-openai/llms/base/BaseOpenAI/create_llm_result)[method

get\_token\_ids

Get the token IDs using the tiktoken package.](/python/langchain-openai/llms/base/BaseOpenAI/get_token_ids)[method

max\_tokens\_for\_prompt

Calculate the maximum number of tokens possible to generate for a prompt.](/python/langchain-openai/llms/base/BaseOpenAI/max_tokens_for_prompt)[deprecatedmethod

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
input+output budget should switch to the profile fields directly.](/python/langchain-openai/llms/base/BaseOpenAI/modelname_to_contextsize)

## Inherited from[BaseLLM](/python/langchain-core/language_models/llms/BaseLLM)(langchain\_core)

### Attributes

[AOutputType](/python/langchain-core/language_models/llms/BaseLLM/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/llms/BaseLLM/invoke)[Mainvoke](/python/langchain-core/language_models/llms/BaseLLM/ainvoke)[Mbatch](/python/langchain-core/language_models/llms/BaseLLM/batch)[Mabatch](/python/langchain-core/language_models/llms/BaseLLM/abatch)[Mstream](/python/langchain-core/language_models/llms/BaseLLM/stream)[Mastream](/python/langchain-core/language_models/llms/BaseLLM/astream)[Mgenerate\_prompt](/python/langchain-core/language_models/llms/BaseLLM/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/llms/BaseLLM/agenerate_prompt)[Mgenerate](/python/langchain-core/language_models/llms/BaseLLM/generate)[Magenerate](/python/langchain-core/language_models/llms/BaseLLM/agenerate)[Mdict](/python/langchain-core/language_models/llms/BaseLLM/dict)[Msave](/python/langchain-core/language_models/llms/BaseLLM/save)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mwith\_structured\_output](/python/langchain-core/language_models/base/BaseLanguageModel/with_structured_output)[Mget\_num\_tokens](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[Mto\_json](/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Alc\_secrets](/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc\_attributes](/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[Mis\_lc\_serializable](/python/langchain-core/load/serializable/Serializable/is_lc_serializable)[Mget\_lc\_namespace](/python/langchain-core/load/serializable/Serializable/get_lc_namespace)[Mlc\_id](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/Runnable/name)[AInputType](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](/python/langchain-core/runnables/base/Runnable/stream)[Mastream](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/partners/openai/langchain_openai/llms/base.py#L56)

Version History

Copy page

### On This Page

Attributes

AclientAasync\_clientAmodel\_nameAtemperatureAmax\_tokensAtop\_pAfrequency\_penaltyApresence\_penaltyAnAbest\_ofAmodel\_kwargsAopenai\_api\_keyAopenai\_api\_baseAopenai\_organizationAopenai\_proxyAbatch\_sizeArequest\_timeoutAlogit\_biasAmax\_retriesAseedAlogprobsAstreamingAallowed\_specialAdisallowed\_specialAtiktoken\_model\_nameAdefault\_headersAdefault\_queryAhttp\_clientAhttp\_async\_clientAextra\_bodyAmodel\_configAmax\_context\_size

Methods

Mbuild\_extraMvalidate\_environmentMget\_sub\_promptsMcreate\_llm\_resultMget\_token\_idsMmodelname\_to\_contextsizeMmax\_tokens\_for\_prompt

from BaseLLM

AAttributes

AOutputType

MMethods

MinvokeMainvokeMbatchMabatchMstreamMastreamMgenerate\_promptMagenerate\_promptMgenerateMagenerateMdictMsave

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAInputType

MMethods

Mset\_verboseMgenerate\_promptMagenerate\_promptMwith\_structured\_outputMget\_num\_tokensMget\_num\_tokens\_from\_messages

from RunnableSerializable

AAttributes

Aname

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Alc\_secretsAlc\_attributes

MMethods

Mis\_lc\_serializableMget\_lc\_namespaceMlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool