Python[langchain-anthropic](/python/langchain-anthropic)[chat\_models](/python/langchain-anthropic/chat_models)ChatAnthropic

Classv1.7.5 (latest)●Since v0.2

# ChatAnthropic

Anthropic (Claude) chat models.

See the [LangChain docs for `ChatAnthropic`](https://docs.langchain.com/oss/python/integrations/chat/anthropic)
for tutorials, feature walkthroughs, and examples.

See the [Claude Platform docs](https://platform.claude.com/docs/en/about-claude/models/overview)
for a list of the latest models, their capabilities, and pricing.

Copy

```
ChatAnthropic()
```

## Bases

`BaseChatModel`

**Example:**

```
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

Copy

**Add a tool mid-conversation:**

```
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

Copy

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

[attribute

model\_config](/python/langchain-anthropic/chat_models/ChatAnthropic/model_config)[attribute

model: str

Model name to use.](/python/langchain-anthropic/chat_models/ChatAnthropic/model)[attribute

max\_tokens: int | None

Denotes the number of tokens to predict per generation.

If not specified, this is set dynamically using the model's `max_output_tokens`
from its model profile.

See docs on [model profiles](https://docs.langchain.com/oss/python/langchain/models#model-profiles)
for more information.](/python/langchain-anthropic/chat_models/ChatAnthropic/max_tokens)[attribute

temperature: float | None

A non-negative float that tunes the degree of randomness in generation.](/python/langchain-anthropic/chat_models/ChatAnthropic/temperature)[attribute

top\_k: int | None

Number of most likely tokens to consider at each step.](/python/langchain-anthropic/chat_models/ChatAnthropic/top_k)[attribute

top\_p: float | None

Total probability mass of tokens to consider at each step.](/python/langchain-anthropic/chat_models/ChatAnthropic/top_p)[attribute

default\_request\_timeout: float | None

Timeout for requests to Claude API.](/python/langchain-anthropic/chat_models/ChatAnthropic/default_request_timeout)[attribute

max\_retries: int

Number of retries allowed for requests sent to the Claude API.](/python/langchain-anthropic/chat_models/ChatAnthropic/max_retries)[attribute

stop\_sequences: list[str] | None

Default stop sequences.](/python/langchain-anthropic/chat_models/ChatAnthropic/stop_sequences)[attribute

anthropic\_api\_url: str | None

Base URL for API requests. Only specify if using a proxy or service emulator.

If a value isn't passed in, will attempt to read the value first from
`ANTHROPIC_API_URL` and if that is not set, `ANTHROPIC_BASE_URL`.

If `LANGSMITH_GATEWAY` is set, it is used as a fallback after those env vars.](/python/langchain-anthropic/chat_models/ChatAnthropic/anthropic_api_url)[attribute

anthropic\_api\_key: SecretStr

Automatically read from env var `ANTHROPIC_API_KEY` if not provided.

If `LANGSMITH_GATEWAY` is enabled and the base URL points at the gateway,
`LANGSMITH_GATEWAY_API_KEY` is used instead.](/python/langchain-anthropic/chat_models/ChatAnthropic/anthropic_api_key)[attribute

anthropic\_proxy: str | None

Proxy to use for the Anthropic clients, will be used for every API call.

If not provided, will attempt to read from the `ANTHROPIC_PROXY` environment
variable.](/python/langchain-anthropic/chat_models/ChatAnthropic/anthropic_proxy)[attribute

default\_headers: Mapping[str, str] | None

Headers to pass to the Anthropic clients, will be used for every API call.](/python/langchain-anthropic/chat_models/ChatAnthropic/default_headers)[attribute

betas: list[str] | None

List of beta features to enable. If specified, invocations will be routed
through `client.beta.messages.create`.

Example: `#!python betas=["token-efficient-tools-2025-02-19"]`](/python/langchain-anthropic/chat_models/ChatAnthropic/betas)[attribute

model\_kwargs: dict[str, Any]](/python/langchain-anthropic/chat_models/ChatAnthropic/model_kwargs)[attribute

streaming: bool

Whether to use streaming or not.](/python/langchain-anthropic/chat_models/ChatAnthropic/streaming)[attribute

stream\_usage: bool

Whether to include usage metadata in streaming output.

If `True`, additional message chunks will be generated during the stream including
usage metadata.](/python/langchain-anthropic/chat_models/ChatAnthropic/stream_usage)[attribute

thinking: dict[str, Any] | None

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
can't be disabled; omit `thinking` and use `output_config.effort`.](/python/langchain-anthropic/chat_models/ChatAnthropic/thinking)[attribute

output\_config: dict[str, Any] | None

Configuration options for the model's output.

Supports the following keys:

* `effort`: Controls how many tokens Claude uses when responding.
  One of `"max"`, `"xhigh"`, `"high"`, `"medium"`, or `"low"`.
* `format`: Structured output format configuration (typically set via
  `with_structured_output`).
* `task_budget`: Advisory token budget for an agentic loop (beta).
  E.g., `#!python {"type": "tokens", "total": 128_000}`.

Example:

.. code-block:: python

```
ChatAnthropic(
    model="claude-opus-4-7",
    output_config={
        "effort": "xhigh",
        "task_budget": {"type": "tokens", "total": 128_000},
    },
)
```

Copy

See Anthropic docs on
[extended output](https://platform.claude.com/docs/en/api/go/beta/messages/create).](/python/langchain-anthropic/chat_models/ChatAnthropic/output_config)[attribute

reasoning\_effort: Literal['max', 'xhigh', 'high', 'medium', 'low'] | None

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

Example: `reasoning_effort="medium"`](/python/langchain-anthropic/chat_models/ChatAnthropic/reasoning_effort)[attribute

mcp\_servers: list[dict[str, Any]] | None

List of MCP servers to use for the request.

Example: `#!python mcp_servers=[{"type": "url", "url": "https://mcp.example.com/mcp", "name": "example-mcp"}]`](/python/langchain-anthropic/chat_models/ChatAnthropic/mcp_servers)[attribute

context\_management: dict[str, Any] | None

Configuration for
[context management](https://platform.claude.com/docs/en/build-with-claude/context-editing).](/python/langchain-anthropic/chat_models/ChatAnthropic/context_management)[attribute

container: dict[str, Any] | str | None

Code execution container for the request.

Either a container ID from a previous response, or a dict of container
parameters — notably
[skills](https://platform.claude.com/docs/en/build-with-claude/skills-guide)
to load into the container. Skills require a
[code execution](https://docs.langchain.com/oss/python/integrations/chat/anthropic#code-execution)
tool to be bound.

```
model = ChatAnthropic(
    model="claude-opus-5",
    container={
        "skills": [{"type": "anthropic", "skill_id": "pptx", "version": "latest"}]
    },
).bind_tools([{"type": "code_execution_20260521", "name": "code_execution"}])
```

Copy

Can also be passed at call time, which overrides the value set here.](/python/langchain-anthropic/chat_models/ChatAnthropic/container)[attribute

reuse\_last\_container: bool | None

Automatically reuse container from most recent response (code execution).

When using the built-in
[code execution tool](https://docs.langchain.com/oss/python/integrations/chat/anthropic#code-execution),
model responses will include container metadata. Set `reuse_last_container=True`
to automatically reuse the container from the most recent response for subsequent
invocations.](/python/langchain-anthropic/chat_models/ChatAnthropic/reuse_last_container)[attribute

inference\_geo: str | None

Controls where model inference runs. See Anthropic's
[data residency](https://platform.claude.com/docs/en/build-with-claude/data-residency)
docs for more information.](/python/langchain-anthropic/chat_models/ChatAnthropic/inference_geo)[attribute

user\_profile\_id: str | None

User profile ID to attribute the request to.

Use when acting on behalf of a party other than your organization. Setting this
automatically enables the required `user-profiles` beta, routing the request
through `client.beta.messages.create`.

Can also be passed at call time, which overrides the value set here (for example,
`model.invoke(..., user_profile_id="uprof_...")`).](/python/langchain-anthropic/chat_models/ChatAnthropic/user_profile_id)[attribute

effort: Literal['max', 'xhigh', 'high', 'medium', 'low'] | None

Alias for `reasoning_effort`.](/python/langchain-anthropic/chat_models/ChatAnthropic/effort)[attribute

lc\_secrets: dict[str, str]

Return a mapping of secret keys to environment variables.](/python/langchain-anthropic/chat_models/ChatAnthropic/lc_secrets)

## Methods

[method

is\_lc\_serializable

Whether the class is serializable in langchain.](/python/langchain-anthropic/chat_models/ChatAnthropic/is_lc_serializable)[method

get\_lc\_namespace

Get the namespace of the LangChain object.](/python/langchain-anthropic/chat_models/ChatAnthropic/get_lc_namespace)[method

set\_default\_max\_tokens

Set default `max_tokens` from model profile with fallback.](/python/langchain-anthropic/chat_models/ChatAnthropic/set_default_max_tokens)[method

build\_extra

Build model kwargs.](/python/langchain-anthropic/chat_models/ChatAnthropic/build_extra)[method

bind\_tools

Bind tool-like objects to `ChatAnthropic`.](/python/langchain-anthropic/chat_models/ChatAnthropic/bind_tools)[method

with\_structured\_output

Model wrapper that returns outputs formatted to match the given schema.

See the [LangChain docs](https://docs.langchain.com/oss/python/integrations/chat/anthropic#structured-output)
for more details and examples.](/python/langchain-anthropic/chat_models/ChatAnthropic/with_structured_output)[method

get\_num\_tokens\_from\_messages

Count tokens in a sequence of input messages.

This uses Anthropic's official [token counting API](https://platform.claude.com/docs/en/build-with-claude/token-counting).](/python/langchain-anthropic/chat_models/ChatAnthropic/get_num_tokens_from_messages)

## Inherited from[BaseChatModel](/python/langchain-core/language_models/chat_models/BaseChatModel)(langchain\_core)

### Attributes

[Arate\_limiter](/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter)[Adisable\_streaming](/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming)[Aoutput\_version](/python/langchain-core/language_models/chat_models/BaseChatModel/output_version)[Aprofile](/python/langchain-core/language_models/chat_models/BaseChatModel/profile)[AOutputType](/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[Minvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/invoke)[Mainvoke](/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke)[Mstream](/python/langchain-core/language_models/chat_models/BaseChatModel/stream)[Mastream](/python/langchain-core/language_models/chat_models/BaseChatModel/astream)[Mstream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events)[Mastream\_events](/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events)[Mgenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/generate)[Magenerate](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate)[Mgenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt)[Mdict](/python/langchain-core/language_models/chat_models/BaseChatModel/dict)[Masdict](/python/langchain-core/language_models/chat_models/BaseChatModel/asdict)[Mbind](/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BaseLanguageModel](/python/langchain-core/language_models/base/BaseLanguageModel)(langchain\_core)

### Attributes

[Acache](/python/langchain-core/language_models/base/BaseLanguageModel/cache)[Averbose](/python/langchain-core/language_models/base/BaseLanguageModel/verbose)[Acallbacks](/python/langchain-core/language_models/base/BaseLanguageModel/callbacks)[Atags](/python/langchain-core/language_models/base/BaseLanguageModel/tags)[Ametadata](/python/langchain-core/language_models/base/BaseLanguageModel/metadata)[Acustom\_get\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids)[AInputType](/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[Mmodel\_post\_init](/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init)[Mset\_verbose](/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose)[Mgenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt)[Magenerate\_prompt](/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt)[Mget\_token\_ids](/python/langchain-core/language_models/base/BaseLanguageModel/get_token_ids)[Mget\_num\_tokens](/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[Mto\_json](/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields](/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives](/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)(langchain\_core)

### Attributes

[Alc\_attributes](/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[Mlc\_id](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/Runnable/name)[AInputType](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](/python/langchain-core/runnables/base/Runnable/stream)[Mastream](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d6167c0b0dafb5f3898faa28e01df0b8db5ef76a/libs/partners/anthropic/langchain_anthropic/chat_models.py#L1326)

Version History

Copy page

### On This Page

Related Documentation

Attributes

Amodel\_configAmodelAmax\_tokensAtemperatureAtop\_kAtop\_pAdefault\_request\_timeoutAmax\_retriesAstop\_sequencesAanthropic\_api\_urlAanthropic\_api\_keyAanthropic\_proxyAdefault\_headersAbetasAmodel\_kwargsAstreamingAstream\_usageAthinkingAoutput\_configAreasoning\_effortAmcp\_serversAcontext\_managementAcontainerAreuse\_last\_containerAinference\_geoAuser\_profile\_idAeffortAlc\_secrets

Methods

Mis\_lc\_serializableMget\_lc\_namespaceMset\_default\_max\_tokensMbuild\_extraMbind\_toolsMwith\_structured\_outputMget\_num\_tokens\_from\_messages

from BaseChatModel

AAttributes

Arate\_limiterAdisable\_streamingAoutput\_versionAprofileAOutputType

MMethods

MinvokeMainvokeMstreamMastreamMstream\_eventsMastream\_eventsMgenerateMagenerateMgenerate\_promptMagenerate\_promptMdictMasdictMbind

from BaseLanguageModel

AAttributes

AcacheAverboseAcallbacksAtagsAmetadataAcustom\_get\_token\_idsAInputType

MMethods

Mmodel\_post\_initMset\_verboseMgenerate\_promptMagenerate\_promptMget\_token\_idsMget\_num\_tokens

from RunnableSerializable

AAttributes

Aname

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Alc\_attributes

MMethods

Mlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool