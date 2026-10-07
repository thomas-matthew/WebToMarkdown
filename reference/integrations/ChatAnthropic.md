Classv1.7.5 (latest)●Since v0.2

# ChatAnthropic

Anthropic (Claude) chat models.

See the [LangChain docs for `ChatAnthropic`](https://docs.langchain.com/oss/python/integrations/chat/anthropic)
for tutorials, feature walkthroughs, and examples.

See the [Claude Platform docs](https://platform.claude.com/docs/en/about-claude/models/overview)
for a list of the latest models, their capabilities, and pricing.

```python
ChatAnthropic()
```

## Bases

`BaseChatModel`

**Example:**

```python
# pip install -U langchain-anthropic
# export ANTHROPIC_API_KEY="your-api-key"

from langchain_anthropic import ChatAnthropic

model = ChatAnthropic(
    model="claude-sonnet-4-5-20250929",
    # temperature=,
    # max_tokens=,
    # timeout=,
    # max_retries=,
    # base_url="...",
    # Refer to API reference for full list of parameters
)
```

**Add a tool mid-conversation:**

```python
from langchain_core.messages import HumanMessage, SystemMessage
from langchain_anthropic import ChatAnthropic

model = ChatAnthropic(model="claude-opus-5-5")
model.invoke(
    [
        HumanMessage("What time is it?"),
        SystemMessage(
            [
                {
                    "type": "tool_addition",
                    "tool": {
                        "type": "tool_definition",
                        "definition": {
                            "name": "get_time",
                            "description": "Get the current time.",
                            "input_schema": {
                                "type": "object",
                                "properties": {},
                            },
                        },
                    },
                }
            ]
        ),
    ]
)
```

**Note:**

Any param which is not explicitly supported will be passed directly to
[`Anthropic.messages.create(...)`](https://platform.claude.com/docs/en/api/python/messages/create)
each time to the model is invoked.

## Used in Docs

* [Build a SQL assistant with on-demand skills](https://docs.langchain.com/oss/python/langchain/multi-agent/skills-sql-assistant)
* [Human-in-the-loop](https://docs.langchain.com/oss/python/deepagents/human-in-the-loop)
* [MESSAGE\_COERCION\_FAILURE](https://docs.langchain.com/oss/python/langchain/errors/MESSAGE_COERCION_FAILURE)
* [Models](https://docs.langchain.com/oss/python/langchain/models)
* [Use the functional API](https://docs.langchain.com/oss/python/langgraph/use-functional-api)

+10 more

## Attributes

### [model\_config](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/model_config)

### [model: str](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/model)

Model name to use.

### [max\_tokens: int | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/max_tokens)

Denotes the number of tokens to predict per generation.

If not specified, this is set dynamically using the model's `max_output_tokens`
from its model profile.

See docs on [model profiles](https://docs.langchain.com/oss/python/langchain/models#model-profiles)
for more information.

### [temperature: float | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/temperature)

A non-negative float that tunes the degree of randomness in generation.

### [top\_k: int | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/top_k)

Number of most likely tokens to consider at each step.

### [top\_p: float | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/top_p)

Total probability mass of tokens to consider at each step.

### [default\_request\_timeout: float | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/default_request_timeout)

Timeout for requests to Claude API.

### [max\_retries: int](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/max_retries)

Number of retries allowed for requests sent to the Claude API.

### [stop\_sequences: list[str] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/stop_sequences)

Default stop sequences.

### [anthropic\_api\_url: str | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/anthropic_api_url)

Base URL for API requests. Only specify if using a proxy or service emulator.

If a value isn't passed in, will attempt to read the value first from
`ANTHROPIC_API_URL` and if that is not set, `ANTHROPIC_BASE_URL`.

If `LANGSMITH_GATEWAY` is set, it is used as a fallback after those env vars.

### [anthropic\_api\_key: SecretStr](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/anthropic_api_key)

Automatically read from env var `ANTHROPIC_API_KEY` if not provided.

If `LANGSMITH_GATEWAY` is enabled and the base URL points at the gateway,
`LANGSMITH_GATEWAY_API_KEY` is used instead.

### [anthropic\_proxy: str | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/anthropic_proxy)

Proxy to use for the Anthropic clients, will be used for every API call.

If not provided, will attempt to read from the `ANTHROPIC_PROXY` environment
variable.

### [default\_headers: Mapping[str, str] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/default_headers)

Headers to pass to the Anthropic clients, will be used for every API call.

### [betas: list[str] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/betas)

List of beta features to enable. If specified, invocations will be routed
through `client.beta.messages.create`.

Example: `#!python betas=["token-efficient-tools-2025-02-19"]`

### [model\_kwargs: dict[str, Any]](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/model_kwargs)

### [streaming: bool](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/streaming)

Whether to use streaming or not.

### [stream\_usage: bool](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/stream_usage)

Whether to include usage metadata in streaming output.

If `True`, additional message chunks will be generated during the stream including
usage metadata.

### [thinking: dict[str, Any] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/thinking)

Parameters for Claude reasoning.

Examples:

* `#!python {"type": "enabled", "budget_tokens": 10_000}` (pre-4.7 models)
* `#!python {"type": "adaptive"}` (Opus 4.6+, Opus 5, Opus 5.5, Sonnet 5)
* `#!python {"type": "adaptive", "display": "summarized"}` (Opus 4.7+,
  Opus 5, Opus 5.5, Sonnet 5)
* `#!python {"type": "disabled"}` (Opus 5 and Sonnet 5, where adaptive
  thinking is on by default)

Claude Opus 4.7+, Opus 5, Opus 5.5, and Sonnet 5

`budget_tokens` is removed on these models — use `{"type": "adaptive"}`
with `output_config.effort` to control reasoning effort. The default
`display` is `"omitted"`; set it to `"summarized"` to receive
summarized reasoning in the response. On Opus 5, disabled thinking is
supported only at `"high"` effort or below. On Opus 5.5, thinking
can't be disabled; omit `thinking` and use `output_config.effort`.

### [output\_config: dict[str, Any] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/output_config)

Configuration options for the model's output.

Supports the following keys:

* `effort`: Controls how many tokens Claude uses when responding.
  One of `"max"`, `"xhigh"`, `"high"`, `"medium"`, or `"low"`.
* `format`: Structured output format configuration (typically set via
  `with_structured_output`).
* `task_budget`: Advisory token budget for an agentic loop (beta).
  E.g., `#!python {"type": "tokens", "total": 128_000}`.

Example:

```python
ChatAnthropic(
    model="claude-opus-4-7",
    output_config={
        "effort": "xhigh",
        "task_budget": {"type": "tokens", "total": 128_000},
    },
)
```

See Anthropic docs on
[extended output](https://platform.claude.com/docs/en/api/go/beta/messages/create) .

### [reasoning\_effort: Literal['max', 'xhigh', 'high', 'medium', 'low'] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/reasoning_effort)

Reasoning effort.

Configures `output_config.effort`. If `thinking` isn't set explicitly,
defaults it to `{"type": "adaptive", "display": "summarized"}`. Can also
be passed at call time (for example,
`model.invoke(..., reasoning_effort="high")`).

`effort` alias

`effort` is also accepted as an alias for this field, at both
construction and call time. If both `effort` and `reasoning_effort` are
set, `effort` wins (Pydantic's alias-resolution precedence).

Note

On most models, setting `reasoning_effort` to `'high'` produces exactly
the same behavior as omitting the parameter altogether. On Opus 5.5 the
default is `'medium'`.

Example: `reasoning_effort="medium"`

### [mcp\_servers: list[dict[str, Any]] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/mcp_servers)

List of MCP servers to use for the request.

Example: `#!python mcp_servers=[{"type": "url", "url": "https://mcp.example.com/mcp", "name": "example-mcp"}]`

### [context\_management: dict[str, Any] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/context_management)

Configuration for
[context management](https://platform.claude.com/docs/en/build-with-claude/context-editing) .

### [container: dict[str, Any] | str | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/container)

Code execution container for the request.

Either a container ID from a previous response, or a dict of container
parameters — notably
[skills](https://platform.claude.com/docs/en/build-with-claude/skills-guide)
to load into the container. Skills require a
[code execution](https://docs.langchain.com/oss/python/integrations/chat/anthropic#code-execution)
tool to be bound.

```python
model = ChatAnthropic(
    model="claude-opus-5",
    container={
        "skills": [{"type": "anthropic", "skill_id": "pptx", "version": "latest"}]
    },
).bind_tools([{"type": "code_execution_20260521", "name": "code_execution"}])
```

Can also be passed at call time, which overrides the value set here.

### [reuse\_last\_container: bool | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/reuse_last_container)

Automatically reuse container from most recent response (code execution).

When using the built-in
[code execution tool](https://docs.langchain.com/oss/python/integrations/chat/anthropic#code-execution) ,
model responses will include container metadata. Set `reuse_last_container=True`
to automatically reuse the container from the most recent response for subsequent
invocations.

### [inference\_geo: str | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/inference_geo)

Controls where model inference runs. See Anthropic's
[data residency](https://platform.claude.com/docs/en/build-with-claude/data-residency)
docs for more information.

### [user\_profile\_id: str | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/user_profile_id)

User profile ID to attribute the request to.

Use when acting on behalf of a party other than your organization. Setting this
automatically enables the required `user-profiles` beta, routing the request
through `client.beta.messages.create`.

Can also be passed at call time, which overrides the value set here (for example,
`model.invoke(..., user_profile_id="uprof_...")`).

### [effort: Literal['max', 'xhigh', 'high', 'medium', 'low'] | None](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/effort)

Alias for `reasoning_effort`.

### [lc\_secrets: dict[str, str]](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/lc_secrets)

Return a mapping of secret keys to environment variables.

## Methods

### [is\_lc\_serializable](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/is_lc_serializable)

Whether the class is serializable in langchain.

### [get\_lc\_namespace](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/get_lc_namespace)

Get the namespace of the LangChain object.

### [set\_default\_max\_tokens](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/set_default_max_tokens)

Set default `max_tokens` from model profile with fallback.

### [build\_extra](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/build_extra)

Build model kwargs.

### [bind\_tools](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/bind_tools)

Bind tool-like objects to `ChatAnthropic`.

### [with\_structured\_output](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/with_structured_output)

Model wrapper that returns outputs formatted to match the given schema.

See the [LangChain docs](https://docs.langchain.com/oss/python/integrations/chat/anthropic#structured-output)
for more details and examples.

### [get\_num\_tokens\_from\_messages](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/get_num_tokens_from_messages)

Count tokens in a sequence of input messages.

This uses Anthropic's official [token counting API](https://platform.claude.com/docs/en/build-with-claude/token-counting) .

## Inherited from[BaseChatModel](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel) (langchain\_core)

### Attributes

[rate\_limiter](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter) [disable\_streaming](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming) [output\_version](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/output_version) [profile](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/profile) [OutputType](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[invoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/invoke) [ainvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke) [stream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream) [astream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream) [stream\_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events) [astream\_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events) [generate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate) [agenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate) [generate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt) [agenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt) [dict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/dict) [asdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/asdict) [bind](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel) (langchain\_core)

### Attributes

[cache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache) [verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose) [callbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks) [tags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags) [metadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata) [custom\_get\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids) [InputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[model\_post\_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init) [set\_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose) [generate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt) [agenerate\_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt) [get\_token\_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids) [get\_num\_tokens](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable) (langchain\_core)

### Attributes

[name](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[to\_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json) [configurable\_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields) [configurable\_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable) (langchain\_core)

### Attributes

[lc\_attributes](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[lc\_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id) [to\_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json) [to\_json\_not\_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable) (langchain\_core)

### Attributes

[name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name) [InputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType) [OutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType) [input\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema) [output\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema) [config\_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[get\_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name) [get\_input\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema) [get\_input\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema) [get\_output\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema) [get\_output\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema) [config\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema) [get\_config\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema) [get\_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph) [get\_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts) [pipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe) [pick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick) [assign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign) [invoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke) [ainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke) [batch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch) [batch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed) [abatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch) [abatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed) [stream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream) [astream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream) [astream\_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log) [astream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events) [stream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events) [transform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform) [atransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform) [bind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind) [with\_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config) [with\_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners) [with\_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners) [with\_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types) [with\_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry) [map](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map) [with\_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks) [as\_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L1326)

Version History

Source: [https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic)

---

## is_lc_serializable

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/is_lc_serializable)

Whether the class is serializable in langchain.

### Signature

```python
is_lc_serializable(
    cls,
) -> bool
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L1639)

---

## get_lc_namespace

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/get_lc_namespace)

Get the namespace of the LangChain object.

### Signature

```python
get_lc_namespace(
    cls,
) -> list[str]
```

### Returns

`list[str]`

`["langchain", "chat_models", "anthropic"]`

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L1644)

---

## set_default_max_tokens

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/set_default_max_tokens)

Set default `max_tokens` from model profile with fallback.

### Signature

```python
set_default_max_tokens(
    cls,
    values: dict[str, Any],
) -> Any
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L1689)

---

## build_extra

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/build_extra)

Build model kwargs.

### Signature

```python
build_extra(
    cls,
    values: dict,
) -> Any
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L1701)

---

## bind_tools

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/bind_tools)

Bind tool-like objects to `ChatAnthropic`.

### Signature

```python
bind_tools(
    self,
    tools: Sequence[Mapping[str, Any] | type | Callable | BaseTool],
    *,
    tool_choice: dict[str, str] | str | None = None,
    parallel_tool_calls: bool | None = None,
    strict: bool | None = None,
    kwargs: Any = {},
) -> Runnable[LanguageModelInput, AIMessage]
```

### Description

**Example:**

```python
from langchain_anthropic import ChatAnthropic
from pydantic import BaseModel, Field

class GetWeather(BaseModel):
    '''Get the current weather in a given location'''

    location: str = Field(..., description="The city and state, e.g. San Francisco, CA")

class GetPrice(BaseModel):
    '''Get the price of a specific product.'''

    product: str = Field(..., description="The product to look up.")

model = ChatAnthropic(model="claude-sonnet-4-5-20250929", temperature=0)
model_with_tools = model.bind_tools([GetWeather, GetPrice])
model_with_tools.invoke(
    "What is the weather like in San Francisco",
)
# -> AIMessage(
#     content=[
#         {'text': '<thinking>\nBased on the user\'s question, the relevant function to call is GetWeather, which requires the "location" parameter.\n\nThe user has directly specified the location as "San Francisco". Since San Francisco is a well known city, I can reasonably infer they mean San Francisco, CA without needing the state specified.\n\nAll the required parameters are provided, so I can proceed with the API call.\n</thinking>', 'type': 'text'},
#         {'text': None, 'type': 'tool_use', 'id': 'toolu_01SCgExKzQ7eqSkMHfygvYuu', 'name': 'GetWeather', 'input': {'location': 'San Francisco, CA'}}
#     ],
#     response_metadata={'id': 'msg_01GM3zQtoFv8jGQMW7abLnhi', 'model': 'claude-sonnet-4-5-20250929', 'stop_reason': 'tool_use', 'stop_sequence': None, 'usage': {'input_tokens': 487, 'output_tokens': 145}},
#     id='run-87b1331e-9251-4a68-acef-f0a018b639cc-0'
# )
```

### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `tools` | `Sequence[Mapping[str, Any] \| type \| Callable \| BaseTool]` | Yes | A list of tool definitions to bind to this chat model.  Supports Anthropic format tool schemas and any tool definition handled by [`convert_to_openai_tool`][langchain_core.utils.function_calling.convert_to_openai_tool]. |
| `tool_choice` | `dict[str, str] \| str \| None` | No | Which tool to require the model to call. Options are:  - Name of the tool as a string or as dict `{"type": "tool", "name": "<<tool_name>>"}`: calls corresponding tool - `'auto'`, `{"type: "auto"}`, or `None`: automatically selects a tool (including no tool) - `'any'` or `{"type: "any"}`: force at least one tool to be called (default: `None`) |
| `parallel_tool_calls` | `bool \| None` | No | Set to `False` to disable parallel tool use.  Defaults to `None` (no specification, which allows parallel tool use).  !!! version-added "Added in `langchain-anthropic` 0.3.2" (default: `None`) |
| `strict` | `bool \| None` | No | If `True`, Claude's schema adherence is applied to tool calls.  See the [docs](https://docs.langchain.com/oss/python/integrations/chat/anthropic#strict-tool-use) for more info. (default: `None`) |
| `kwargs` | `Any` | No | Any additional parameters are passed directly to `bind`. (default: `{}`) |

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L2661)

---

## with_structured_output

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/with_structured_output)

Model wrapper that returns outputs formatted to match the given schema.

See the [LangChain docs](https://docs.langchain.com/oss/python/integrations/chat/anthropic#structured-output)
for more details and examples.

### Signature

```python
with_structured_output(
    self,
    schema: dict | type,
    *,
    include_raw: bool = False,
    method: Literal['function_calling', 'json_schema'] = 'function_calling',
    kwargs: Any = {},
) -> Runnable[LanguageModelInput, dict | BaseModel]
```

### Description

**Example:**

```python hl_lines="13"
from langchain_anthropic import ChatAnthropic
from pydantic import BaseModel, Field

model = ChatAnthropic(model="claude-sonnet-4-5")

class Movie(BaseModel):
    """A movie with details."""
    title: str = Field(..., description="The title of the movie")
    year: int = Field(..., description="The year the movie was released")
    director: str = Field(..., description="The director of the movie")
    rating: float = Field(..., description="The movie's rating out of 10")

model_with_structure = model.with_structured_output(Movie, method="json_schema")
response = model_with_structure.invoke("Provide details about the movie Inception")
print(response)
# -> Movie(title="Inception", year=2010, director="Christopher Nolan", rating=8.8)
```

### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `schema` | `dict \| type` | Yes | The output schema. Can be passed in as:  - An Anthropic tool schema, - An OpenAI function/tool schema, - A JSON Schema, - A `TypedDict` class, - Or a Pydantic class.  If `schema` is a Pydantic class then the model output will be a Pydantic instance of that class, and the model-generated fields will be validated by the Pydantic class. Otherwise the model output will be a dict and will not be validated.  See `langchain_core.utils.function_calling.convert_to_openai_tool` for more on how to properly specify types and descriptions of schema fields when specifying a Pydantic or `TypedDict` class. |
| `include_raw` | `bool` | No |  If `False` then only the parsed structured output is returned.  If an error occurs during model output parsing it will be raised.  If `True` then both the raw model response (a `BaseMessage`) and the parsed model response will be returned.  If an error occurs during output parsing it will be caught and returned as well.  The final output is always a `dict` with keys `'raw'`, `'parsed'`, and `'parsing_error'`. (default: `False`) |
| `method` | `Literal['function_calling', 'json_schema']` | No | The structured output method to use. Options are:  - `'function_calling'` (default): Use forced tool calling to get     structured output. When `thinking` is enabled, or on models     that don't support forced tool use (Claude Opus 5.5, Claude     Fable 5.1, Claude Sonnet 5.5), the tool call isn't forced,     and a missing tool call raises `OutputParserException`. - `'json_schema'`: Use Claude's dedicated     [structured output](https://platform.claude.com/docs/en/build-with-claude/structured-outputs)     feature. (default: `'function_calling'`) |
| `kwargs` | `Any` | No | Additional keyword arguments are ignored. (default: `{}`) |

### Returns

`Runnable[LanguageModelInput, dict | BaseModel]`

A `Runnable` that takes same inputs as a
`langchain_core.language_models.chat.BaseChatModel`.

If `include_raw` is `False` and `schema` is a Pydantic class, `Runnable`
outputs an instance of `schema` (i.e., a Pydantic object). Otherwise, if
`include_raw` is `False` then `Runnable` outputs a `dict`.

If `include_raw` is `True`, then `Runnable` outputs a `dict` with keys:

- `'raw'`: `BaseMessage`
- `'parsed'`: `None` if there was a parsing error, otherwise the type
    depends on the `schema` as described above.
- `'parsing_error'`: `BaseException | None`

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L2866)

---

## get_num_tokens_from_messages

> **Method** in `langchain_anthropic`

📖 [View in docs](https://reference.langchain.com/python/langchain-anthropic/chat_models/ChatAnthropic/get_num_tokens_from_messages)

Count tokens in a sequence of input messages.

This uses Anthropic's official [token counting API](https://platform.claude.com/docs/en/build-with-claude/token-counting).

### Signature

```python
get_num_tokens_from_messages(
    self,
    messages: list[BaseMessage],
    tools: Sequence[dict[str, Any] | type | Callable | BaseTool] | None = None,
    kwargs: Any = {},
) -> int
```

### Description

???+ example "Basic usage"

    ```python
    from langchain_anthropic import ChatAnthropic
    from langchain_core.messages import HumanMessage, SystemMessage

    model = ChatAnthropic(model="claude-sonnet-4-5-20250929")

    messages = [
        SystemMessage(content="You are a scientist"),
        HumanMessage(content="Hello, Claude"),
    ]
    model.get_num_tokens_from_messages(messages)
    ```

    ```txt
    14
    ```

??? example "Pass tool schemas"

    ```python
    from langchain_anthropic import ChatAnthropic
    from langchain_core.messages import HumanMessage
    from langchain_core.tools import tool

    model = ChatAnthropic(model="claude-sonnet-4-5-20250929")

    @tool(parse_docstring=True)
    def get_weather(location: str) -> str:
        """Get the current weather in a given location

        Args:
            location: The city and state, e.g. San Francisco, CA
        """
        return "Sunny"

    messages = [
        HumanMessage(content="What's the weather like in San Francisco?"),
    ]
    model.get_num_tokens_from_messages(messages, tools=[get_weather])
    ```

    ```txt
    403
    ```

### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `messages` | `list[BaseMessage]` | Yes | The message inputs to tokenize. |
| `tools` | `Sequence[dict[str, Any] \| type \| Callable \| BaseTool] \| None` | No | If provided, sequence of `dict`, `BaseModel`, function, or `BaseTool` objects to be converted to tool schemas. (default: `None`) |
| `kwargs` | `Any` | No | Additional keyword arguments are passed to the Anthropic `messages.count_tokens` method. (default: `{}`) |

---

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L3033)
