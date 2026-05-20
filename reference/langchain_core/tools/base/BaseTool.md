Python[langchain-core](/python/langchain-core)[tools](/python/langchain-core/tools)[base](/python/langchain-core/tools/base)BaseTool

Classv1.4.0 (latest)●Since v0.2

# BaseTool

Base class for all LangChain tools.

This abstract class defines the interface that all LangChain tools must implement.

Tools are components that can be called by agents to perform specific actions.

Copy

```
BaseTool(
    self,
    **kwargs: Any = {},
)
```

## Bases

`RunnableSerializable[str | dict | ToolCall, Any]`

## Used in Docs

* [Fmp data integration](https://docs.langchain.com/oss/python/integrations/tools/fmp-data)

## Constructors

[constructor

\_\_init\_\_](/python/langchain-core/tools/base/BaseTool/__init__)

## Attributes

[attribute

name: str

The unique name of the tool that clearly communicates its purpose.](/python/langchain-core/tools/base/BaseTool/name)[attribute

description: str

Used to tell the model how/when/why to use the tool.

You can provide few-shot examples as a part of the description.](/python/langchain-core/tools/base/BaseTool/description)[attribute

args\_schema: Annotated[ArgsSchema | None, SkipValidation()]

Pydantic model class to validate and parse the tool's input arguments.

Args schema should be either:

* A subclass of `pydantic.BaseModel`.
* A subclass of `pydantic.v1.BaseModel` if accessing v1 namespace in pydantic 2
* A JSON schema dict](/python/langchain-core/tools/base/BaseTool/args_schema)[attribute

return\_direct: bool

Whether to return the tool's output directly.

Setting this to `True` means that after the tool is called, the `AgentExecutor` will
stop looping.](/python/langchain-core/tools/base/BaseTool/return_direct)[attribute

verbose: bool

Whether to log the tool's progress.](/python/langchain-core/tools/base/BaseTool/verbose)[attribute

callbacks: Callbacks

Callbacks to be called during tool execution.](/python/langchain-core/tools/base/BaseTool/callbacks)[attribute

tags: list[str] | None

Optional list of tags associated with the tool.

These tags will be associated with each call to this tool,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to, e.g., identify a specific instance of a tool with its use
case.](/python/langchain-core/tools/base/BaseTool/tags)[attribute

metadata: dict[str, Any] | None

Optional metadata associated with the tool.

This metadata will be associated with each call to this tool,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to, e.g., identify a specific instance of a tool with its usecase.](/python/langchain-core/tools/base/BaseTool/metadata)[attribute

handle\_tool\_error: bool | str | Callable[[ToolException], str] | None

Handle the content of the `ToolException` thrown.](/python/langchain-core/tools/base/BaseTool/handle_tool_error)[attribute

handle\_validation\_error: bool | str | Callable[[ValidationError | ValidationErrorV1], str] | None

Handle the content of the `ValidationError` thrown.](/python/langchain-core/tools/base/BaseTool/handle_validation_error)[attribute

response\_format: Literal['content', 'content\_and\_artifact']

The tool response format.

If `'content'` then the output of the tool is interpreted as the contents of a
`ToolMessage`. If `'content_and_artifact'` then the output is expected to be a
two-tuple corresponding to the `(content, artifact)` of a `ToolMessage`.](/python/langchain-core/tools/base/BaseTool/response_format)[attribute

extras: dict[str, Any] | None

Optional provider-specific extra fields for the tool.

This is used to pass provider-specific configuration that doesn't fit into
standard tool fields.](/python/langchain-core/tools/base/BaseTool/extras)[attribute

model\_config](/python/langchain-core/tools/base/BaseTool/model_config)[attribute

is\_single\_input: bool

Check if the tool accepts only a single input argument.](/python/langchain-core/tools/base/BaseTool/is_single_input)[attribute

args: dict

Get the tool's input arguments schema.](/python/langchain-core/tools/base/BaseTool/args)[attribute

tool\_call\_schema: ArgsSchema

Get the schema for tool calls, excluding injected arguments.](/python/langchain-core/tools/base/BaseTool/tool_call_schema)

## Methods

[method

get\_input\_schema

The tool's input schema.](/python/langchain-core/tools/base/BaseTool/get_input_schema)[method

invoke](/python/langchain-core/tools/base/BaseTool/invoke)[method

ainvoke](/python/langchain-core/tools/base/BaseTool/ainvoke)[method

run

Run the tool.](/python/langchain-core/tools/base/BaseTool/run)[method

arun

Run the tool asynchronously.](/python/langchain-core/tools/base/BaseTool/arun)

## Inherited from[RunnableSerializable](/python/langchain-core/runnables/base/RunnableSerializable)

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

A map of constructor argument names to secret ids.](/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc\_attributes: dict

—

List of attribute names that should be included in the serialized kwargs.](/python/langchain-core/load/serializable/Serializable/lc_attributes)

### Methods

[Mis\_lc\_serializable

—

Is this class serializable?](/python/langchain-core/load/serializable/Serializable/is_lc_serializable)[Mget\_lc\_namespace

—

Get the namespace of the LangChain object.](/python/langchain-core/load/serializable/Serializable/get_lc_namespace)[Mlc\_id

—

Return a unique identifier for this class for serialization purposes.](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json

—

Serialize the object to JSON.](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented

—

Serialize a "not implemented" object.](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)

### Attributes

[AInputType: type[Input]

—

Input type.](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType: type[Output]

—

Output Type.](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema: type[BaseModel]

—

The type of input this `Runnable` accepts specified as a Pydantic model.](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema: type[BaseModel]

—

Output schema.](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs: list[ConfigurableFieldSpec]

—

List configurable fields for this `Runnable`.](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name

—

Get the name of the `Runnable`.](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_jsonschema

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

Assigns new fields to the `dict` output of this `Runnable`.](/python/langchain-core/runnables/base/Runnable/assign)[Mbatch

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/core/langchain_core/tools/base.py#L405)

Version History

Copy page

### On This Page

Related Documentation

Constructors

C\_\_init\_\_

Attributes

AnameAdescriptionAargs\_schemaAreturn\_directAverboseAcallbacksAtagsAmetadataAhandle\_tool\_errorAhandle\_validation\_errorAresponse\_formatAextrasAmodel\_configAis\_single\_inputAargsAtool\_call\_schema

Methods

Mget\_input\_schemaMinvokeMainvokeMrunMarun

from RunnableSerializable

MMethods

Mto\_jsonMconfigurable\_fieldsMconfigurable\_alternatives

from Serializable

AAttributes

Alc\_secretsAlc\_attributes

MMethods

Mis\_lc\_serializableMget\_lc\_namespaceMlc\_idMto\_jsonMto\_json\_not\_implemented

from Runnable

AAttributes

AInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_jsonschemaMget\_output\_schemaMget\_output\_jsonschemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool