Python[langchain-openai](/python/langchain-openai)[chat\_models](/python/langchain-openai/chat_models)[base](/python/langchain-openai/chat_models/base)ChatOpenAI

Classv1.3.3 (latest)●Since v0.1

# ChatOpenAI

Interface to OpenAI chat model APIs.

API scope

`ChatOpenAI` targets
[official OpenAI API specifications](https://github.com/openai/openai-openapi)
only. Non-standard response fields added by third-party providers (e.g.,
`reasoning_content`, `reasoning_details`) are **not** extracted or
preserved. If you are pointing `base_url` at a provider such as
OpenRouter, vLLM, or DeepSeek, use the corresponding provider-specific
LangChain package instead (e.g., `ChatDeepSeek`, `ChatOpenRouter`).

Setup

Install `langchain-openai` and set environment variable `OPENAI_API_KEY`.

```
pip install -U langchain-openai

# or using uv
uv add langchain-openai
```

Copy

```
export OPENAI_API_KEY="your-api-key"
```

Copy

Key init args — completion params

| Param | Type | Description |
| --- | --- | --- |
| `model` | `str` | Name of OpenAI model to use. |
| `temperature` | `float` | Sampling temperature. |
| `max_tokens` | `int | None` | Max number of tokens to generate. |
| `logprobs` | `bool | None` | Whether to return logprobs. |
| `stream_options` | `dict` | Configure streaming outputs, like whether to return token usage when streaming (`{"include_usage": True}`). |
| `use_responses_api` | `bool | None` | Whether to use the responses API. |

See full list of supported init args and their descriptions below.

Key init args — client params

| Param | Type | Description |
| --- | --- | --- |
| `timeout` | `float | Tuple[float, float] | Any | None` | Timeout for requests. |
| `max_retries` | `int | None` | Max number of retries. |
| `api_key` | `str | None` | OpenAI API key. If not passed in will be read from env var `OPENAI_API_KEY`. |
| `base_url` | `str | None` | Base URL for API requests. Only specify if using a proxy or service emulator. Falls back to env var `OPENAI_API_BASE`, then to `OPENAI_BASE_URL` (read by the underlying SDK client). |
| `organization` | `str | None` | OpenAI organization ID. If not passed in will be read from env var `OPENAI_ORG_ID`. |

See full list of supported init args and their descriptions below.

Instantiate

Create a model instance with desired params. For example:

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(
    model="...",
    temperature=0,
    max_tokens=None,
    timeout=None,
    max_retries=2,
    # api_key="...",
    # base_url="...",
    # organization="...",
    # other params...
)
```

Copy

See all available params below.

Preserved params

Any param which is not explicitly supported will be passed directly to
[`openai.OpenAI.chat.completions.create(...)`](https://platform.openai.com/docs/api-reference/chat/create)
every time to the model is invoked. For example:

```
from langchain_openai import ChatOpenAI
import openai

ChatOpenAI(..., frequency_penalty=0.2).invoke(...)

# Results in underlying API call of:

openai.OpenAI(..).chat.completions.create(..., frequency_penalty=0.2)

# Which is also equivalent to:

ChatOpenAI(...).invoke(..., frequency_penalty=0.2)
```

Copy

Invoke

Generate a response from the model:

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

Results in an `AIMessage` response:

```
AIMessage(
    content="J'adore la programmation.",
    response_metadata={
        "token_usage": {
            "completion_tokens": 5,
            "prompt_tokens": 31,
            "total_tokens": 36,
        },
        "model_name": "gpt-4.1-mini",
        "system_fingerprint": "fp_43dfabdef1",
        "finish_reason": "stop",
        "logprobs": None,
    },
    id="run-012cffe2-5d3d-424d-83b5-51c6d4a593d1-0",
    usage_metadata={"input_tokens": 31, "output_tokens": 5, "total_tokens": 36},
)
```

Copy

Stream

Stream a response from the model:

```
for chunk in model.stream(messages):
    print(chunk.text, end="")
```

Copy

Results in a sequence of `AIMessageChunk` objects with partial content:

```
AIMessageChunk(content="", id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0")
AIMessageChunk(content="J", id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0")
AIMessageChunk(content="'adore", id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0")
AIMessageChunk(content=" la", id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0")
AIMessageChunk(
    content=" programmation", id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0"
)
AIMessageChunk(content=".", id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0")
AIMessageChunk(
    content="",
    response_metadata={"finish_reason": "stop"},
    id="run-9e1517e3-12bf-48f2-bb1b-2e824f7cd7b0",
)
```

Copy

To collect the full message, you can concatenate the chunks:

```
stream = model.stream(messages)
full = next(stream)
for chunk in stream:
    full += chunk
```

Copy

```
full = AIMessageChunk(
    content="J'adore la programmation.",
    response_metadata={"finish_reason": "stop"},
    id="run-bf917526-7f58-4683-84f7-36a6b671d140",
)
```

Copy

Async

Asynchronous equivalents of `invoke`, `stream`, and `batch` are also available:

```
# Invoke
await model.ainvoke(messages)

# Stream
async for chunk in (await model.astream(messages))

# Batch
await model.abatch([messages])
```

Copy

Results in an `AIMessage` response:

```
AIMessage(
    content="J'adore la programmation.",
    response_metadata={
        "token_usage": {
            "completion_tokens": 5,
            "prompt_tokens": 31,
            "total_tokens": 36,
        },
        "model_name": "gpt-4.1-mini",
        "system_fingerprint": "fp_43dfabdef1",
        "finish_reason": "stop",
        "logprobs": None,
    },
    id="run-012cffe2-5d3d-424d-83b5-51c6d4a593d1-0",
    usage_metadata={
        "input_tokens": 31,
        "output_tokens": 5,
        "total_tokens": 36,
    },
)
```

Copy

For batched calls, results in a `list[AIMessage]`.

Tool calling

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

model_with_tools = model.bind_tools(
    [GetWeather, GetPopulation]
    # strict = True  # Enforce tool args schema is respected
)
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

Parallel tool calls

[`openai >= 1.32`](https://pypi.org/project/openai/) supports a
`parallel_tool_calls` parameter that defaults to `True`. This parameter can
be set to `False` to disable parallel tool calls:

```
ai_msg = model_with_tools.invoke(
    "What is the weather in LA and NY?", parallel_tool_calls=False
)
ai_msg.tool_calls
```

Copy

```
[
    {
        "name": "GetWeather",
        "args": {"location": "Los Angeles, CA"},
        "id": "call_4OoY0ZR99iEvC7fevsH8Uhtz",
    }
]
```

Copy

Like other runtime parameters, `parallel_tool_calls` can be bound to a model
using `model.bind(parallel_tool_calls=False)` or during instantiation by
setting `model_kwargs`.

See `bind_tools` for more.

Built-in (server-side) tools

You can access [built-in tools](https://platform.openai.com/docs/guides/tools?api-mode=responses)
supported by the OpenAI Responses API. See [LangChain docs](https://docs.langchain.com/oss/python/integrations/chat/openai#responses-api)
for more detail.

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(model="...", output_version="responses/v1")

tool = {"type": "web_search"}
model_with_tools = model.bind_tools([tool])

response = model_with_tools.invoke("What was a positive news story from today?")
response.content
```

Copy

```
[
    {
        "type": "text",
        "text": "Today, a heartwarming story emerged from ...",
        "annotations": [
            {
                "end_index": 778,
                "start_index": 682,
                "title": "Title of story",
                "type": "url_citation",
                "url": "<url of story>",
            }
        ],
    }
]
```

Copy

Added in `langchain-openai` 0.3.26: Updated `AIMessage` format

[`langchain-openai >= 0.3.26`](https://pypi.org/project/langchain-openai/#history)
allows users to opt-in to an updated `AIMessage` format when using the
Responses API. Setting `ChatOpenAI(..., output_version="responses/v1")` will
format output from reasoning summaries, built-in tool invocations, and other
response items into the message's `content` field, rather than
`additional_kwargs`. We recommend this format for new applications.

Managing conversation state

OpenAI's Responses API supports management of [conversation state](https://platform.openai.com/docs/guides/conversation-state?api-mode=responses).
Passing in response IDs from previous messages will continue a conversational
thread.

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(
    model="...",
    use_responses_api=True,
    output_version="responses/v1",
)
response = model.invoke("Hi, I'm Bob.")
response.text
```

Copy

```
"Hi Bob! How can I assist you today?"
```

Copy

```
second_response = model.invoke(
    "What is my name?",
    previous_response_id=response.response_metadata["id"],
)
second_response.text
```

Copy

```
"Your name is Bob. How can I help you today, Bob?"
```

Copy

Added in `langchain-openai` 0.3.26

You can also initialize `ChatOpenAI` with `use_previous_response_id`.
Input messages up to the most recent response will then be dropped from request
payloads, and `previous_response_id` will be set using the ID of the most
recent response.

```
model = ChatOpenAI(model="...", use_previous_response_id=True)
```

Copy

OpenAI-compatible endpoints

Some OpenAI-compatible providers/proxies may not support forwarding
reasoning blocks in request history. If you see request-format
errors while using reasoning + Responses API, prefer
`use_previous_response_id=True` (so the server keeps
conversation state).

Reasoning output

OpenAI's Responses API supports [reasoning models](https://platform.openai.com/docs/guides/reasoning?api-mode=responses)
that expose a summary of internal reasoning processes.

```
from langchain_openai import ChatOpenAI

reasoning = {
    "effort": "medium",  # 'low', 'medium', or 'high'
    "summary": "auto",  # 'detailed', 'auto', or None
}

model = ChatOpenAI(
    model="...", reasoning=reasoning, output_version="responses/v1"
)
response = model.invoke("What is 3^3?")

# Response text
print(f"Output: {response.text}")

# Reasoning summaries
for block in response.content:
    if block["type"] == "reasoning":
        for summary in block["summary"]:
            print(summary["text"])
```

Copy

```
Output: 3³ = 27
Reasoning: The user wants to know...
```

Copy

Added in `langchain-openai` 0.3.26: Updated `AIMessage` format

[`langchain-openai >= 0.3.26`](https://pypi.org/project/langchain-openai/#history)
allows users to opt-in to an updated `AIMessage` format when using the
Responses API. Setting `ChatOpenAI(..., output_version="responses/v1")` will
format output from reasoning summaries, built-in tool invocations, and other
response items into the message's `content` field, rather than
`additional_kwargs`. We recommend this format for new applications.

Troubleshooting with non-OpenAI backends

When using a non-OpenAI endpoint via `base_url`, request handling for
reasoning history can differ. If agent loops fail after tool calls, use:
`ChatOpenAI(..., use_responses_api=True, use_previous_response_id=True)`.

Structured output

```
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

See `with_structured_output` for more info.

JSON mode

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

Image input

```
import base64
import httpx
from langchain.messages import HumanMessage

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
"The weather in the image appears to be clear and pleasant. The sky is mostly blue with scattered, light clouds, suggesting a sunny day with minimal cloud cover. There is no indication of rain or strong winds, and the overall scene looks bright and calm. The lush green grass and clear visibility further indicate good weather conditions."
```

Copy

Token usage

```
ai_msg = model.invoke(messages)
ai_msg.usage_metadata

```txt
{"input_tokens": 28, "output_tokens": 5, "total_tokens": 33}
```

Copy

When streaming, set the `stream_usage` kwarg:

```
stream = model.stream(messages, stream_usage=True)
full = next(stream)
for chunk in stream:
    full += chunk
full.usage_metadata
```

Copy

```
{"input_tokens": 28, "output_tokens": 5, "total_tokens": 33}
```

Copy

Logprobs

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
        "completion_tokens": 5,
        "prompt_tokens": 28,
        "total_tokens": 33,
    },
    "model_name": "gpt-4.1-mini",
    "system_fingerprint": "fp_319be4768e",
    "finish_reason": "stop",
    "logprobs": None,
}
```

Copy

Flex processing

OpenAI offers a variety of [service tiers](https://platform.openai.com/docs/guides/flex-processing?api-mode=responses).
The "flex" tier offers cheaper pricing for requests, with the trade-off that
responses may take longer and resources might not always be available.
This approach is best suited for non-critical tasks, including model testing,
data enhancement, or jobs that can be run asynchronously.

To use it, initialize the model with `service_tier="flex"`:

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(model="...", service_tier="flex")
```

Copy

Note that this is a beta feature that is only available for a subset of models.
See OpenAI [flex processing docs](https://platform.openai.com/docs/guides/flex-processing?api-mode=responses)
for more detail.

OpenAI-compatible APIs

`ChatOpenAI` can be used with OpenAI-compatible APIs like
[LM Studio](https://lmstudio.ai/), [vLLM](https://github.com/vllm-project/vllm),
[Ollama](https://ollama.com/), and others.

To use custom parameters specific to these providers, use the `extra_body` parameter.

LM Studio example with TTL (auto-eviction)

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(
    base_url="http://localhost:1234/v1",
    api_key="lm-studio",  # Can be any string
    model="mlx-community/QwQ-32B-4bit",
    temperature=0,
    extra_body={
        "ttl": 300
    },  # Auto-evict model after 5 minutes of inactivity
)
```

Copy

vLLM example with custom parameters

```
model = ChatOpenAI(
    base_url="http://localhost:8000/v1",
    api_key="EMPTY",
    model="meta-llama/Llama-2-7b-chat-hf",
    extra_body={"use_beam_search": True, "best_of": 4},
)
```

Copy

`model_kwargs` vs `extra_body`

Use the correct parameter for different types of API arguments:

**Use `model_kwargs` for:**

* Standard OpenAI API parameters not explicitly defined as class parameters
* Parameters that should be flattened into the top-level request payload
* Examples: `max_completion_tokens`, `stream_options`, `modalities`, `audio`

```
# Standard OpenAI parameters
model = ChatOpenAI(
    model="...",
    model_kwargs={
        "stream_options": {"include_usage": True},
        "max_completion_tokens": 300,
        "modalities": ["text", "audio"],
        "audio": {"voice": "alloy", "format": "wav"},
    },
)
```

Copy

**Use `extra_body` for:**

* Custom parameters specific to OpenAI-compatible providers (vLLM, LM Studio,
  OpenRouter, etc.)
* Parameters that need to be nested under `extra_body` in the request
* Any non-standard OpenAI API parameters

```
# Custom provider parameters
model = ChatOpenAI(
    base_url="http://localhost:8000/v1",
    model="custom-model",
    extra_body={
        "use_beam_search": True,  # vLLM parameter
        "best_of": 4,  # vLLM parameter
        "ttl": 300,  # LM Studio parameter
    },
)
```

Copy

**Key Differences:**

* `model_kwargs`: Parameters are **merged into top-level** request payload
* `extra_body`: Parameters are **nested under `extra_body`** key in request

Warning

Always use `extra_body` for custom parameters, **not** `model_kwargs`.
Using `model_kwargs` for non-OpenAI parameters will cause API errors.

Prompt caching optimization

For high-volume applications with repetitive prompts, use `prompt_cache_key`
per-invocation to improve cache hit rates and reduce costs:

```
model = ChatOpenAI(model="...")

response = model.invoke(
    messages,
    prompt_cache_key="example-key-a",  # Routes to same machine for cache hits
)

customer_response = model.invoke(messages, prompt_cache_key="example-key-b")
support_response = model.invoke(messages, prompt_cache_key="example-key-c")

# Dynamic cache keys based on context
cache_key = f"example-key-{dynamic_suffix}"
response = model.invoke(messages, prompt_cache_key=cache_key)
```

Copy

Cache keys help ensure requests with the same prompt prefix are routed to
machines with existing cache, providing cost reduction and latency improvement on
cached tokens.

Copy

```
ChatOpenAI()
```

## Bases

`BaseChatOpenAI`

## Used in Docs

* [Build a SQL assistant with on-demand skills](https://docs.langchain.com/oss/python/langchain/multi-agent/skills-sql-assistant)
* [Custom workflow](https://docs.langchain.com/oss/python/langchain/multi-agent/custom-workflow)
* [Manage prompts programmatically](https://docs.langchain.com/langsmith/manage-prompts-programmatically)
* [Messages view integrations](https://docs.langchain.com/langsmith/messages-view-integrations)
* [MODEL\_AUTHENTICATION](https://docs.langchain.com/oss/python/langchain/errors/MODEL_AUTHENTICATION)

+15 more(65 more not shown)

## Attributes

[attribute

max\_tokens: int | None

Maximum number of tokens to generate.](/python/langchain-openai/chat_models/base/ChatOpenAI/max_tokens)[attribute

lc\_secrets: dict[str, str]

Mapping of secret environment variables.](/python/langchain-openai/chat_models/base/ChatOpenAI/lc_secrets)[attribute

lc\_attributes: dict[str, Any]

Get the attributes of the langchain object.](/python/langchain-openai/chat_models/base/ChatOpenAI/lc_attributes)

## Methods

[method

get\_lc\_namespace

Get the namespace of the LangChain object.](/python/langchain-openai/chat_models/base/ChatOpenAI/get_lc_namespace)[method

is\_lc\_serializable

Return whether this model can be serialized by LangChain.](/python/langchain-openai/chat_models/base/ChatOpenAI/is_lc_serializable)[method

with\_structured\_output

Model wrapper that returns outputs formatted to match the given schema.](/python/langchain-openai/chat_models/base/ChatOpenAI/with_structured_output)

## Inherited from[BaseChatOpenAI](/python/langchain-openai/chat_models/base/BaseChatOpenAI)

### Attributes

[Aclient: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/client)[Aasync\_client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/async_client)[Aroot\_client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/root_client)[Aroot\_async\_client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/root_async_client)[Amodel\_name: str

—

Model name to use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_name)[Atemperature: float | None

—

What sampling temperature to use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/temperature)[Amodel\_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_kwargs)[Aopenai\_api\_key: SecretStr | None | Callable[[], str] | Callable[[], Awaitable[str]]

—

API key to use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_api_key)[Aopenai\_api\_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or service emulator.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_api_base)[Aopenai\_organization: str | None

—

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_organization)[Aopenai\_proxy: str | None](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_proxy)[Arequest\_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/request_timeout)[Astream\_usage: bool | None

—

Whether to include usage metadata in streaming output.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/stream_usage)[Amax\_retries: int | None

—

Maximum number of retries to make when generating.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/max_retries)[Apresence\_penalty: float | None

—

Penalizes repeated tokens.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/presence_penalty)[Afrequency\_penalty: float | None

—

Penalizes repeated tokens according to frequency.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/frequency_penalty)[Aseed: int | None

—

Seed for generation](/python/langchain-openai/chat_models/base/BaseChatOpenAI/seed)[Alogprobs: bool | None

—

Whether to return logprobs.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/logprobs)[Atop\_logprobs: int | None

—

Number of most likely tokens to return at each token position, each with an](/python/langchain-openai/chat_models/base/BaseChatOpenAI/top_logprobs)[Alogit\_bias: dict[int, int] | None

—

Modify the likelihood of specified tokens appearing in the completion.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/logit_bias)[Astreaming: bool

—

Whether to stream the results or not.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/streaming)[An: int | None

—

Number of chat completions to generate for each prompt.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/n)[Atop\_p: float | None

—

Total probability mass of tokens to consider at each step.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/top_p)[Areasoning\_effort: str | None

—

Constrains effort on reasoning for reasoning models.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/reasoning_effort)[Areasoning: dict[str, Any] | None

—

Reasoning parameters for reasoning models. None disables reasoning.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/reasoning)[Averbosity: str | None

—

Controls the verbosity level of responses for reasoning models.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/verbosity)[Atiktoken\_model\_name: str | None

—

The model name to pass to tiktoken when using this class.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/tiktoken_model_name)[Adefault\_headers: Mapping[str, str] | None](/python/langchain-openai/chat_models/base/BaseChatOpenAI/default_headers)[Adefault\_query: Mapping[str, object] | None](/python/langchain-openai/chat_models/base/BaseChatOpenAI/default_query)[Ahttp\_client: Any | None

—

Optional `httpx.Client`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/http_client)[Ahttp\_async\_client: Any | None

—

Optional `httpx.AsyncClient`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/http_async_client)[Ahttp\_socket\_options: Sequence[tuple[int, int, int]] | None

—

TCP socket options applied to the httpx transports built by this instance.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/http_socket_options)[Astream\_chunk\_timeout: float | None

—

Per-chunk wall-clock timeout (seconds) on async streaming responses.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/stream_chunk_timeout)[Astop: list[str] | str | None

—

Default stop sequences.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/stop)[Aextra\_body: Mapping[str, Any] | None

—

Optional additional JSON properties to include in the request parameters](/python/langchain-openai/chat_models/base/BaseChatOpenAI/extra_body)[Ainclude\_response\_headers: bool

—

Whether to include response headers in the output message `response_metadata`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/include_response_headers)[Adisabled\_params: dict[str, Any] | None

—

Parameters of the OpenAI client or `chat.completions` endpoint that should be](/python/langchain-openai/chat_models/base/BaseChatOpenAI/disabled_params)[Acontext\_management: list[dict[str, Any]] | None

—

Configuration for](/python/langchain-openai/chat_models/base/BaseChatOpenAI/context_management)[Ainclude: list[str] | None

—

Additional fields to include in generations from Responses API.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/include)[Aservice\_tier: str | None

—

Latency tier for request.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/service_tier)[Astore: bool | None

—

If `True`, OpenAI may store response data for future use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/store)[Atruncation: str | None

—

Truncation strategy (Responses API).](/python/langchain-openai/chat_models/base/BaseChatOpenAI/truncation)[Ause\_previous\_response\_id: bool

—

If `True`, always pass `previous_response_id` using the ID of the most recent](/python/langchain-openai/chat_models/base/BaseChatOpenAI/use_previous_response_id)[Ause\_responses\_api: bool | None

—

Whether to use the Responses API instead of the Chat API.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/use_responses_api)[Aoutput\_version: str | None

—

Version of `AIMessage` output format to use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/output_version)[Amodel\_config](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_config)[Amodel: str

—

Same as model\_name.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model)

### Methods

[Mbuild\_extra

—

Build extra kwargs from additional params that were passed in.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/build_extra)[Mvalidate\_temperature

—

Validate temperature parameter for different models.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/validate_temperature)[Mvalidate\_environment

—

Validate that api key and python package exists in environment.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/validate_environment)[Mget\_token\_ids

—

Get the tokens present in the text with tiktoken package.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/get_token_ids)[Mget\_num\_tokens\_from\_messages

—

Calculate num tokens for supported OpenAI chat models.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/get_num_tokens_from_messages)[Mbind\_tools

—

Bind tool-like objects to this chat model.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/bind_tools)

## Inherited from[BaseChatModel](/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain\_core)

### Attributes

[Arate\_limiter](/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable\_streaming](/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aoutput\_version](/python/langchain-core/language_models/chat_models/BaseChatModel/output_version)[Aprofile](/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[Amodel\_config](/python/langchain-core/language_models/chat_models/BaseChatModel/model_config)[AOutputType](/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Masdict](/python/langchain-core/language_models/chat_models/BaseChatModel/asdict)[Mbind](/python/langchain-core/language_models/chat_models/BaseChatModel/bind)[Mbind\_tools](/python/langchain-core/language_models/chat_models/BaseChatModel/bind_tools)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[Amodel\_config](/python/langchain-core/language_models/base/BaseLanguageModel/model_config)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget\_num\_tokens](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)[Mget\_num\_tokens\_from\_messages](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/8a2f1a9445ed1b467cdeb0fcb89dba2c67bd2bb3/libs/partners/openai/langchain_openai/chat_models/base.py#L2565)

Version History

Copy page

### On This Page

Related Documentation

Attributes

Amax\_tokensAlc\_secretsAlc\_attributes

Methods

Mget\_lc\_namespaceMis\_lc\_serializableMwith\_structured\_output

from BaseChatOpenAI

AAttributes

AclientAasync\_clientAroot\_clientAroot\_async\_clientAmodel\_nameAtemperatureAmodel\_kwargsAopenai\_api\_keyAopenai\_api\_baseAopenai\_organizationAopenai\_proxyArequest\_timeoutAstream\_usageAmax\_retriesApresence\_penaltyAfrequency\_penaltyAseedAlogprobsAtop\_logprobsAlogit\_biasAstreamingAnAtop\_pAreasoning\_effortAreasoningAverbosityAtiktoken\_model\_nameAdefault\_headersAdefault\_queryAhttp\_clientAhttp\_async\_clientAhttp\_socket\_optionsAstream\_chunk\_timeoutAstopAextra\_bodyAinclude\_response\_headersAdisabled\_paramsAcontext\_managementAincludeAservice\_tierAstoreAtruncationAuse\_previous\_response\_idAuse\_responses\_apiAoutput\_versionAmodel\_configAmodel

MMethods

Mbuild\_extraMvalidate\_temperatureMvalidate\_environmentMget\_token\_idsMget\_num\_tokens\_from\_messagesMbind\_tools

from BaseChatModel

AAttributes

Arate\_limiterAdisable\_streamingAoutput\_versionAprofileAmodel\_configAOutputType

MMethods

MinvokeMainvokeMstreamMastreamMstream\_eventsMastream\_eventsMgenerateMagenerateMgenerate\_promptMagenerate\_promptMdictMasdictMbindMbind\_tools

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAmodel\_configAInputType

MMethods

Mmodel\_post\_initMset\_verboseMgenerate\_promptMagenerate\_promptMget\_token\_idsMget\_num\_tokensMget\_num\_tokens\_from\_messages

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