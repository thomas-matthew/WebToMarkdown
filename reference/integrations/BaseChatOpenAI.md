Python[langchain-openai](/python/langchain-openai)[chat\_models](/python/langchain-openai/chat_models)[base](/python/langchain-openai/chat_models/base)BaseChatOpenAI

Classv1.2.1 (latest)●Since v0.1

# BaseChatOpenAI

Base wrapper around OpenAI large language models for chat.

This base class targets
[official OpenAI API specifications](https://github.com/openai/openai-openapi)
only. Non-standard response fields added by third-party providers (e.g.,
`reasoning_content`) are not extracted. Use a provider-specific subclass for
full provider support.

Copy

```
BaseChatOpenAI()
```

## Bases

`BaseChatModel`

## Attributes

[attribute

client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/client)[attribute

async\_client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/async_client)[attribute

root\_client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/root_client)[attribute

root\_async\_client: Any](/python/langchain-openai/chat_models/base/BaseChatOpenAI/root_async_client)[attribute

model\_name: str

Model name to use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_name)[attribute

temperature: float | None

What sampling temperature to use.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/temperature)[attribute

model\_kwargs: dict[str, Any]

Holds any model parameters valid for `create` call not explicitly specified.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_kwargs)[attribute

openai\_api\_key: SecretStr | None | Callable[[], str] | Callable[[], Awaitable[str]]

API key to use.

Can be inferred from the `OPENAI_API_KEY` environment variable, or specified
as a string, or sync or async callable that returns a string.

Specify with environment variable

```
export OPENAI_API_KEY=...
```

Copy

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(model="gpt-5-nano")
```

Copy

Specify with a string

```
from langchain_openai import ChatOpenAI

model = ChatOpenAI(model="gpt-5-nano", api_key="...")
```

Copy

Specify with a sync callable

```
from langchain_openai import ChatOpenAI

def get_api_key() -> str:
    # Custom logic to retrieve API key
    return "..."

model = ChatOpenAI(model="gpt-5-nano", api_key=get_api_key)
```

Copy

Specify with an async callable

```
from langchain_openai import ChatOpenAI

async def get_api_key() -> str:
    # Custom async logic to retrieve API key
    return "..."

model = ChatOpenAI(model="gpt-5-nano", api_key=get_api_key)
```

Copy](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_api_key)[attribute

openai\_api\_base: str | None

Base URL path for API requests, leave blank if not using a proxy or service emulator.

Resolution order (first match wins):

1. Explicit `base_url` (or `openai_api_base`) kwarg.
2. Env var `OPENAI_API_BASE` (read by LangChain at init).
3. Env var `OPENAI_BASE_URL` (read by the underlying `openai` SDK client).

`OPENAI_BASE_URL` is also inspected by LangChain only to decide whether to
default-enable `stream_usage` — when set, the default is left off because many
non-OpenAI endpoints do not support streaming token usage.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_api_base)[attribute

openai\_organization: str | None

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_organization)[attribute

openai\_proxy: str | None](/python/langchain-openai/chat_models/base/BaseChatOpenAI/openai_proxy)[attribute

request\_timeout: float | tuple[float, float] | Any | None

Timeout for requests to OpenAI completion API.

Can be float, `httpx.Timeout` or `None`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/request_timeout)[attribute

stream\_usage: bool | None

Whether to include usage metadata in streaming output.

If enabled, an additional message chunk will be generated during the stream
including usage metadata.

This parameter is enabled unless `openai_api_base` is set or the model is
initialized with a custom client, as many chat completions APIs do not
support streaming token usage.

Behavior changed in `langchain-openai` 0.3.35

Enabled for default base URL and client.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/stream_usage)[attribute

max\_retries: int | None

Maximum number of retries to make when generating.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/max_retries)[attribute

presence\_penalty: float | None

Penalizes repeated tokens.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/presence_penalty)[attribute

frequency\_penalty: float | None

Penalizes repeated tokens according to frequency.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/frequency_penalty)[attribute

seed: int | None

Seed for generation](/python/langchain-openai/chat_models/base/BaseChatOpenAI/seed)[attribute

logprobs: bool | None

Whether to return logprobs.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/logprobs)[attribute

top\_logprobs: int | None

Number of most likely tokens to return at each token position, each with an
associated log probability.

`logprobs` must be set to true if this parameter is used.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/top_logprobs)[attribute

logit\_bias: dict[int, int] | None

Modify the likelihood of specified tokens appearing in the completion.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/logit_bias)[attribute

streaming: bool

Whether to stream the results or not.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/streaming)[attribute

n: int | None

Number of chat completions to generate for each prompt.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/n)[attribute

top\_p: float | None

Total probability mass of tokens to consider at each step.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/top_p)[attribute

max\_tokens: int | None

Maximum number of tokens to generate.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/max_tokens)[attribute

reasoning\_effort: str | None

Constrains effort on reasoning for reasoning models.

For use with the Chat Completions API. Reasoning models only.

Currently supported values are `'minimal'`, `'low'`, `'medium'`, and
`'high'`. Reducing reasoning effort can result in faster responses and fewer
tokens used on reasoning in a response.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/reasoning_effort)[attribute

reasoning: dict[str, Any] | None

Reasoning parameters for reasoning models. None disables reasoning.

For use with the Responses API.

```
reasoning={
    "effort": None,  # Default None; can be "low", "medium", or "high"
    "summary": "auto",  # Can be "auto", "concise", or "detailed"
}
```

Copy](/python/langchain-openai/chat_models/base/BaseChatOpenAI/reasoning)[attribute

verbosity: str | None

Controls the verbosity level of responses for reasoning models.

For use with the Responses API.

Currently supported values are `'low'`, `'medium'`, and `'high'`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/verbosity)[attribute

tiktoken\_model\_name: str | None

The model name to pass to tiktoken when using this class.

Tiktoken is used to count the number of tokens in documents to constrain
them to be under a certain limit.

By default, when set to `None`, this will be the same as the embedding model name.
However, there are some cases where you may want to use this `Embedding` class with
a model name not supported by tiktoken. This can include when using Azure embeddings
or when using one of the many model providers that expose an OpenAI-like
API but with different models. In those cases, in order to avoid erroring
when tiktoken is called, you can specify a model name to use here.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/tiktoken_model_name)[attribute

default\_headers: Mapping[str, str] | None](/python/langchain-openai/chat_models/base/BaseChatOpenAI/default_headers)[attribute

default\_query: Mapping[str, object] | None](/python/langchain-openai/chat_models/base/BaseChatOpenAI/default_query)[attribute

http\_client: Any | None

Optional `httpx.Client`.

Only used for sync invocations. Must specify `http_async_client` as well if
you'd like a custom client for async invocations.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/http_client)[attribute

http\_async\_client: Any | None

Optional `httpx.AsyncClient`.

Only used for async invocations. Must specify `http_client` as well if you'd
like a custom client for sync invocations.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/http_async_client)[attribute

http\_socket\_options: Sequence[tuple[int, int, int]] | None

TCP socket options applied to the httpx transports built by this instance.

Defaults to a conservative TCP-keepalive + `TCP_USER_TIMEOUT` profile that
targets a ~2-minute bound on silent connection hangs (silent mid-stream peer
loss, gVisor/NAT idle timeouts, silent TCP black holes) on platforms that
support the full option set. On platforms that only support a subset
(macOS without `TCP_USER_TIMEOUT`, Windows with only `SO_KEEPALIVE`,
minimal kernels), unsupported options are silently dropped and the bound
degrades to whatever the remaining options + OS defaults provide — still
better than indefinite hang.

Accepted values:

* `None` (default): use env-driven defaults. Matches the "unset" convention
  used by `http_client` elsewhere on this class.
* `()` (empty): disable socket-option injection entirely. Inherits the OS
  defaults and restores httpx's native env-proxy auto-detection.
* A non-empty sequence of `(level, option, value)` tuples: explicit
  override; passed verbatim to the transport (not filtered). Unsupported
  options raise `OSError` at connect time rather than being silently
  dropped — the user chose them explicitly.

Environment variables (only consulted when this field is `None`):
`LANGCHAIN_OPENAI_TCP_KEEPALIVE` (set to `0` to disable entirely — the
kill-switch), `LANGCHAIN_OPENAI_TCP_KEEPIDLE`,
`LANGCHAIN_OPENAI_TCP_KEEPINTVL`, `LANGCHAIN_OPENAI_TCP_KEEPCNT`,
`LANGCHAIN_OPENAI_TCP_USER_TIMEOUT_MS`.

Applied per side: if `http_client` is supplied, the sync path uses
that user-owned client's socket options as-is; the async path still
gets `http_socket_options` applied to its default builder (and
vice-versa for `http_async_client`). Supply both to take full control.

Interaction with env-proxy auto-detection

When a custom `httpx` transport is active, `httpx` disables its
native env-proxy auto-detection (`HTTP_PROXY` / `HTTPS_PROXY` /
`ALL_PROXY` / `NO_PROXY` and macOS/Windows system proxy settings).

To keep the default shape safe, `ChatOpenAI` detects the
"proxy-env-shadow" pattern and **skips the custom transport
entirely** when **all** of the following hold:

* `http_socket_options` is left at its default (`None`)
* No `http_client` or `http_async_client` supplied
* No `openai_proxy` supplied
* A proxy env var or system proxy is visible to httpx

On that specific shape, the instance falls back to pre-PR behavior
and httpx's env-proxy auto-detection applies (a one-time `INFO` log
records the bypass for observability).

If you explicitly set `http_socket_options=[...]` while a proxy
env var is also set, no bypass — you opted into the transport, and
a one-time `WARNING` records the shadowing. Set
`http_socket_options=()` or `LANGCHAIN_OPENAI_TCP_KEEPALIVE=0` to
disable transport injection explicitly, or pass a fully-configured
`http_async_client` / `http_client` to take full control. The
`openai_proxy` constructor kwarg is unaffected — socket options
are applied cleanly through the proxied transport on that path.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/http_socket_options)[attribute

stream\_chunk\_timeout: float | None

Per-chunk wall-clock timeout (seconds) on async streaming responses.

Applies to async invocations only (`astream`, `ainvoke` with streaming,
etc.). Sync streaming (`stream`) is not affected.

Fires between content chunks yielded by the openai SDK's streaming iterator
(i.e., each call to `__anext__` on the response). Crucially, this is
**not** the same as httpx's `timeout.read`:

* httpx's read timeout is inter-byte and gets reset every time *any* bytes
  arrive on the socket — including OpenAI's SSE keepalive comments
  (`: keepalive`) that trickle down during long model generations. A
  stream that's silent on *content* but still producing keepalives looks
  alive forever to httpx.
* `stream_chunk_timeout` measures the gap between *parsed chunks*. The
  openai SDK's SSE parser consumes keepalive comments internally and does
  not emit them as chunks, so keepalives do *not* reset this timer. It
  fires on genuine content silence.

When it fires, a `StreamChunkTimeoutError`
(subclass of `asyncio.TimeoutError`) is raised with a self-describing
message naming this knob, the env-var override, the model, and the
number of chunks received before the stall. A WARNING log with
`extra={"source": "stream_chunk_timeout", "timeout_s": <value>, "model_name": <value>, "chunks_received": <value>}` also fires so
aggregate logging can distinguish app-layer timeouts from
transport-layer failures.

Defaults to 120s. Set to `None` or `0` to disable. Overridable via the
`LANGCHAIN_OPENAI_STREAM_CHUNK_TIMEOUT_S` env var. Negative values
(from either the env var or the constructor kwarg — e.g., hydrated
from YAML/JSON configs) fall back to the default with a `WARNING` log
rather than silently disabling the wrapper, so a misconfigured value
still boots safely and the fallback is visible.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/stream_chunk_timeout)[attribute

stop: list[str] | str | None

Default stop sequences.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/stop)[attribute

extra\_body: Mapping[str, Any] | None

Optional additional JSON properties to include in the request parameters
when making requests to OpenAI compatible APIs, such as vLLM, LM Studio, or
other providers.

This is the recommended way to pass custom parameters that are specific to your
OpenAI-compatible API provider but not part of the standard OpenAI API.

Examples:

* [LM Studio](https://lmstudio.ai/) TTL parameter: `extra_body={"ttl": 300}`
* [vLLM](https://github.com/vllm-project/vllm) custom parameters:
  `extra_body={"use_beam_search": True}`
* Any other provider-specific parameters

Warning

Do not use `model_kwargs` for custom parameters that are not part of the
standard OpenAI API, as this will cause errors when making API calls. Use
`extra_body` instead.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/extra_body)[attribute

include\_response\_headers: bool

Whether to include response headers in the output message `response_metadata`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/include_response_headers)[attribute

disabled\_params: dict[str, Any] | None

Parameters of the OpenAI client or `chat.completions` endpoint that should be
disabled for the given model.

Should be specified as `{"param": None | ['val1', 'val2']}` where the key is the
parameter and the value is either None, meaning that parameter should never be
used, or it's a list of disabled values for the parameter.

For example, older models may not support the `'parallel_tool_calls'` parameter at
all, in which case `disabled_params={"parallel_tool_calls": None}` can be passed
in.

If a parameter is disabled then it will not be used by default in any methods, e.g.
in `with_structured_output`. However this does not prevent a user from directly
passed in the parameter during invocation.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/disabled_params)[attribute

context\_management: list[dict[str, Any]] | None

Configuration for
[context management](https://developers.openai.com/api/docs/guides/compaction).](/python/langchain-openai/chat_models/base/BaseChatOpenAI/context_management)[attribute

include: list[str] | None

Additional fields to include in generations from Responses API.

Supported values:

* `'file_search_call.results'`
* `'message.input_image.image_url'`
* `'computer_call_output.output.image_url'`
* `'reasoning.encrypted_content'`
* `'code_interpreter_call.outputs'`](/python/langchain-openai/chat_models/base/BaseChatOpenAI/include)[attribute

service\_tier: str | None

Latency tier for request.

Options are `'auto'`, `'default'`, or `'flex'`.

Relevant for users of OpenAI's scale tier service.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/service_tier)[attribute

store: bool | None

If `True`, OpenAI may store response data for future use.

Defaults to `True` for the Responses API and `False` for the Chat Completions API.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/store)[attribute

truncation: str | None

Truncation strategy (Responses API).

Can be `'auto'` or `'disabled'` (default).

If `'auto'`, model may drop input items from the middle of the message sequence to
fit the context window.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/truncation)[attribute

use\_previous\_response\_id: bool

If `True`, always pass `previous_response_id` using the ID of the most recent
response. Responses API only.

Input messages up to the most recent response will be dropped from request
payloads.

For example, the following two are equivalent:

```
model = ChatOpenAI(
    model="...",
    use_previous_response_id=True,
)
model.invoke(
    [
        HumanMessage("Hello"),
        AIMessage("Hi there!", response_metadata={"id": "resp_123"}),
        HumanMessage("How are you?"),
    ]
)
```

Copy

```
model = ChatOpenAI(model="...", use_responses_api=True)
model.invoke([HumanMessage("How are you?")], previous_response_id="resp_123")
```

Copy](/python/langchain-openai/chat_models/base/BaseChatOpenAI/use_previous_response_id)[attribute

use\_responses\_api: bool | None

Whether to use the Responses API instead of the Chat API.

If not specified then will be inferred based on invocation params.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/use_responses_api)[attribute

output\_version: str | None

Version of `AIMessage` output format to use.

This field is used to roll-out new output formats for chat model `AIMessage`
responses in a backwards-compatible way.

Supported values:

* `'v0'`: `AIMessage` format as of `langchain-openai 0.3.x`.
* `'responses/v1'`: Formats Responses API output items into AIMessage content blocks
  (Responses API only)
* `'v1'`: v1 of LangChain cross-provider standard.

Behavior changed in `langchain-openai` 1.0.0

Default updated to `"responses/v1"`.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/output_version)[attribute

model\_config](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model_config)[attribute

model: str

Same as model\_name.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/model)

## Methods

[method

build\_extra

Build extra kwargs from additional params that were passed in.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/build_extra)[method

validate\_temperature

Validate temperature parameter for different models.

* gpt-5 models (excluding gpt-5-chat) only allow `temperature=1` or unset
  (Defaults to 1)](/python/langchain-openai/chat_models/base/BaseChatOpenAI/validate_temperature)[method

validate\_environment

Validate that api key and python package exists in environment.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/validate_environment)[method

get\_token\_ids

Get the tokens present in the text with tiktoken package.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/get_token_ids)[method

get\_num\_tokens\_from\_messages

Calculate num tokens for `gpt-3.5-turbo` and `gpt-4` with `tiktoken` package.

Warning

You must have the `pillow` installed if you want to count image tokens if
you are specifying the image as a base64 string, and you must have both
`pillow` and `httpx` installed if you are specifying the image as a URL. If
these aren't installed image inputs will be ignored in token counting.

[OpenAI reference](https://github.com/openai/openai-cookbook/blob/main/examples/How_to_format_inputs_to_ChatGPT_models.ipynb).](/python/langchain-openai/chat_models/base/BaseChatOpenAI/get_num_tokens_from_messages)[method

bind\_tools

Bind tool-like objects to this chat model.

Assumes model is compatible with OpenAI tool-calling API.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/bind_tools)[method

with\_structured\_output

Model wrapper that returns outputs formatted to match the given schema.](/python/langchain-openai/chat_models/base/BaseChatOpenAI/with_structured_output)

## Inherited from[BaseChatModel](/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain\_core)

### Attributes

[Arate\_limiter](/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable\_streaming](/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aprofile](/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[AOutputType](/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Mbind](/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget\_num\_tokens](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/partners/openai/langchain_openai/chat_models/base.py#L581)

Version History

Copy page

### On This Page

Attributes

AclientAasync\_clientAroot\_clientAroot\_async\_clientAmodel\_nameAtemperatureAmodel\_kwargsAopenai\_api\_keyAopenai\_api\_baseAopenai\_organizationAopenai\_proxyArequest\_timeoutAstream\_usageAmax\_retriesApresence\_penaltyAfrequency\_penaltyAseedAlogprobsAtop\_logprobsAlogit\_biasAstreamingAnAtop\_pAmax\_tokensAreasoning\_effortAreasoningAverbosityAtiktoken\_model\_nameAdefault\_headersAdefault\_queryAhttp\_clientAhttp\_async\_clientAhttp\_socket\_optionsAstream\_chunk\_timeoutAstopAextra\_bodyAinclude\_response\_headersAdisabled\_paramsAcontext\_managementAincludeAservice\_tierAstoreAtruncationAuse\_previous\_response\_idAuse\_responses\_apiAoutput\_versionAmodel\_configAmodel

Methods

Mbuild\_extraMvalidate\_temperatureMvalidate\_environmentMget\_token\_idsMget\_num\_tokens\_from\_messagesMbind\_toolsMwith\_structured\_output

from BaseChatModel

AAttributes

Arate\_limiterAdisable\_streamingAprofileAOutputType

MMethods

MinvokeMainvokeMstreamMastreamMstream\_eventsMastream\_eventsMgenerateMagenerateMgenerate\_promptMagenerate\_promptMdictMbind

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAInputType

MMethods

Mset\_verboseMgenerate\_promptMagenerate\_promptMget\_num\_tokens

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