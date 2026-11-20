Classv1.2.23 (latest)●Since v1.2

# CompiledStateGraph

```
CompiledStateGraph(
  self,
  *,
  builder: StateGraph[StateT, ContextT, InputT, OutputT],
  schema_to_mapper: dict[type[Any], Callable[[Any], Any] | None],
  kwargs: Any = {}
)
```

## Bases

`Pregel[StateT, ContextT, InputT, OutputT]``Generic[StateT, ContextT, InputT, OutputT]`

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| builder | [StateGraph](https://reference.langchain.com/python/langgraph/graph/state/StateGraph)[[StateT](https://reference.langchain.com/python/langgraph/typing/StateT), [ContextT](https://reference.langchain.com/python/langgraph/typing/ContextT), [InputT](https://reference.langchain.com/python/langgraph/typing/InputT), [OutputT](https://reference.langchain.com/python/langgraph/typing/OutputT)] |
| schema\_to\_mapper | [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[type](https://docs.python.org/3/library/functions.html#type)[[Any](https://docs.python.org/3/library/typing.html#typing.Any)], [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[Any](https://docs.python.org/3/library/typing.html#typing.Any)], [Any](https://docs.python.org/3/library/typing.html#typing.Any)] | None] |
| kwargs | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |

## Attributes

attribute

builder: StateGraph[StateT, ContextT, InputT, OutputT]

attribute

schema\_to\_mapper: dict[type[Any], Callable[[Any], Any] | None]

## Methods

method

get\_input\_jsonschema

method

get\_output\_jsonschema

method

attach\_node

method

attach\_edge

method

attach\_branch

## Inherited from[Pregel](https://reference.langchain.com/python/langgraph/pregel/main/Pregel)

### Attributes

[Anodes: dict[str, PregelNode]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/nodes)[Achannels: dict[str, BaseChannel | ManagedValueSpec]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/channels)

Astream\_mode: StreamMode

—

Mode to stream output, defaults to 'values'.

Astream\_eager: bool

—

Whether to force emitting stream events eagerly, automatically turned on

[Aoutput\_channels: str | Sequence[str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/output_channels)

Astream\_channels: str | Sequence[str] | None

—

Channels to stream, defaults to all channels not in reserved channels

[Ainterrupt\_after\_nodes: All | Sequence[str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/interrupt_after_nodes)[Ainterrupt\_before\_nodes: All | Sequence[str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/interrupt_before_nodes)[Ainput\_channels: str | Sequence[str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/input_channels)

Astep\_timeout: float | None

—

Maximum time to wait for a step to complete, in seconds.

Adebug: bool

—

Whether to print debug information during execution.

Acheckpointer: Checkpointer

—

`Checkpointer` used to save and load graph state.

Astore: BaseStore | None

—

Memory store to use for SharedValues.

Acache: BaseCache | None

—

Cache to use for storing node results.

Aretry\_policy: Sequence[RetryPolicy]

—

Retry policies to use when running tasks. Empty set disables retries.

Acache\_policy: CachePolicy | None

—

Cache policy to use for all nodes. Can be overridden by individual nodes.

Acontext\_schema: type[ContextT] | None

—

Specifies the schema for the context object that will be passed to the workflow.

[Aconfig: RunnableConfig | None](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/config)[Aname: str](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/name)[Atrigger\_to\_nodes: Mapping[str, Sequence[str]]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/trigger_to_nodes)[Anode\_error\_handler\_map: Mapping[str, str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/node_error_handler_map)[Astream\_transformers: tuple[Callable[[tuple[str, ...]], Any], ...]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/stream_transformers)[AInputType: Any](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/InputType)[AOutputType: Any](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/OutputType)[Astream\_channels\_list: Sequence[str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/stream_channels_list)[Astream\_channels\_asis: str | Sequence[str]](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/stream_channels_asis)

### Methods

Mget\_graph

—

Return a drawable representation of the computation graph.

Maget\_graph

—

Return a drawable representation of the computation graph.

[Mcopy](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/copy)

Mwith\_config

—

Create a copy of the Pregel object with an updated config.

[Mvalidate](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/validate)[Mconfig\_schema](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/config_schema)[Mget\_config\_jsonschema](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/get_config_jsonschema)[Mget\_context\_jsonschema](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/get_context_jsonschema)[Mget\_input\_schema](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/get_input_schema)[Mget\_output\_schema](https://reference.langchain.com/python/langgraph/pregel/main/Pregel/get_output_schema)

Mget\_subgraphs

—

Get the subgraphs of the graph.

Maget\_subgraphs

—

Get the subgraphs of the graph.

Mget\_state

—

Get the current state of the graph.

Maget\_state

—

Get the current state of the graph.

Mget\_state\_history

—

Get the history of the state of the graph.

Maget\_state\_history

—

Asynchronously get the history of the state of the graph.

Mbulk\_update\_state

—

Apply updates to the graph state in bulk. Requires a checkpointer to be set.

Mabulk\_update\_state

—

Asynchronously apply updates to the graph state in bulk. Requires a checkpointer to be set.

Mupdate\_state

—

Update the state of the graph with the given values, as if they came from

Maupdate\_state

—

Asynchronously update the state of the graph with the given values, as if they came from

Mstream

—

Stream graph steps for a single input.

Mastream

—

Asynchronously stream graph steps for a single input.

Mstream\_events

—

Stream events from this graph.

Mastream\_events

—

Async variant of `stream_events`.

Minvoke

—

Run the graph with a single input and config.

Mainvoke

—

Asynchronously run the graph with a single input and config.

Mclear\_cache

—

Clear the cache for the given nodes.

Maclear\_cache

—

Asynchronously clear the cache for the given nodes.

## Inherited from[PregelProtocol](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol)

### Methods

[Mwith\_config](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/with_config)[Mget\_graph](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/get_graph)[Maget\_graph](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/aget_graph)[Mget\_state](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/get_state)[Maget\_state](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/aget_state)[Mget\_state\_history](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/get_state_history)[Maget\_state\_history](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/aget_state_history)[Mbulk\_update\_state](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/bulk_update_state)[Mabulk\_update\_state](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/abulk_update_state)[Mupdate\_state](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/update_state)[Maupdate\_state](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/aupdate_state)[Mstream](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/stream)[Mastream](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/astream)[Minvoke](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/invoke)[Mainvoke](https://reference.langchain.com/python/langgraph/pregel/protocol/PregelProtocol/ainvoke)

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/name)[AInputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_output\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mconfig\_schema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/pick)[Massign](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream)[Mastream](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/transform)[Matransform](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/58a6e1cc5b7dfc3619fc6e7e7573b040d554649b/libs/langgraph/langgraph/graph/state.py#L1404)

Version History
