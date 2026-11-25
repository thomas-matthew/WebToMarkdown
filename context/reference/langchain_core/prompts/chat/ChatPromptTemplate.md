Classv1.8.4 (latest)●Since v0.1

# ChatPromptTemplate

Prompt template for chat models.

Use to create flexible templated prompts for chat models.

Example

```
from langchain_core.prompts import ChatPromptTemplate

template = ChatPromptTemplate(
    [
        ("system", "You are a helpful AI bot. Your name is {name}."),
        ("human", "Hello, how are you doing?"),
        ("ai", "I'm doing well, thanks!"),
        ("human", "{user_input}"),
    ]
)

prompt_value = template.invoke(
    {
        "name": "Bob",
        "user_input": "What is your name?",
    }
)
# Output:
# ChatPromptValue(
#    messages=[
#        SystemMessage(content='You are a helpful AI bot. Your name is Bob.'),
#        HumanMessage(content='Hello, how are you doing?'),
#        AIMessage(content="I'm doing well, thanks!"),
#        HumanMessage(content='What is your name?')
#    ]
# )
```

Copy

Messages Placeholder

```
# In addition to Human/AI/Tool/Function messages,
# you can initialize the template with a MessagesPlaceholder
# either using the class directly or with the shorthand tuple syntax:

template = ChatPromptTemplate(
    [
        ("system", "You are a helpful AI bot."),
        # Means the template will receive an optional list of messages under
        # the "conversation" key
        ("placeholder", "{conversation}"),
        # Equivalently:
        # MessagesPlaceholder(variable_name="conversation", optional=True)
    ]
)

prompt_value = template.invoke(
    {
        "conversation": [
            ("human", "Hi!"),
            ("ai", "How can I assist you today?"),
            ("human", "Can you make me an ice cream sundae?"),
            ("ai", "No."),
        ]
    }
)

# Output:
# ChatPromptValue(
#    messages=[
#        SystemMessage(content='You are a helpful AI bot.'),
#        HumanMessage(content='Hi!'),
#        AIMessage(content='How can I assist you today?'),
#        HumanMessage(content='Can you make me an ice cream sundae?'),
#        AIMessage(content='No.'),
#    ]
# )
```

Copy

Single-variable template

If your prompt has only a single input variable (i.e., one instance of
`'{variable_nams}'`), and you invoke the template with a non-dict object, the
prompt template will inject the provided argument into that variable location.

```
from langchain_core.prompts import ChatPromptTemplate

template = ChatPromptTemplate(
    [
        ("system", "You are a helpful AI bot. Your name is Carl."),
        ("human", "{user_input}"),
    ]
)

prompt_value = template.invoke("Hello, there!")
# Equivalent to
# prompt_value = template.invoke({"user_input": "Hello, there!"})

# Output:
#  ChatPromptValue(
#     messages=[
#         SystemMessage(content='You are a helpful AI bot. Your name is Carl.'),
#         HumanMessage(content='Hello, there!'),
#     ]
# )
```

Copy

```
ChatPromptTemplate(
  self,
  messages: Sequence[MessageLikeRepresentation],
  *,
  template_format: PromptTemplateFormat = 'f-string',
  kwargs: Any = {}
)
```

## Bases

`BaseChatPromptTemplate`

## Used in Docs

* [How to evaluate a runnable](https://docs.langchain.com/langsmith/langchain-runnable)
* [Manage prompts programmatically](https://docs.langchain.com/langsmith/manage-prompts-programmatically)
* [Redact sensitive data with the OpenTelemetry Gateway architecture](https://docs.langchain.com/langsmith/otel-gateway-trace-redaction)
* [Structured output](https://docs.langchain.com/oss/python/langchain/structured-output)
* [Trace LangChain agents (Python and JS/TS)](https://docs.langchain.com/langsmith/trace-with-langchain)

+15 more(9 more not shown)

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `messages`* | `Sequence[MessageLikeRepresentation]` | Sequence of message representations.  A message can be represented using the following formats:   1. `BaseMessagePromptTemplate` 2. `BaseMessage` 3. 2-tuple of `(message type, template)`; e.g.,    `('human', '{user_input}')` 4. 2-tuple of `(message class, template)` 5. A string which is shorthand for `('human', template)`; e.g.,    `'{user_input}'` |
| `template_format` | `PromptTemplateFormat` | Default:`'f-string'`  Format of the template. |
| `**kwargs` | `Any` | Default:`{}`  Additional keyword arguments passed to `BasePromptTemplate`, including (but not limited to):   * `input_variables`: A list of the names of the variables whose values   are required as inputs to the prompt. * `optional_variables`: A list of the names of the variables for   placeholder or `MessagePlaceholder` that are optional.  These variables are auto inferred from the prompt and user need not   provide them. * `partial_variables`: A dictionary of the partial variables the prompt   template carries.  Partial variables populate the template so that you don't need to   pass them in every time you call the prompt. * `validate_template`: Whether to validate the template. * `input_types`: A dictionary of the types of the variables the prompt   template expects.  If not provided, all variables are assumed to be strings. |

## Constructors

constructor

__init__

| Name | Type |
| --- | --- |
| messages | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[MessageLikeRepresentation](https://reference.langchain.com/python/langchain-core/prompts/chat/MessageLikeRepresentation)] |
| template_format | [PromptTemplateFormat](https://reference.langchain.com/python/langchain-core/prompts/string/PromptTemplateFormat) |
| kwargs | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |

## Attributes

attribute

messages: Annotated[list[MessageLike], SkipValidation()]

List of messages consisting of either message prompt templates or messages.

attribute

validate_template: bool

Whether or not to try validating the template.

## Methods

method

get_lc_namespace

Get the namespace of the LangChain object.

method

validate_input_variables

Validate input variables.

If `input_variables` is not set, it will be set to the union of all input
variables in the messages.

method

from_template

Create a chat prompt template from a template string.

Creates a chat template consisting of a single message assumed to be from the
human.

method

from_messages

Create a chat prompt template from a variety of message formats.

method

format_messages

Format the chat template into a list of finalized messages.

method

aformat_messages

Async format the chat template into a list of finalized messages.

method

partial

Get a new `ChatPromptTemplate` with some input variables already filled in.

method

append

Append a message to the end of the chat template.

method

extend

Extend the chat template with a sequence of messages.

method

pretty_repr

Human-readable representation.

deprecatedmethod

save

Save prompt to file.

## Inherited from[BaseChatPromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/BaseChatPromptTemplate)

### Attributes

[Alc_attributes: dict[str, Any]](https://reference.langchain.com/python/langchain-core/prompts/chat/BaseChatPromptTemplate/lc_attributes)

### Methods

Mformat

—

Format the chat template into a string.

Maformat

—

Async format the chat template into a string.

Mformat_prompt

—

Format prompt.

Maformat_prompt

—

Async format prompt.

Mpretty_print

—

Print a human-readable representation.

## Inherited from[BasePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/base/BasePromptTemplate)

### Attributes

Ainput_variables: list[str]

—

A list of the names of the variables whose values are required as inputs to the

Aoptional_variables: list[str]

—

A list of the names of the variables for placeholder or `MessagePlaceholder` that

Ainput_types: builtins.dict[str, Any]

—

A dictionary of the types of the variables the prompt template expects.

Aoutput_parser: BaseOutputParser | None

—

How to parse the output of calling an LLM on this formatted prompt.

Apartial_variables: Mapping[str, Any]

—

A dictionary of the partial variables the prompt template carries.

Ametadata: builtins.dict[str, Any] | None

—

Metadata to be used for tracing.

Atags: list[str] | None

—

Tags to be used for tracing.

[Amodel_config](https://reference.langchain.com/python/langchain-core/prompts/base/BasePromptTemplate/model_config)

AOutputType: Any

—

Return the output type of the prompt.

### Methods

Mvalidate_variable_names

—

Validate variable names do not include restricted names.

Mis_lc_serializable

—

Return `True` as this class is serializable.

Mget_input_schema

—

Get the input schema for the prompt.

Minvoke

—

Invoke the prompt.

Mainvoke

—

Async invoke the prompt.

Mformat_prompt

—

Create `PromptValue`.

Maformat_prompt

—

Async create `PromptValue`.

Mformat

—

Format the prompt with the inputs.

Maformat

—

Async format the prompt with the inputs.

Mdict

—

DEPRECATED - use `asdict()` instead.

Masdict

—

Return a dictionary representation of the prompt.

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)

### Attributes

Aname: str | None

—

The name of the `Runnable`.

[Amodel_config](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable/model_config)

### Methods

Mto_json

—

Serialize the `Runnable` to JSON.

Mconfigurable_fields

—

Configure particular `Runnable` fields at runtime.

Mconfigurable_alternatives

—

Configure alternatives for `Runnable` objects that can be set at runtime.

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)

### Attributes

Alc_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.

Alc_attributes: dict[str, Any]

—

List of attribute names that should be included in the serialized kwargs.

[Amodel_config](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

Mis_lc_serializable

—

Is this class serializable?

Mlc_id

—

Return a unique identifier for this class for serialization purposes.

Mto_json

—

Serialize the object to JSON.

Mto_json_not_implemented

—

Serialize a "not implemented" object.

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)

### Attributes

Aname: str | None

—

The name of the `Runnable`. Used for debugging and tracing.

AInputType: type[Input]

—

Input type.

AOutputType: type[Output]

—

Output Type.

Ainput_schema: TypeBaseModel

—

The type of input this `Runnable` accepts specified as a Pydantic model.

Aoutput_schema: TypeBaseModel

—

Output schema.

Aconfig_specs: list[ConfigurableFieldSpec]

—

List configurable fields for this `Runnable`.

### Methods

Mget_name

—

Get the name of the `Runnable`.

Mget_input_schema

—

Get a Pydantic model that can be used to validate input to the `Runnable`.

Mget_input_jsonschema

—

Get a JSON schema that represents the input to the `Runnable`.

Mget_output_schema

—

Get a Pydantic model that can be used to validate output to the `Runnable`.

Mget_output_jsonschema

—

Get a JSON schema that represents the output of the `Runnable`.

Mconfig_schema

—

The type of config this `Runnable` accepts specified as a Pydantic model.

Mget_config_jsonschema

—

Get a JSON schema that represents the config of the `Runnable`.

Mget_graph

—

Return a graph representation of this `Runnable`.

Mget_prompts

—

Return a list of prompts used by this `Runnable`.

Mpipe

—

Pipe `Runnable` objects.

Mpick

—

Pick keys from the output `dict` of this `Runnable`.

Massign

—

Assigns new fields to the `dict` output of this `Runnable`.

Minvoke

—

Transform a single input into an output.

Mainvoke

—

Transform a single input into an output.

Mbatch

—

Default implementation runs invoke in parallel using a thread pool executor.

Mbatch_as_completed

—

Run `invoke` in parallel on a list of inputs.

Mabatch

—

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

Mabatch_as_completed

—

Run `ainvoke` in parallel on a list of inputs.

Mstream

—

Default implementation of `stream`, which calls `invoke`.

Mastream

—

Default implementation of `astream`, which calls `ainvoke`.

Mastream_log

—

Stream all output from a `Runnable`, as reported to the callback system.

Mastream_events

—

Generate a stream of events.

Mstream_events

—

Generate a stream of events synchronously.

Mtransform

—

Transform inputs to outputs.

Matransform

—

Transform inputs to outputs.

Mbind

—

Bind arguments to a `Runnable`, returning a new `Runnable`.

Mwith_config

—

Bind config to a `Runnable`, returning a new `Runnable`.

Mwith_listeners

—

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

Mwith_alisteners

—

Bind async lifecycle listeners to a `Runnable`.

Mwith_types

—

Bind input and output types to a `Runnable`, returning a new `Runnable`.

Mwith_retry

—

Create a new `Runnable` that retries the original `Runnable` on exceptions.

Mmap

—

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Mwith_fallbacks

—

Add fallbacks to a `Runnable`, returning a new `Runnable`.

Mas_tool

—

Create a `BaseTool` from a `Runnable`.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/prompts/chat.py#L795)

Version History
