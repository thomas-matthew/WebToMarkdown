Python[langchain-core](/python/langchain-core)[prompts](/python/langchain-core/prompts)[chat](/python/langchain-core/prompts/chat)ChatPromptTemplate

Classv1.4.8 (latest)●Since v0.1

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

Copy

```
ChatPromptTemplate(
  self,
  messages: Sequence[MessageLikeRepresentation],
  *,
  template_format: PromptTemplateFormat = 'f-string',
  **kwargs: Any = {}
)
```

## Bases

`BaseChatPromptTemplate`

## Used in Docs

* [How to evaluate a runnable](https://docs.langchain.com/langsmith/langchain-runnable)
* [Manage prompts programmatically](https://docs.langchain.com/langsmith/manage-prompts-programmatically)
* [Redact sensitive data with the OpenTelemetry Gateway architecture](https://docs.langchain.com/langsmith/otel-gateway-trace-redaction)
* [Trace LangChain applications (Python and JS/TS)](https://docs.langchain.com/langsmith/trace-with-langchain)
* [Trace with OpenTelemetry](https://docs.langchain.com/langsmith/trace-with-opentelemetry)

+15 more(40 more not shown)

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `messages`\* | `Sequence[MessageLikeRepresentation]` | Sequence of message representations.  A message can be represented using the following formats:   1. `BaseMessagePromptTemplate` 2. `BaseMessage` 3. 2-tuple of `(message type, template)`; e.g.,    `('human', '{user_input}')` 4. 2-tuple of `(message class, template)` 5. A string which is shorthand for `('human', template)`; e.g.,    `'{user_input}'` |
| `template_format` | `PromptTemplateFormat` | Default:`'f-string'`  Format of the template. |
| `**kwargs` | `Any` | Default:`{}`  Additional keyword arguments passed to `BasePromptTemplate`, including (but not limited to):   * `input_variables`: A list of the names of the variables whose values   are required as inputs to the prompt. * `optional_variables`: A list of the names of the variables for   placeholder or `MessagePlaceholder` that are optional.  These variables are auto inferred from the prompt and user need not   provide them. * `partial_variables`: A dictionary of the partial variables the prompt   template carries.  Partial variables populate the template so that you don't need to   pass them in every time you call the prompt. * `validate_template`: Whether to validate the template. * `input_types`: A dictionary of the types of the variables the prompt   template expects.  If not provided, all variables are assumed to be strings. |

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| messages | [Sequence](https://docs.python.org/3/library/typing.html#typing.Sequence)[[MessageLikeRepresentation](/python/langchain-core/prompts/chat/MessageLikeRepresentation)] |
| template\_format | [PromptTemplateFormat](/python/langchain-core/prompts/string/PromptTemplateFormat) |

## Attributes

[attribute

messages: Annotated[list[MessageLike], SkipValidation()]

List of messages consisting of either message prompt templates or messages.](/python/langchain-core/prompts/chat/ChatPromptTemplate/messages)[attribute

validate\_template: bool

Whether or not to try validating the template.](/python/langchain-core/prompts/chat/ChatPromptTemplate/validate_template)

## Methods

[method

get\_lc\_namespace

Get the namespace of the LangChain object.](/python/langchain-core/prompts/chat/ChatPromptTemplate/get_lc_namespace)[method

validate\_input\_variables

Validate input variables.

If `input_variables` is not set, it will be set to the union of all input
variables in the messages.](/python/langchain-core/prompts/chat/ChatPromptTemplate/validate_input_variables)[method

from\_template

Create a chat prompt template from a template string.

Creates a chat template consisting of a single message assumed to be from the
human.](/python/langchain-core/prompts/chat/ChatPromptTemplate/from_template)[method

from\_messages

Create a chat prompt template from a variety of message formats.](/python/langchain-core/prompts/chat/ChatPromptTemplate/from_messages)[method

format\_messages

Format the chat template into a list of finalized messages.](/python/langchain-core/prompts/chat/ChatPromptTemplate/format_messages)[method

aformat\_messages

Async format the chat template into a list of finalized messages.](/python/langchain-core/prompts/chat/ChatPromptTemplate/aformat_messages)[method

partial

Get a new `ChatPromptTemplate` with some input variables already filled in.](/python/langchain-core/prompts/chat/ChatPromptTemplate/partial)[method

append

Append a message to the end of the chat template.](/python/langchain-core/prompts/chat/ChatPromptTemplate/append)[method

extend

Extend the chat template with a sequence of messages.](/python/langchain-core/prompts/chat/ChatPromptTemplate/extend)[method

pretty\_repr

Human-readable representation.](/python/langchain-core/prompts/chat/ChatPromptTemplate/pretty_repr)[deprecatedmethod

save

Save prompt to file.](/python/langchain-core/prompts/chat/ChatPromptTemplate/save)

## Inherited from[BaseChatPromptTemplate](/python/langchain-core/prompts/chat/BaseChatPromptTemplate)

### Attributes

[Alc\_attributes: dict[str, Any]](/python/langchain-core/prompts/chat/BaseChatPromptTemplate/lc_attributes)

### Methods

[Mformat

—

Format the chat template into a string.](/python/langchain-core/prompts/chat/BaseChatPromptTemplate/format)[Maformat

—

Async format the chat template into a string.](/python/langchain-core/prompts/chat/BaseChatPromptTemplate/aformat)[Mformat\_prompt

—

Format prompt.](/python/langchain-core/prompts/chat/BaseChatPromptTemplate/format_prompt)[Maformat\_prompt

—

Async format prompt.](/python/langchain-core/prompts/chat/BaseChatPromptTemplate/aformat_prompt)[Mpretty\_print

—

Print a human-readable representation.](/python/langchain-core/prompts/chat/BaseChatPromptTemplate/pretty_print)

## Inherited from[BasePromptTemplate](/python/langchain-core/prompts/base/BasePromptTemplate)

### Attributes

[Ainput\_variables: list[str]

—

A list of the names of the variables whose values are required as inputs to the](/python/langchain-core/prompts/base/BasePromptTemplate/input_variables)[Aoptional\_variables: list[str]

—

A list of the names of the variables for placeholder or `MessagePlaceholder` that](/python/langchain-core/prompts/base/BasePromptTemplate/optional_variables)[Ainput\_types: builtins.dict[str, Any]

—

A dictionary of the types of the variables the prompt template expects.](/python/langchain-core/prompts/base/BasePromptTemplate/input_types)[Aoutput\_parser: BaseOutputParser | None

—

How to parse the output of calling an LLM on this formatted prompt.](/python/langchain-core/prompts/base/BasePromptTemplate/output_parser)[Apartial\_variables: Mapping[str, Any]

—

A dictionary of the partial variables the prompt template carries.](/python/langchain-core/prompts/base/BasePromptTemplate/partial_variables)[Ametadata: builtins.dict[str, Any] | None

—

Metadata to be used for tracing.](/python/langchain-core/prompts/base/BasePromptTemplate/metadata)[Atags: list[str] | None

—

Tags to be used for tracing.](/python/langchain-core/prompts/base/BasePromptTemplate/tags)[Amodel\_config](/python/langchain-core/prompts/base/BasePromptTemplate/model_config)[AOutputType: Any

—

Return the output type of the prompt.](/python/langchain-core/prompts/base/BasePromptTemplate/OutputType)

### Methods

[Mvalidate\_variable\_names

—

Validate variable names do not include restricted names.](/python/langchain-core/prompts/base/BasePromptTemplate/validate_variable_names)[Mis\_lc\_serializable

—

Return `True` as this class is serializable.](/python/langchain-core/prompts/base/BasePromptTemplate/is_lc_serializable)[Mget\_input\_schema

—

Get the input schema for the prompt.](/python/langchain-core/prompts/base/BasePromptTemplate/get_input_schema)[Minvoke

—

Invoke the prompt.](/python/langchain-core/prompts/base/BasePromptTemplate/invoke)[Mainvoke

—

Async invoke the prompt.](/python/langchain-core/prompts/base/BasePromptTemplate/ainvoke)[Mformat\_prompt

—

Create `PromptValue`.](/python/langchain-core/prompts/base/BasePromptTemplate/format_prompt)[Maformat\_prompt

—

Async create `PromptValue`.](/python/langchain-core/prompts/base/BasePromptTemplate/aformat_prompt)[Mformat

—

Format the prompt with the inputs.](/python/langchain-core/prompts/base/BasePromptTemplate/format)[Maformat

—

Async format the prompt with the inputs.](/python/langchain-core/prompts/base/BasePromptTemplate/aformat)[Mdict

—

DEPRECATED - use `asdict()` instead.](/python/langchain-core/prompts/base/BasePromptTemplate/dict)[Masdict

—

Return a dictionary representation of the prompt.](/python/langchain-core/prompts/base/BasePromptTemplate/asdict)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)

### Attributes

[Aname: str | None

—

The name of the `Runnable`.](/python/langchain-core/runnables/base/RunnableSerializable/name)[Amodel\_config](/python/langchain-core/runnables/base/RunnableSerializable/model_config)

### Methods

[Mto\_json

—

Serialize the `Runnable` to JSON.](/python/langchain-core/runnables/base/RunnableSerializable/to_json)[Mconfigurable\_fields

—

Configure particular `Runnable` fields at runtime.](/python/langchain-core/runnables/base/RunnableSerializable/configurable_fields)[Mconfigurable\_alternatives

—

Configure alternatives for `Runnable` objects that can be set at runtime.](/python/langchain-core/runnables/base/RunnableSerializable/configurable_alternatives)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)

### Attributes

[Alc\_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.](/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc\_attributes: dict[str, Any]

—

List of attribute names that should be included in the serialized kwargs.](/python/langchain-core/load/serializable/Serializable/lc_attributes)[Amodel\_config](/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

[Mis\_lc\_serializable

—

Is this class serializable?](/python/langchain-core/load/serializable/Serializable/is_lc_serializable)[Mlc\_id

—

Return a unique identifier for this class for serialization purposes.](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json

—

Serialize the object to JSON.](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented

—

Serialize a "not implemented" object.](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)

### Attributes

[Aname: str | None

—

The name of the `Runnable`. Used for debugging and tracing.](/python/langchain-core/runnables/base/Runnable/name)[AInputType: type[Input]

—

Input type.](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType: type[Output]

—

Output Type.](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema: TypeBaseModel

—

The type of input this `Runnable` accepts specified as a Pydantic model.](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema: TypeBaseModel

—

Output schema.](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs: list[ConfigurableFieldSpec]

—

List configurable fields for this `Runnable`.](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name

—

Get the name of the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema

—

Get a Pydantic model that can be used to validate input to the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_input\_jsonschema

—

Get a JSON schema that represents the input to the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_input_jsonschema)[Mget\_output\_schema

—

Get a Pydantic model that can be used to validate output to the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mget\_output\_jsonschema

—

Get a JSON schema that represents the output of the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_output_jsonschema)[Mconfig\_schema

—

The type of config this `Runnable` accepts specified as a Pydantic model.](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema

—

Get a JSON schema that represents the config of the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph

—

Return a graph representation of this `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts

—

Return a list of prompts used by this `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe

—

Pipe `Runnable` objects.](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick

—

Pick keys from the output `dict` of this `Runnable`.](/python/langchain-core/runnables/base/Runnable/pick)[Massign

—

Assigns new fields to the `dict` output of this `Runnable`.](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke

—

Transform a single input into an output.](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke

—

Transform a single input into an output.](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch

—

Default implementation runs invoke in parallel using a thread pool executor.](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed

—

Run `invoke` in parallel on a list of inputs.](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch

—

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed

—

Run `ainvoke` in parallel on a list of inputs.](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream

—

Default implementation of `stream`, which calls `invoke`.](/python/langchain-core/runnables/base/Runnable/stream)[Mastream

—

Default implementation of `astream`, which calls `ainvoke`.](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log

—

Stream all output from a `Runnable`, as reported to the callback system.](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events

—

Generate a stream of events.](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events

—

Generate a stream of events synchronously.](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform

—

Transform inputs to outputs.](/python/langchain-core/runnables/base/Runnable/transform)[Matransform

—

Transform inputs to outputs.](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind

—

Bind arguments to a `Runnable`, returning a new `Runnable`.](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config

—

Bind config to a `Runnable`, returning a new `Runnable`.](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners

—

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners

—

Bind async lifecycle listeners to a `Runnable`.](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types

—

Bind input and output types to a `Runnable`, returning a new `Runnable`.](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry

—

Create a new `Runnable` that retries the original `Runnable` on exceptions.](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap

—

Return a new `Runnable` that maps a list of inputs to a list of outputs.](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks

—

Add fallbacks to a `Runnable`, returning a new `Runnable`.](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool

—

Create a `BaseTool` from a `Runnable`.](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/8a2f1a9445ed1b467cdeb0fcb89dba2c67bd2bb3/libs/core/langchain_core/prompts/chat.py#L794)

Version History

Copy page

### On This Page

Related Documentation◇Parameters

Constructors

C\_\_init\_\_

Attributes

AmessagesAvalidate\_template

Methods

Mget\_lc\_namespaceMvalidate\_input\_variablesMfrom\_templateMfrom\_messagesMformat\_messagesMaformat\_messagesMpartialMappendMextendMsaveMpretty\_repr

from BaseChatPromptTemplate

AAttributes

Alc\_attributes

MMethods

MformatMaformatMformat\_promptMaformat\_promptMpretty\_print

from BasePromptTemplate

AAttributes

Ainput\_variablesAoptional\_variablesAinput\_typesAoutput\_parserApartial\_variablesAmetadataAtagsAmodel\_configAOutputType

MMethods

Mvalidate\_variable\_namesMis\_lc\_serializableMget\_input\_schemaMinvokeMainvokeMformat\_promptMaformat\_promptMformatMaformatMdictMasdict

from RunnableSerializable

AAttributes

AnameAmodel\_config

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Alc\_secretsAlc\_attributesAmodel\_config

MMethods

Mis\_lc\_serializableMlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool