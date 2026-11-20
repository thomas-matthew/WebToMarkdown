Classv1.8.3 (latest)●Since v1.3

# AzureChatOpenAI

Azure OpenAI chat model integration.

```
AzureChatOpenAI()
```

## Bases

`BaseChatOpenAI`

**Setup:**

Head to the Azure [OpenAI quickstart guide](https://learn.microsoft.com/en-us/azure/ai-foundry/openai/chatgpt-quickstart?tabs=keyless%2Ctypescript-keyless%2Cpython-new%2Ccommand-line&pivots=programming-language-python)
to create your Azure OpenAI deployment.

Then install `langchain-openai` and set environment variables
`AZURE_OPENAI_API_KEY` and `AZURE_OPENAI_ENDPOINT`:

```
pip install -U langchain-openai

export AZURE_OPENAI_API_KEY="your-api-key"
export AZURE_OPENAI_ENDPOINT="https://your-endpoint.openai.azure.com/"
```

Copy

Key init args — completion params:
azure\_deployment:
Name of Azure OpenAI deployment to use.
temperature:
Sampling temperature.
max\_tokens:
Max number of tokens to generate.
logprobs:
Whether to return logprobs.

Key init args — client params:
api\_version:
Azure OpenAI REST API version to use (distinct from the version of the
underlying model). [See more on the different versions.](https://learn.microsoft.com/en-us/azure/ai-services/openai/reference#rest-api-versioning)
timeout:
Timeout for requests.
max\_retries:
Max number of retries.
organization:
OpenAI organization ID. If not passed in will be read from env
var `OPENAI_ORG_ID`.
model:
The name of the underlying OpenAI model. Used for tracing and token
counting. Does not affect completion.
model\_version:
The version of the underlying OpenAI model. Used for tracing and token
counting. Does not affect completion. E.g., `'0125'`, `'0125-preview'`, etc.

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

```
from langchain_openai import AzureChatOpenAI

model = AzureChatOpenAI(
    azure_deployment="your-deployment",
    api_version="2024-05-01-preview",
    temperature=0,
    max_tokens=None,
    timeout=None,
    max_retries=2,
    # organization="...",
    # model="gpt-35-turbo",
    # model_version="0125",
    # other params...
)
```

Copy

Any param which is not explicitly supported will be passed directly to the
`openai.AzureOpenAI.chat.completions.create(...)` API every time to the model is
invoked.

For example:

```
from langchain_openai import AzureChatOpenAI
import openai

AzureChatOpenAI(..., logprobs=True).invoke(...)

# results in underlying API call of:

openai.AzureOpenAI(..).chat.completions.create(..., logprobs=True)

# which is also equivalent to:

AzureChatOpenAI(...).invoke(..., logprobs=True)
```

Copy

**Invoke:**

```
messages = [
    (
        "system",
        "You are a helpful translator. Translate the user sentence to French.",
    ),
    ("human", "I love programming."),
]
model.invoke(messages)
```

Copy

```
AIMessage(
    content="J'adore programmer.",
    usage_metadata={
        "input_tokens": 28,
        "output_tokens": 6,
        "total_tokens": 34,
    },
    response_metadata={
        "token_usage": {
            "completion_tokens": 6,
            "prompt_tokens": 28,
            "total_tokens": 34,
        },
        "model_name": "gpt-5.5",
        "system_fingerprint": "fp_7ec89fabc6",
        "prompt_filter_results": [
            {
                "prompt_index": 0,
                "content_filter_results": {
                    "hate": {"filtered": False, "severity": "safe"},
                    "self_harm": {"filtered": False, "severity": "safe"},
                    "sexual": {"filtered": False, "severity": "safe"},
                    "violence": {"filtered": False, "severity": "safe"},
                },
            }
        ],
        "finish_reason": "stop",
        "logprobs": None,
        "content_filter_results": {
            "hate": {"filtered": False, "severity": "safe"},
            "self_harm": {"filtered": False, "severity": "safe"},
            "sexual": {"filtered": False, "severity": "safe"},
            "violence": {"filtered": False, "severity": "safe"},
        },
    },
    id="run-6d7a5282-0de0-4f27-9cc0-82a9db9a3ce9-0",
)
```

Copy

**Stream:**

```
for chunk in model.stream(messages):
    print(chunk.text, end="")
```

Copy

```
AIMessageChunk(content="", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(content="J", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(content="'", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(content="ad", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(content="ore", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(content=" la", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(
    content=" programm", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f"
)
AIMessageChunk(content="ation", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(content=".", id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f")
AIMessageChunk(
    content="",
    response_metadata={
        "finish_reason": "stop",
        "model_name": "gpt-5.5",
        "system_fingerprint": "fp_811936bd4f",
    },
    id="run-a6f294d3-0700-4f6a-abc2-c6ef1178c37f",
)
```

Copy

```
stream = model.stream(messages)
full = next(stream)
for chunk in stream:
    full += chunk
full
```

Copy

```
AIMessageChunk(
    content="J'adore la programmation.",
    response_metadata={
        "finish_reason": "stop",
        "model_name": "gpt-5.5",
        "system_fingerprint": "fp_811936bd4f",
    },
    id="run-ba60e41c-9258-44b8-8f3a-2f10599643b3",
)
```

Copy

**Async:**

```
await model.ainvoke(messages)

# stream:
# async for chunk in (await model.astream(messages))

# batch:
# await model.abatch([messages])
```

Copy

**Tool calling:**

```
from pydantic import BaseModel, Field

class GetWeather(BaseModel):
    '''Get the current weather in a given location'''

    location: str = Field(
        ..., description="The city and state, e.g. San Francisco, CA"
    )

class GetPopulation(BaseModel):
    '''Get the current population in a given location'''

    location: str = Field(
        ..., description="The city and state, e.g. San Francisco, CA"
    )

model_with_tools = model.bind_tools([GetWeather, GetPopulation])
ai_msg = model_with_tools.invoke(
    "Which city is hotter today and which is bigger: LA or NY?"
)
ai_msg.tool_calls
```

Copy

```
[
    {
        "name": "GetWeather",
        "args": {"location": "Los Angeles, CA"},
        "id": "call_6XswGD5Pqk8Tt5atYr7tfenU",
    },
    {
        "name": "GetWeather",
        "args": {"location": "New York, NY"},
        "id": "call_ZVL15vA8Y7kXqOy3dtmQgeCi",
    },
    {
        "name": "GetPopulation",
        "args": {"location": "Los Angeles, CA"},
        "id": "call_49CFW8zqC9W7mh7hbMLSIrXw",
    },
    {
        "name": "GetPopulation",
        "args": {"location": "New York, NY"},
        "id": "call_6ghfKxV264jEfe1mRIkS3PE7",
    },
]
```

Copy

**Structured output:**

```
from typing import Optional

from pydantic import BaseModel, Field

class Joke(BaseModel):
    '''Joke to tell user.'''

    setup: str = Field(description="The setup of the joke")
    punchline: str = Field(description="The punchline to the joke")
    rating: int | None = Field(
        description="How funny the joke is, from 1 to 10"
    )

structured_model = model.with_structured_output(Joke)
structured_model.invoke("Tell me a joke about cats")
```

Copy

```
Joke(
    setup="Why was the cat sitting on the computer?",
    punchline="To keep an eye on the mouse!",
    rating=None,
)
```

Copy

See `AzureChatOpenAI.with_structured_output()` for more.

**JSON mode:**

```
json_model = model.bind(response_format={"type": "json_object"})
ai_msg = json_model.invoke(
    "Return a JSON object with key 'random_ints' and a value of 10 random ints in [0-99]"
)
ai_msg.content
```

Copy

```
'\\n{\\n  "random_ints": [23, 87, 45, 12, 78, 34, 56, 90, 11, 67]\\n}'
```

Copy

**Image input:**

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
            "type": "image_url",
            "image_url": {"url": f"data:image/jpeg;base64,{image_data}"},
        },
    ]
)
ai_msg = model.invoke([message])
ai_msg.content
```

Copy

```
"The weather in the image appears to be quite pleasant. The sky is mostly clear"
```

Copy

**Token usage:**

```
ai_msg = model.invoke(messages)
ai_msg.usage_metadata
```

Copy

```
{"input_tokens": 28, "output_tokens": 5, "total_tokens": 33}
```

Copy

Logprobs:

```
logprobs_model = model.bind(logprobs=True)
ai_msg = logprobs_model.invoke(messages)
ai_msg.response_metadata["logprobs"]
```

Copy

```
{
    "content": [
        {
            "token": "J",
            "bytes": [74],
            "logprob": -4.9617593e-06,
            "top_logprobs": [],
        },
        {
            "token": "'adore",
            "bytes": [39, 97, 100, 111, 114, 101],
            "logprob": -0.25202933,
            "top_logprobs": [],
        },
        {
            "token": " la",
            "bytes": [32, 108, 97],
            "logprob": -0.20141791,
            "top_logprobs": [],
        },
        {
            "token": " programmation",
            "bytes": [
                32,
                112,
                114,
                111,
                103,
                114,
                97,
                109,
                109,
                97,
                116,
                105,
                111,
                110,
            ],
            "logprob": -1.9361265e-07,
            "top_logprobs": [],
        },
        {
            "token": ".",
            "bytes": [46],
            "logprob": -1.2233183e-05,
            "top_logprobs": [],
        },
    ]
}
```

Copy

Response metadata

```
ai_msg = model.invoke(messages)
ai_msg.response_metadata
```

Copy

```
{
    "token_usage": {
        "completion_tokens": 6,
        "prompt_tokens": 28,
        "total_tokens": 34,
    },
    "model_name": "gpt-35-turbo",
    "system_fingerprint": None,
    "prompt_filter_results": [
        {
            "prompt_index": 0,
            "content_filter_results": {
                "hate": {"filtered": False, "severity": "safe"},
                "self_harm": {"filtered": False, "severity": "safe"},
                "sexual": {"filtered": False, "severity": "safe"},
                "violence": {"filtered": False, "severity": "safe"},
            },
        }
    ],
    "finish_reason": "stop",
    "logprobs": None,
    "content_filter_results": {
        "hate": {"filtered": False, "severity": "safe"},
        "self_harm": {"filtered": False, "severity": "safe"},
        "sexual": {"filtered": False, "severity": "safe"},
        "violence": {"filtered": False, "severity": "safe"},
    },
}
```

Copy

## Used in Docs

* [AzureChatOpenAI integration](https://docs.langchain.com/oss/python/integrations/chat/azure_chat_openai)

## Attributes

attribute

azure\_endpoint: str | None

Your Azure endpoint, including the resource.

Automatically inferred from env var `AZURE_OPENAI_ENDPOINT` if not provided.

Example: `https://example-resource.azure.openai.com/`

attribute

deployment\_name: str | None

A model deployment.

If given sets the base client URL to include `/deployments/{azure_deployment}`

Note

This means you won't be able to use non-deployment endpoints.

attribute

openai\_api\_version: str | None

Automatically inferred from env var `OPENAI_API_VERSION` if not provided.

attribute

openai\_api\_key: SecretStr | None

Automatically inferred from env var `AZURE_OPENAI_API_KEY` if not provided.

attribute

azure\_ad\_token: SecretStr | None

Your Azure Active Directory token.

Automatically inferred from env var `AZURE_OPENAI_AD_TOKEN` if not provided.

For more, see [this page](https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id).

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

model\_version: str

The version of the model (e.g. `'0125'` for `'gpt-3.5-0125'`).

Azure OpenAI doesn't return model version with the response by default so it must
be manually specified if you want to use this information downstream, e.g. when
calculating costs.

When you specify the version, it will be appended to the model name in the
response. Setting correct version will help you to calculate the cost properly.
Model version is not validated, so make sure you set it correctly to get the
correct cost.

attribute

openai\_api\_type: str | None

Legacy, for `openai<1.0.0` support.

attribute

validate\_base\_url: bool

If legacy arg `openai_api_base` is passed in, try to infer if it is a
`base_url` or `azure_endpoint` and update client params accordingly.

attribute

model\_name: str | None

Name of the deployed OpenAI model.

Distinct from the Azure deployment name, which is set by the Azure user.
Used for tracing and token counting.

Warning

Does NOT affect completion.

attribute

disabled\_params: dict[str, Any] | None

Parameters of the OpenAI client or chat.completions endpoint that should be
disabled for the given model.

Should be specified as `{"param": None | ['val1', 'val2']}` where the key is the
parameter and the value is either None, meaning that parameter should never be
used, or it's a list of disabled values for the parameter.

For example, older models may not support the `'parallel_tool_calls'` parameter at
all, in which case `disabled_params={"parallel_tool_calls: None}` can ben passed
in.

If a parameter is disabled then it will not be used by default in any methods, e.g.
in
`langchain_openai.chat_models.azure.AzureChatOpenAI.with_structured_output`.
However this does not prevent a user from directly passed in the parameter during
invocation.

By default, unless `model_name="gpt-4o"` is specified, then
`'parallel_tools_calls'` will be disabled.

attribute

max\_tokens: int | None

Maximum number of tokens to generate.

attribute

lc\_secrets: dict[str, str]

Get the mapping of secret environment variables.

attribute

lc\_attributes: dict[str, Any]

Get the attributes relevant to tracing.

## Methods

method

get\_lc\_namespace

Get the namespace of the LangChain object.

method

is\_lc\_serializable

Check if the class is serializable in langchain.

method

validate\_environment

Validate that api key and python package exists in environment.

method

with\_structured\_output

Model wrapper that returns outputs formatted to match the given schema.

## Inherited from[BaseChatOpenAI](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI)

### Attributes

[Aclient: Any](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/client)[Aasync\_client: Any](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/async_client)[Aroot\_client: Any](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/root_client)[Aroot\_async\_client: Any](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/root_async_client)

Atemperature: float | None

—

What sampling temperature to use.

Amodel\_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.

Aopenai\_api\_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or service emulator.

Aopenai\_organization: str | None

—

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

[Aopenai\_proxy: str | None](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_proxy)

Arequest\_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API.

Astream\_usage: bool | None

—

Whether to include usage metadata in streaming output.

Amax\_retries: int | None

—

Maximum number of retries to make when generating.

Apresence\_penalty: float | None

—

Penalizes repeated tokens.

Afrequency\_penalty: float | None

—

Penalizes repeated tokens according to frequency.

Aseed: int | None

—

Seed for generation

Alogprobs: bool | None

—

Whether to return logprobs.

Atop\_logprobs: int | None

—

Number of most likely tokens to return at each token position, each with an

Alogit\_bias: dict[int, int] | None

—

Modify the likelihood of specified tokens appearing in the completion.

Astreaming: bool

—

Whether to stream the results or not.

An: int | None

—

Number of chat completions to generate for each prompt.

Atop\_p: float | None

—

Total probability mass of tokens to consider at each step.

Areasoning\_effort: str | None

—

Constrains effort on reasoning for reasoning models.

Areasoning: dict[str, Any] | None

—

Reasoning parameters for reasoning models. None disables reasoning.

Averbosity: str | None

—

Controls the verbosity level of responses for reasoning models.

Atiktoken\_model\_name: str | None

—

The model name to pass to tiktoken when using this class.

[Adefault\_headers: Mapping[str, str] | None](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/default_headers)[Adefault\_query: Mapping[str, object] | None](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/default_query)

Ahttp\_client: Any | None

—

Optional `httpx.Client`.

Ahttp\_async\_client: Any | None

—

Optional `httpx.AsyncClient`.

Ahttp\_socket\_options: Sequence[tuple[int, int, int]] | None

—

TCP socket options applied to the httpx transports built by this instance.

Astream\_chunk\_timeout: float | None

—

Per-chunk wall-clock timeout (seconds) on async streaming responses.

Astop: list[str] | str | None

—

Default stop sequences.

Aextra\_body: Mapping[str, Any] | None

—

Optional additional JSON properties to include in the request parameters

Ainclude\_response\_headers: bool

—

Whether to include response headers in the output message `response_metadata`.

Acontext\_management: list[dict[str, Any]] | None

—

Configuration for

Ainclude: list[str] | None

—

Additional fields to include in generations from Responses API.

Aprompt\_cache\_options: dict[str, Any] | None

—

Options controlling OpenAI prompt cache behavior.

Aservice\_tier: str | None

—

Latency tier for request.

Astore: bool | None

—

If `True`, OpenAI may store response data for future use.

Atruncation: str | None

—

Truncation strategy (Responses API).

Ause\_previous\_response\_id: bool

—

If `True`, always pass `previous_response_id` using the ID of the most recent

Ause\_responses\_api: bool | None

—

Whether to use the Responses API instead of the Chat API.

Aoutput\_version: str | None

—

Version of `AIMessage` output format to use.

[Amodel\_config](https://reference.langchain.com/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_config)

Amodel: str

—

Same as model\_name.

### Methods

Mbuild\_extra

—

Build extra kwargs from additional params that were passed in.

Mvalidate\_temperature

—

Validate temperature parameter for different models.

Mget\_token\_ids

—

Get the tokens present in the text with tiktoken package.

Mget\_num\_tokens\_from\_messages

—

Calculate num tokens for supported OpenAI chat models.

Mbind\_tools

—

Bind tool-like objects to this chat model.

## Inherited from[BaseChatModel](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain\_core)

### Attributes

[Arate\_limiter](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable\_streaming](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aoutput\_version](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/output_version)[Aprofile](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[Amodel\_config](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/model_config)[AOutputType](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream\_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream\_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Masdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/asdict)[Mbind](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/bind)[Mbind\_tools](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/bind_tools)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[Amodel\_config](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_config)[AInputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget\_num\_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/chat_models/azure.py#L64)

Version History
