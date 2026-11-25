Classv0.2.14 (latest)●Since v0.1

# ChatBedrock

A chat model that uses the Bedrock API.

```python
ChatBedrock()
```

## Bases

`BaseChatModel` `BedrockBase`

## Used in Docs

* [AWS middleware integration](https://docs.langchain.com/oss/python/integrations/middleware/aws)
* [Bedrock (knowledge bases) integration](https://docs.langchain.com/oss/python/integrations/retrievers/bedrock)

## Attributes

### [system_prompt_with_tools: str](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/system_prompt_with_tools)

### [beta_use_converse_api: bool](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/beta_use_converse_api)

Use the new Bedrock `converse` API which provides a standardized interface to
all Bedrock models. Support still in beta. See ChatBedrockConverse docs for more.

### [stop_sequences: Optional[List[str]]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/stop_sequences)

Stop sequence inference parameter from new Bedrock `converse` API providing
a sequence of characters that causes a model to stop generating a response. See
<https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_InferenceConfiguration.html>
for more.

### [lc_attributes: Dict[str, Any]](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/lc_attributes)

### [model_config](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/model_config)

## Methods

### [is_lc_serializable](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/is_lc_serializable)

Return whether this model can be serialized by Langchain.

### [get_lc_namespace](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_lc_namespace)

Get the namespace of the langchain object.

### [set_beta_use_converse_api](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/set_beta_use_converse_api)

### [get_num_tokens](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_num_tokens)

### [get_token_ids](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_token_ids)

### [set_system_prompt_with_tools](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/set_system_prompt_with_tools)

Workaround to bind. Sets the system prompt with tools

### [bind_tools](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/bind_tools)

Bind tool-like objects to this chat model.

Assumes model has a tool calling API.

### [with_structured_output](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/with_structured_output)

Model wrapper that returns outputs formatted to match the given schema.

## Inherited from[BaseChatModel](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel) (langchain_core)

### Attributes

[rate_limiter](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/rate_limiter) [disable_streaming](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/disable_streaming) [output_version](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/output_version) [profile](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/profile) [OutputType](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/OutputType)

### Methods

[invoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/invoke) [ainvoke](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/ainvoke) [stream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream) [astream](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream) [stream_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/stream_events) [astream_events](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/astream_events) [generate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate) [agenerate](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate) [generate_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/generate_prompt) [agenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/agenerate_prompt) [dict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/dict) [asdict](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/asdict) [bind](https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/bind)

## Inherited from[BedrockBase](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase)

### Attributes

[client: Any](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/client) [region_name: Optional[str]

—

The aws region e.g., `us-west-2`. Fallsback to AWS_REGION or AWS_DEFAULT_REGION](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/region_name)[credentials_profile_name: Optional[str]

—

The name of the profile in the ~/.aws/credentials or ~/.aws/config files, which](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/credentials_profile_name)[aws_access_key_id: Optional[SecretStr]

—

AWS access key id.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/aws_access_key_id)[aws_secret_access_key: Optional[SecretStr]

—

AWS secret_access_key.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/aws_secret_access_key)[aws_session_token: Optional[SecretStr]

—

AWS session token.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/aws_session_token)[config: Any

—

An optional botocore.config.Config instance to pass to the client.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/config)[provider: Optional[str]

—

The model provider, e.g., amazon, cohere, ai21, etc. When not supplied, provider](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/provider)[model_id: str

—

Id of the model to call, e.g., amazon.titan-text-express-v1, this is](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/model_id)[model_kwargs: Optional[Dict[str, Any]]

—

Keyword arguments to pass to the model.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/model_kwargs)[endpoint_url: Optional[str]

—

Needed if you don't want to default to us-east-1 endpoint](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/endpoint_url)[streaming: bool

—

Whether to stream the results.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/streaming)[provider_stop_sequence_key_name_map: Mapping[str, str]](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/provider_stop_sequence_key_name_map) [provider_stop_reason_key_map: Mapping[str, str]](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/provider_stop_reason_key_map) [guardrails: Optional[Mapping[str, Any]]

—

An optional dictionary to configure guardrails for Bedrock.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/guardrails)[temperature: Optional[float]](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/temperature) [max_tokens: Optional[int]](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/max_tokens) [lc_secrets: Dict[str, str]](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/lc_secrets)

### Methods

[validate_environment

—

Validate that AWS credentials to and python package exists in environment.](https://reference.langchain.com/python/langchain-aws/llms/bedrock/BedrockBase/validate_environment)

## Inherited from[BaseLanguageModel](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel) (langchain_core)

### Attributes

[cache](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/cache) [verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/verbose) [callbacks](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/callbacks) [tags](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/tags) [metadata](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/metadata) [custom_get_token_ids](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/custom_get_token_ids) [InputType](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/InputType)

### Methods

[model_post_init](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/model_post_init) [set_verbose](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/set_verbose) [generate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/generate_prompt) [agenerate_prompt](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/agenerate_prompt) [get_num_tokens_from_messages](https://reference.langchain.com/python/langchain-core/language_models/base/BaseLanguageModel/get_num_tokens_from_messages)

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable) (langchain_core)

### Attributes

[name](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/name)

### Methods

[to_json](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/to_json) [configurable_fields](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields) [configurable_alternatives](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable) (langchain_core)

### Attributes

[lc_secrets](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_secrets)

### Methods

[lc_id](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/lc_id) [to_json](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json) [to_json_not_implemented](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable) (langchain_core)

### Attributes

[name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name) [InputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType) [OutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType) [input_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema) [output_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema) [config_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[get_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name) [get_input_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema) [get_input_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_jsonschema) [get_output_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema) [get_output_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_jsonschema) [config_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema) [get_config_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema) [get_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph) [get_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts) [pipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe) [pick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick) [assign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign) [invoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke) [ainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke) [batch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch) [batch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed) [abatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch) [abatch_as_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed) [stream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream) [astream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream) [astream_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log) [astream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events) [stream_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events) [transform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform) [atransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform) [bind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind) [with_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config) [with_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners) [with_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners) [with_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types) [with_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry) [map](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map) [with_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks) [as_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L490)

Version History

Source: [https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock)

---

## is_lc_serializable

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/is_lc_serializable)

Return whether this model can be serialized by Langchain.

### Signature

```python
is_lc_serializable(
    cls,
) -> bool
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L509)

---

## get_lc_namespace

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_lc_namespace)

Get the namespace of the langchain object.

### Signature

```python
get_lc_namespace(
    cls,
) -> List[str]
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L514)

---

## set_beta_use_converse_api

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/set_beta_use_converse_api)

### Signature

```python
set_beta_use_converse_api(
    cls,
    values: Dict,
) -> Any
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L519)

---

## get_num_tokens

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_num_tokens)

### Signature

```python
get_num_tokens(
    self,
    text: str,
) -> int
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L733)

---

## get_token_ids

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/get_token_ids)

### Signature

```python
get_token_ids(
    self,
    text: str,
) -> List[int]
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L742)

---

## set_system_prompt_with_tools

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/set_system_prompt_with_tools)

Workaround to bind. Sets the system prompt with tools

### Signature

```python
set_system_prompt_with_tools(
    self,
    xml_tools_system_prompt: str,
) -> None
```

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L759)

---

## bind_tools

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/bind_tools)

Bind tool-like objects to this chat model.

Assumes model has a tool calling API.

### Signature

```python
bind_tools(
    self,
    tools: Sequence[Union[Dict[str, Any], TypeBaseModel, Callable, BaseTool]],
    *,
    tool_choice: Optional[Union[dict, str, Literal['auto', 'none'], bool]] = None,
    kwargs: Any = {},
) -> Runnable[LanguageModelInput, BaseMessage]
```

### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `tools` | `Sequence[Union[Dict[str, Any], TypeBaseModel, Callable, BaseTool]]` | Yes | A list of tool definitions to bind to this chat model. Can be  a dictionary, pydantic model, callable, or BaseTool. Pydantic models, callables, and BaseTools will be automatically converted to their schema dictionary representation. |
| `tool_choice` | `Optional[Union[dict, str, Literal['auto', 'none'], bool]]` | No | Which tool to require the model to call. Must be the name of the single provided function or "auto" to automatically determine which function to call (if any), or a dict of the form: {"type": "function", "function": {"name": <<tool_name>>}}. (default: `None`) |
| `**kwargs` | `Any` | No | Any additional parameters to pass to the :class:`~langchain.runnable.Runnable` constructor. (default: `{}`) |

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L763)

---

## with_structured_output

> **Method** in `langchain_aws`

📖 [View in docs](https://reference.langchain.com/python/langchain-aws/chat_models/bedrock/ChatBedrock/with_structured_output)

Model wrapper that returns outputs formatted to match the given schema.

### Signature

```python
with_structured_output(
    self,
    schema: Union[Dict, TypeBaseModel],
    *,
    include_raw: bool = False,
    kwargs: Any = {},
) -> Runnable[LanguageModelInput, Union[Dict, BaseModel]]
```

### Description

**Pydantic schema (include_raw=False)::**

```python
from langchain_aws.chat_models.bedrock import ChatBedrock
from pydantic import BaseModel

class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''
    answer: str
    justification: str

llm =ChatBedrock(
    model_id="anthropic.claude-3-sonnet-20240229-v1:0",
    model_kwargs={"temperature": 0.001},
)  # type: ignore[call-arg]
structured_llm = llm.with_structured_output(AnswerWithJustification)

structured_llm.invoke("What weighs more a pound of bricks or a pound of feathers")

# -> AnswerWithJustification(
#     answer='They weigh the same',
#     justification='Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ.'
# )
```

**Pydantic schema (include_raw=True)::**

```python
from langchain_aws.chat_models.bedrock import ChatBedrock
from pydantic import BaseModel

class AnswerWithJustification(BaseModel):
    '''An answer to the user question along with justification for the answer.'''
    answer: str
    justification: str

llm =ChatBedrock(
    model_id="anthropic.claude-3-sonnet-20240229-v1:0",
    model_kwargs={"temperature": 0.001},
)  # type: ignore[call-arg]
structured_llm = llm.with_structured_output(AnswerWithJustification, include_raw=True)

structured_llm.invoke("What weighs more a pound of bricks or a pound of feathers")
# -> {
#     'raw': AIMessage(content='', additional_kwargs={'tool_calls': [{'id': 'call_Ao02pnFYXD6GN1yzc0uXPsvF', 'function': {'arguments': '{"answer":"They weigh the same.","justification":"Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ."}', 'name': 'AnswerWithJustification'}, 'type': 'function'}]}),
#     'parsed': AnswerWithJustification(answer='They weigh the same.', justification='Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume or density of the objects may differ.'),
#     'parsing_error': None
# }
```

**Dict schema (include_raw=False)::**

```python
from langchain_aws.chat_models.bedrock import ChatBedrock

schema = {
    "name": "AnswerWithJustification",
    "description": "An answer to the user question along with justification for the answer.",
    "input_schema": {
        "type": "object",
        "properties": {
            "answer": {"type": "string"},
            "justification": {"type": "string"},
        },
        "required": ["answer", "justification"]
    }
}
llm =ChatBedrock(
    model_id="anthropic.claude-3-sonnet-20240229-v1:0",
    model_kwargs={"temperature": 0.001},
)  # type: ignore[call-arg]
structured_llm = llm.with_structured_output(schema)

structured_llm.invoke("What weighs more a pound of bricks or a pound of feathers")
# -> {
#     'answer': 'They weigh the same',
#     'justification': 'Both a pound of bricks and a pound of feathers weigh one pound. The weight is the same, but the volume and density of the two substances differ.'
# }
```

### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `schema` | `Union[Dict, TypeBaseModel]` | Yes | The output schema as a dict or a Pydantic class. If a Pydantic class then the model output will be an object of that class. If a dict then the model output will be a dict. With a Pydantic class the returned attributes will be validated, whereas with a dict they will not be. |
| `include_raw` | `bool` | No | If False then only the parsed structured output is returned. If an error occurs during model output parsing it will be raised. If True then both the raw model response (a BaseMessage) and the parsed model response will be returned. If an error occurs during output parsing it will be caught and returned as well. The final output is always a dict with keys "raw", "parsed", and "parsing_error". (default: `False`) |

### Returns

`Runnable[LanguageModelInput, Union[Dict, BaseModel]]`

A Runnable that takes any ChatModel input. The output type depends on

---

[View source on GitHub](https://github.com/langchain-ai/langchain-aws/blob/434899a049429abd1b68d6e3efe82f58bc729a4f/libs/aws/langchain_aws/chat_models/bedrock.py#L818)
