Classv1.4.1 (latest)●Since v0.1

# ChatXAI

ChatXAI chat model.

Refer to [xAI's documentation](https://docs.x.ai/docs/api-reference#chat-completions)
for more nuanced details on the API's behavior and supported parameters.

```
ChatXAI()
```

## Bases

`BaseChatOpenAI`

**Setup:**

Install `langchain-xai` and set environment variable `XAI_API_KEY`.

```
pip install -U langchain-xai
export XAI_API_KEY="your-api-key"
```

Copy

Key init args — completion params:
model:
Name of model to use.
temperature:
Sampling temperature between `0` and `2`. Higher values mean more random completions,
while lower values (like `0.2`) mean more focused and deterministic completions.
(Default: `1`.)
max_tokens:
Max number of tokens to generate. Refer to your [model's documentation](https://docs.x.ai/docs/models#model-pricing)
for the maximum number of tokens it can generate.
logprobs:
Whether to return logprobs.

Key init args — client params:
timeout:
Timeout for requests.
max_retries:
Max number of retries.
api_key:
xAI API key. If not passed in will be read from env var `XAI_API_KEY`.

**Instantiate:**

```
from langchain_xai import ChatXAI

model = ChatXAI(
    model="grok-4",
    temperature=0,
    max_tokens=None,
    timeout=None,
    max_retries=2,
    # api_key="...",
    # other params...
)
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
    content="J'adore la programmation.",
    response_metadata={
        "token_usage": {
            "completion_tokens": 9,
            "prompt_tokens": 32,
            "total_tokens": 41,
        },
        "model_name": "grok-4",
        "system_fingerprint": None,
        "finish_reason": "stop",
        "logprobs": None,
    },
    id="run-168dceca-3b8b-4283-94e3-4c739dbc1525-0",
    usage_metadata={
        "input_tokens": 32,
        "output_tokens": 9,
        "total_tokens": 41,
    },
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
content='J' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content="'" id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content='ad' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content='ore' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content=' la' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content=' programm' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content='ation' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content='.' id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
content='' response_metadata={'finish_reason': 'stop', 'model_name': 'grok-4'} id='run-1bc996b5-293f-4114-96a1-e0f755c05eb9'
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

```
AIMessage(
    content="J'adore la programmation.",
    response_metadata={
        "token_usage": {
            "completion_tokens": 9,
            "prompt_tokens": 32,
            "total_tokens": 41,
        },
        "model_name": "grok-4",
        "system_fingerprint": None,
        "finish_reason": "stop",
        "logprobs": None,
    },
    id="run-09371a11-7f72-4c53-8e7c-9de5c238b34c-0",
    usage_metadata={
        "input_tokens": 32,
        "output_tokens": 9,
        "total_tokens": 41,
    },
)
```

Copy

**Reasoning:**

[Certain xAI models](https://docs.x.ai/docs/models#model-pricing) support reasoning,
which allows the model to provide reasoning content along with the response.

If provided, reasoning content is returned under the `additional_kwargs` field of the
`AIMessage` or `AIMessageChunk`.

If supported, reasoning effort can be specified in the model constructor's `extra_body`
argument, which will control the amount of reasoning the model does. The value can be one of
`'low'` or `'high'`.

```
model = ChatXAI(
    model="grok-3-mini",
    extra_body={"reasoning_effort": "high"},
)
```

Copy

Note

As of 2025-07-10, `reasoning_content` is only returned in Grok 3 models, such as
[Grok 3 Mini](https://docs.x.ai/docs/models/grok-3-mini).

Note

Note that in [Grok 4](https://docs.x.ai/docs/models/grok-4-0709), as of 2025-07-10,
reasoning is not exposed in `reasoning_content` (other than initial `'Thinking...'` text),
reasoning cannot be disabled, and the `reasoning_effort` cannot be specified.

Tool calling / function calling:

```
from pydantic import BaseModel, Field

model = ChatXAI(model="grok-4")

class GetWeather(BaseModel):
    '''Get the current weather in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

class GetPopulation(BaseModel):
    '''Get the current population in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

model_with_tools = model.bind_tools([GetWeather, GetPopulation])
ai_msg = model_with_tools.invoke("Which city is bigger: LA or NY?")
ai_msg.tool_calls
```

Copy

```
[
    {
        "name": "GetPopulation",
        "args": {"location": "NY"},
        "id": "call_m5tstyn2004pre9bfuxvom8x",
        "type": "tool_call",
    },
    {
        "name": "GetPopulation",
        "args": {"location": "LA"},
        "id": "call_0vjgq455gq1av5sp9eb1pw6a",
        "type": "tool_call",
    },
]
```

Copy

Note

With stream response, the tool / function call will be returned in whole in a
single chunk, instead of being streamed across chunks.

Tool choice can be controlled by setting the `tool_choice` parameter in the model
constructor's `extra_body` argument. For example, to disable tool / function calling:

```
model = ChatXAI(model="grok-4", extra_body={"tool_choice": "none"})
```

Copy

To require that the model always calls a tool / function, set `tool_choice` to `'required'`:

```
model = ChatXAI(model="grok-4", extra_body={"tool_choice": "required"})
```

Copy

To specify a tool / function to call, set `tool_choice` to the name of the tool / function:

```
from pydantic import BaseModel, Field

model = ChatXAI(
    model="grok-4",
    extra_body={
        "tool_choice": {"type": "function", "function": {"name": "GetWeather"}}
    },
)

class GetWeather(BaseModel):
    \"\"\"Get the current weather in a given location\"\"\"

    location: str = Field(..., description='The city and state, e.g. San Francisco, CA')

class GetPopulation(BaseModel):
    \"\"\"Get the current population in a given location\"\"\"

    location: str = Field(..., description='The city and state, e.g. San Francisco, CA')

model_with_tools = model.bind_tools([GetWeather, GetPopulation])
ai_msg = model_with_tools.invoke(
    "Which city is bigger: LA or NY?",
)
ai_msg.tool_calls
```

Copy

The resulting tool call would be:

```
[
    {
        "name": "GetWeather",
        "args": {"location": "Los Angeles, CA"},
        "id": "call_81668711",
        "type": "tool_call",
    }
]
```

Copy

Parallel tool calling / parallel function calling:
By default, parallel tool / function calling is enabled, so you can process
multiple function calls in one request/response cycle. When two or more tool calls
are required, all of the tool call requests will be included in the response body.

**Structured output:**

```
from typing import Optional

from pydantic import BaseModel, Field

class Joke(BaseModel):
    '''Joke to tell user.'''

    setup: str = Field(description="The setup of the joke")
    punchline: str = Field(description="The punchline to the joke")
    rating: int | None = Field(description="How funny the joke is, from 1 to 10")

structured_model = model.with_structured_output(Joke)
structured_model.invoke("Tell me a joke about cats")
```

Copy

```
Joke(
    setup="Why was the cat sitting on the computer?",
    punchline="To keep an eye on the mouse!",
    rating=7,
)
```

Copy

**Web search:**

**Live Search** (the legacy `search_parameters` option) has been deprecated by xAI.
Use `bind_tools` with compatible tool definitions when using the OpenAI-compatible
Responses API instead. If you pass `search_parameters` to `ChatXAI`, a
`DeprecationWarning` is emitted and the parameter is ignored; requests otherwise
succeed without search.

**Token usage:**

```
ai_msg = model.invoke(messages)
ai_msg.usage_metadata
```

Copy

```
{"input_tokens": 37, "output_tokens": 6, "total_tokens": 43}
```

Copy

**Logprobs:**

```
logprobs_model = model.bind(logprobs=True)
messages = [("human", "Say Hello World! Do not return anything else.")]
ai_msg = logprobs_model.invoke(messages)
ai_msg.response_metadata["logprobs"]
```

Copy

```
{
    "content": None,
    "token_ids": [22557, 3304, 28808, 2],
    "tokens": [" Hello", " World", "!", "</s>"],
    "token_logprobs": [-4.7683716e-06, -5.9604645e-07, 0, -0.057373047],
}
```

Copy

Response metadata:

```
ai_msg = model.invoke(messages)
ai_msg.response_metadata
```

Copy

```
{
    "token_usage": {
        "completion_tokens": 4,
        "prompt_tokens": 19,
        "total_tokens": 23,
    },
    "model_name": "grok-4",
    "system_fingerprint": None,
    "finish_reason": "stop",
    "logprobs": None,
}
```

Copy

## Used in Docs

* [ChatXAI integration](https://docs.langchain.com/oss/python/integrations/chat/xai)
* [xAI integrations](https://docs.langchain.com/oss/python/integrations/providers/xai)

## Attributes

attribute

model_name: str

Model name to use.

attribute

xai_api_key: SecretStr | None

xAI API key.

Automatically read from env variable `XAI_API_KEY` if not provided.

attribute

xai_api_base: str

Base URL path for API requests.

Automatically read from env variable `XAI_API_BASE` if not provided.

attribute

search_parameters: dict[str, Any] | None

**Deprecated.** Use web search tools instead:

```
ChatXAI(model="...").bind_tools([{"type": "web_search"}])
```

Copy

attribute

openai_api_key: SecretStr | None

attribute

openai_api_base: str | None

attribute

model_config

attribute

lc_secrets: dict[str, str]

A map of constructor argument names to secret ids.

For example, `{"xai_api_key": "XAI_API_KEY"}`

## Methods

method

get_lc_namespace

Get the namespace of the LangChain object.

method

is_lc_serializable

Return whether this model can be serialized by LangChain.

method

validate_environment

Validate that api key and python package exists in environment.

method

with_structured_output

Model wrapper that returns outputs formatted to match the given schema.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/b09c31a1138243c8bf443ab64415a1294cdf3703/libs/partners/xai/langchain_xai/chat_models.py#L65)

Version History
