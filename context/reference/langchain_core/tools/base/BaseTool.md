Classv1.8.3 (latest)●Since v1.8

# BaseTool

Base class for all LangChain tools.

This abstract class defines the interface that all LangChain tools must implement.

Tools are components that can be called by agents to perform specific actions.

```
BaseTool(
    self,
    kwargs: Any = {},
)
```

## Bases

`RunnableSerializable[str | dict[str, Any] | ToolCall, Any]`

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| kwargs | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |

## Attributes

attribute

name: str

The unique name of the tool that clearly communicates its purpose.

attribute

description: str

Used to tell the model how/when/why to use the tool.

You can provide few-shot examples as a part of the description.

attribute

args\_schema: Annotated[ArgsSchema | None, SkipValidation()]

Pydantic model class to validate and parse the tool's input arguments.

Args schema should be either:

* A subclass of `pydantic.BaseModel`.
* A subclass of `pydantic.v1.BaseModel` if accessing v1 namespace in pydantic 2
* A JSON schema dict

attribute

return\_direct: bool

Whether to return the tool's output directly.

Setting this to `True` means that after the tool is called, the `AgentExecutor` will
stop looping.

attribute

verbose: bool

Whether to log the tool's progress.

attribute

callbacks: Callbacks

Callbacks to be called during tool execution.

attribute

tags: list[str] | None

Optional list of tags associated with the tool.

These tags will be associated with each call to this tool,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to, e.g., identify a specific instance of a tool with its use
case.

attribute

metadata: dict[str, Any] | None

Optional metadata associated with the tool.

This metadata will be associated with each call to this tool,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to, e.g., identify a specific instance of a tool with its usecase.

attribute

handle\_tool\_error: bool | str | Callable[[ToolException], ToolExceptionHandlerOutput] | None

Handle `ToolException` raised by tool execution.

If `False`, the exception is re-raised. If `True`, the exception message is
returned as tool output. If a string is passed, that string is returned
as tool output. If a callable is passed, it receives the exception and
its return value is used as the tool output.

Callable handlers may return either a string or a list of message
content blocks. If the tool was invoked with a `tool_call_id`, the handled
content is wrapped in a `ToolMessage` with `status="error"`.

attribute

handle\_validation\_error: bool | str | Callable[[ValidationError | ValidationErrorV1], str] | None

Handle the content of the `ValidationError` thrown.

attribute

response\_format: Literal['content', 'content\_and\_artifact']

The tool response format.

If `'content'` then the output of the tool is interpreted as the contents of a
`ToolMessage`. If `'content_and_artifact'` then the output is expected to be a
two-tuple corresponding to the `(content, artifact)` of a `ToolMessage`.

attribute

extras: dict[str, Any] | None

Optional provider-specific extra fields for the tool.

This is used to pass provider-specific configuration that doesn't fit into
standard tool fields.

attribute

model\_config

attribute

is\_single\_input: bool

Check if the tool accepts only a single input argument.

attribute

args: dict[str, Any]

Get the tool's input arguments schema.

attribute

tool\_call\_schema: ArgsSchema

Get the schema for tool calls, excluding injected arguments.

## Methods

method

model\_copy

Copy the tool, clearing the schema memo if `update` affects it.

`model_copy` writes `update` directly to the copy's `__dict__` without
going through `__setattr__`, and private attributes (including the
memo) carry over to the copy, so the memo is cleared here when the
update touches one of the fields the schema is built from.

method

get\_input\_schema

The tool's input schema.

method

invoke

method

ainvoke

method

run

Run the tool.

method

arun

Run the tool asynchronously.

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)

### Methods

Mto\_json

—

Serialize the `Runnable` to JSON.

Mconfigurable\_fields

—

Configure particular `Runnable` fields at runtime.

Mconfigurable\_alternatives

—

Configure alternatives for `Runnable` objects that can be set at runtime.

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)

### Attributes

Alc\_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.

Alc\_attributes: dict[str, Any]

—

List of attribute names that should be included in the serialized kwargs.

### Methods

Mis\_lc\_serializable

—

Is this class serializable?

Mget\_lc\_namespace

—

Get the namespace of the LangChain object.

Mlc\_id

—

Return a unique identifier for this class for serialization purposes.

Mto\_json

—

Serialize the object to JSON.

Mto\_json\_not\_implemented

—

Serialize a "not implemented" object.

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)

### Attributes

AInputType: type[Input]

—

Input type.

AOutputType: type[Output]

—

Output Type.

Ainput\_schema: TypeBaseModel

—

The type of input this `Runnable` accepts specified as a Pydantic model.

Aoutput\_schema: TypeBaseModel

—

Output schema.

Aconfig\_specs: list[ConfigurableFieldSpec]

—

List configurable fields for this `Runnable`.

### Methods

Mget\_name

—

Get the name of the `Runnable`.

Mget\_input\_jsonschema

—

Get a JSON schema that represents the input to the `Runnable`.

Mget\_output\_schema

—

Get a Pydantic model that can be used to validate output to the `Runnable`.

Mget\_output\_jsonschema

—

Get a JSON schema that represents the output of the `Runnable`.

Mconfig\_schema

—

The type of config this `Runnable` accepts specified as a Pydantic model.

Mget\_config\_jsonschema

—

Get a JSON schema that represents the config of the `Runnable`.

Mget\_graph

—

Return a graph representation of this `Runnable`.

Mget\_prompts

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

Mbatch

—

Default implementation runs invoke in parallel using a thread pool executor.

Mbatch\_as\_completed

—

Run `invoke` in parallel on a list of inputs.

Mabatch

—

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

Mabatch\_as\_completed

—

Run `ainvoke` in parallel on a list of inputs.

Mstream

—

Default implementation of `stream`, which calls `invoke`.

Mastream

—

Default implementation of `astream`, which calls `ainvoke`.

Mastream\_log

—

Stream all output from a `Runnable`, as reported to the callback system.

Mastream\_events

—

Generate a stream of events.

Mstream\_events

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

Mwith\_config

—

Bind config to a `Runnable`, returning a new `Runnable`.

Mwith\_listeners

—

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

Mwith\_alisteners

—

Bind async lifecycle listeners to a `Runnable`.

Mwith\_types

—

Bind input and output types to a `Runnable`, returning a new `Runnable`.

Mwith\_retry

—

Create a new `Runnable` that retries the original `Runnable` on exceptions.

Mmap

—

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Mwith\_fallbacks

—

Add fallbacks to a `Runnable`, returning a new `Runnable`.

Mas\_tool

—

Create a `BaseTool` from a `Runnable`.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/tools/base.py#L434)

Version History
