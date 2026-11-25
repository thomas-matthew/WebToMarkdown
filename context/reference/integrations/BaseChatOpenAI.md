Classv1.8.5 (latest)●Since v1.3

# BaseChatOpenAI

Base wrapper around OpenAI large language models for chat.

This base class targets
[official OpenAI API specifications](https://github.com/openai/openai-openapi)
only. Non-standard response fields added by third-party providers (e.g.,
`reasoning_content`) are not extracted. Use a provider-specific subclass for
full provider support.

```
BaseChatOpenAI()
```

## Bases

`BaseChatModel`

## Attributes

attribute

client: Any

attribute

async_client: Any

attribute

root_client: Any

attribute

root_async_client: Any

attribute

model_name: str

Model name to use.

attribute

temperature: float | None

What sampling temperature to use.

attribute

model_kwargs: dict[str, Any]

Holds any model parameters valid for `create` call not explicitly specified.

attribute

openai_api_key: SecretStr | Callable[[], str] | Callable[[], Awaitable[str]] | None

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

Copy

attribute

openai_api_base: str | None

Base URL path for API requests, leave blank if not using a proxy or service emulator.

Resolution order (first match wins):

1. Explicit `base_url` (or `openai_api_base`) kwarg.
2. Env var `OPENAI_API_BASE` (read by LangChain at init).
3. Env var `OPENAI_BASE_URL` (read by the underlying `openai` SDK client).

`OPENAI_BASE_URL` is also inspected by LangChain only to decide whether to
default-enable `stream_usage` — when set, the default is left off because many
non-OpenAI endpoints do not support streaming token usage.

attribute

openai_organization: str | None

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

attribute

openai_proxy: str | None

attribute

request_timeout: float | tuple[float, float] | Any | None

Timeout for requests to OpenAI completion API.

Can be float, `httpx.Timeout` or `None`.

attribute

stream_usage: bool | None

Whether to include usage metadata in streaming output.

If enabled, an additional message chunk will be generated during the stream
including usage metadata.

This parameter is enabled unless `openai_api_base` is set or the model is
initialized with a custom client, as many chat completions APIs do not
support streaming token usage.

Behavior changed in `langchain-openai` 0.3.35

Enabled for default base URL and client.

attribute

max_retries: int | None

Maximum number of retries to make when generating.

attribute

presence_penalty: float | None

Penalizes repeated tokens.

attribute

frequency_penalty: float | None

Penalizes repeated tokens according to frequency.

attribute

seed: int | None

Seed for generation

attribute

logprobs: bool | None

Whether to return logprobs.

attribute

top_logprobs: int | None

Number of most likely tokens to return at each token position, each with an
associated log probability.

`logprobs` must be set to true if this parameter is used.

attribute

logit_bias: dict[int, int] | None

Modify the likelihood of specified tokens appearing in the completion.

attribute

streaming: bool

Whether to stream the results or not.

attribute

n: int | None

Number of chat completions to generate for each prompt.

attribute

top_p: float | None

Total probability mass of tokens to consider at each step.

attribute

max_tokens: int | None

Maximum number of tokens to generate.

attribute

reasoning_effort: str | None

Constrains effort on reasoning for reasoning models.

For use with the Chat Completions API. Reasoning models only.

Currently supported values are `'minimal'`, `'low'`, `'medium'`, and
`'high'`. Reducing reasoning effort can result in faster responses and fewer
tokens used on reasoning in a response.

Changing reasoning effort mid-conversation

Changing this value part-way through a conversation changes a request-level
parameter, which invalidates the cached prompt prefix.

Models that support it (currently GPT-6) can instead carry the new effort
in a `configuration_update` item attached to the message that should start
using it:

```
HumanMessage(
    [
        {"type": "configuration_update", "reasoning": {"effort": "high"}},
        {"type": "text", "text": "Analyze the failure modes."},
    ]
)
```

Copy

The new effort applies from that message onward, until another update
overrides it.

attribute

reasoning: dict[str, Any] | None

Reasoning parameters for reasoning models. None disables reasoning.

For use with the Responses API.

```
reasoning={
    "effort": None,  # Default None; can be "low", "medium", or "high"
    "summary": "auto",  # Can be "auto", "concise", or "detailed"
}
```

Copy

attribute

verbosity: str | None

Controls the verbosity level of responses for reasoning models.

For use with the Responses API.

Currently supported values are `'low'`, `'medium'`, and `'high'`.

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

Only used for sync invocations. Must specify `http_async_client` as well if
you'd like a custom client for async invocations.

attribute

http_async_client: Any | None

Optional `httpx.AsyncClient`.

Only used for async invocations. Must specify `http_client` as well if you'd
like a custom client for sync invocations.

attribute

http_socket_options: Sequence[tuple[int, int, int]] | None

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
are applied cleanly through the proxied transport on that path.

attribute

stream_chunk_timeout: float | None

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
still boots safely and the fallback is visible.

attribute

stop: list[str] | str | None

Default stop sequences.

attribute

extra_body: Mapping[str, Any] | None

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
`extra_body` instead.

attribute

include_response_headers: bool

Whether to include response headers in the output message `response_metadata`.

Note: some inference providers return additional metadata (such as served model
names) in the response headers. Enable to capture these metadata.

attribute

disabled_params: dict[str, Any] | None

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
passed in the parameter during invocation.

attribute

context_management: list[dict[str, Any]] | None

Configuration for
[context management](https://developers.openai.com/api/docs/guides/compaction).

attribute

include: list[str] | None

Additional fields to include in generations from Responses API.

Supported values:

* `'file_search_call.results'`
* `'message.input_image.image_url'`
* `'computer_call_output.output.image_url'`
* `'reasoning.encrypted_content'`
* `'code_interpreter_call.outputs'`

attribute

prompt_cache_options: dict[str, Any] | None

Options controlling OpenAI prompt cache behavior.

attribute

service_tier: str | None

Latency tier for request.

Options are `'auto'`, `'default'`, or `'flex'`.

Relevant for users of OpenAI's scale tier service.

attribute

store: bool | None

If `True`, OpenAI may store response data for future use.

Defaults to `True` for the Responses API and `False` for the Chat Completions API.

attribute

truncation: str | None

Truncation strategy (Responses API).

Can be `'auto'` or `'disabled'` (default).

If `'auto'`, model may drop input items from the middle of the message sequence to
fit the context window.

attribute

use_previous_response_id: bool

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

Copy

attribute

use_responses_api: bool | None

Whether to use the Responses API instead of the Chat API.

If not specified, set to `True` when instance settings require the Responses API,

attribute

output_version: str | None

Version of `AIMessage` output format to use.

This field is used to roll-out new output formats for chat model `AIMessage`
responses in a backwards-compatible way.

Supported values:

* `'v0'`: `AIMessage` format as of `langchain-openai 0.3.x`.
* `'responses/v1'`: Formats Responses API output items into AIMessage content blocks
  (Responses API only)
* `'v1'`: v1 of LangChain cross-provider standard.

Behavior changed in `langchain-openai` 1.0.0

Default updated to `"responses/v1"`.

attribute

model_config

attribute

model: str

Same as model_name.

## Methods

method

build_extra

Build extra kwargs from additional params that were passed in.

method

validate_temperature

Validate temperature parameter for different models.

* gpt-5 models (excluding gpt-5-chat) only allow `temperature=1` or unset
  (Defaults to 1)

method

validate_environment

Validate that api key and python package exists in environment.

method

get_token_ids

Get the tokens present in the text with tiktoken package.

method

get_num_tokens_from_messages

Calculate num tokens for supported OpenAI chat models.

Warning

You must have the `pillow` installed if you want to count image tokens if
you are specifying the image as a base64 string, and you must have both
`pillow` and `httpx` installed if you are specifying the image as a URL. If
these aren't installed image inputs will be ignored in token counting.

[OpenAI reference](https://github.com/openai/openai-cookbook/blob/main/examples/How_to_format_inputs_to_ChatGPT_models.ipynb).

method

bind_tools

Bind tool-like objects to this chat model.

Assumes model is compatible with OpenAI tool-calling API.

method

with_structured_output

Model wrapper that returns outputs formatted to match the given schema.

## Inherited from[BaseChatModel](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain_core)

### Attributes

[Arate_limiter](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable_streaming](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aprofile](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[AOutputType](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Masdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/asdict)[Mbind](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel)(langchain_core)

### Attributes

[Acache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom_get_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel_post_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget_num_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/chat_models/base.py#L821)

Version History
