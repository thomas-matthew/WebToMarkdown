Python[langgraph](/python/langgraph)[graph](/python/langgraph/graph)[state](/python/langgraph/graph/state)CompiledStateGraph

Classv1.2.0 (latest)●Since v0.1

# CompiledStateGraph

Copy

```
CompiledStateGraph(
  self,
  *,
  builder: StateGraph[StateT, ContextT, InputT, OutputT],
  schema_to_mapper: dict[type[Any], Callable[[Any], Any] | None],
  **kwargs: Any = {}
)
```

## Bases

`Pregel[StateT, ContextT, InputT, OutputT]``Generic[StateT, ContextT, InputT, OutputT]`

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| builder | [StateGraph](/python/langgraph/graph/state/StateGraph)[[StateT](/python/langgraph/types/StateT), [ContextT](/python/langgraph/typing/ContextT), [InputT](/python/langgraph/typing/InputT), [OutputT](/python/langgraph/types/OutputT)] |
| schema\_to\_mapper | [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[type](https://docs.python.org/3/library/functions.html#type)[[Any](https://docs.python.org/3/library/typing.html#typing.Any)], [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[Any](https://docs.python.org/3/library/typing.html#typing.Any)], [Any](https://docs.python.org/3/library/typing.html#typing.Any)] | None] |

## Attributes

[attribute

builder: StateGraph[StateT, ContextT, InputT, OutputT]](/python/langgraph/graph/state/CompiledStateGraph/builder)[attribute

schema\_to\_mapper: dict[type[Any], Callable[[Any], Any] | None]](/python/langgraph/graph/state/CompiledStateGraph/schema_to_mapper)

## Methods

[method

get\_input\_jsonschema](/python/langgraph/graph/state/CompiledStateGraph/get_input_jsonschema)[method

get\_output\_jsonschema](/python/langgraph/graph/state/CompiledStateGraph/get_output_jsonschema)[method

attach\_node](/python/langgraph/graph/state/CompiledStateGraph/attach_node)[method

attach\_edge](/python/langgraph/graph/state/CompiledStateGraph/attach_edge)[method

attach\_branch](/python/langgraph/graph/state/CompiledStateGraph/attach_branch)

## Inherited from[Pregel](/python/langgraph/pregel/main/Pregel)

### Attributes

[Anodes: dict[str, PregelNode]](/python/langgraph/pregel/main/Pregel/nodes)[Achannels: dict[str, BaseChannel | ManagedValueSpec]](/python/langgraph/pregel/main/Pregel/channels)[Astream\_mode: StreamMode

—

Mode to stream output, defaults to 'values'.](/python/langgraph/pregel/main/Pregel/stream_mode)[Astream\_eager: bool

—

Whether to force emitting stream events eagerly, automatically turned on](/python/langgraph/pregel/main/Pregel/stream_eager)[Aoutput\_channels: str | Sequence[str]](/python/langgraph/pregel/main/Pregel/output_channels)[Astream\_channels: str | Sequence[str] | None

—

Channels to stream, defaults to all channels not in reserved channels](/python/langgraph/pregel/main/Pregel/stream_channels)[Ainterrupt\_after\_nodes: All | Sequence[str]](/python/langgraph/pregel/main/Pregel/interrupt_after_nodes)[Ainterrupt\_before\_nodes: All | Sequence[str]](/python/langgraph/pregel/main/Pregel/interrupt_before_nodes)[Ainput\_channels: str | Sequence[str]](/python/langgraph/pregel/main/Pregel/input_channels)[Astep\_timeout: float | None

—

Maximum time to wait for a step to complete, in seconds.](/python/langgraph/pregel/main/Pregel/step_timeout)[Adebug: bool

—

Whether to print debug information during execution.](/python/langgraph/pregel/main/Pregel/debug)[Acheckpointer: Checkpointer

—

`Checkpointer` used to save and load graph state.](/python/langgraph/pregel/main/Pregel/checkpointer)[Astore: BaseStore | None

—

Memory store to use for SharedValues.](/python/langgraph/pregel/main/Pregel/store)[Acache: BaseCache | None

—

Cache to use for storing node results.](/python/langgraph/pregel/main/Pregel/cache)[Aretry\_policy: Sequence[RetryPolicy]

—

Retry policies to use when running tasks. Empty set disables retries.](/python/langgraph/pregel/main/Pregel/retry_policy)[Acache\_policy: CachePolicy | None

—

Cache policy to use for all nodes. Can be overridden by individual nodes.](/python/langgraph/pregel/main/Pregel/cache_policy)[Acontext\_schema: type[ContextT] | None

—

Specifies the schema for the context object that will be passed to the workflow.](/python/langgraph/pregel/main/Pregel/context_schema)[Aconfig: RunnableConfig | None](/python/langgraph/pregel/main/Pregel/config)[Aname: str](/python/langgraph/pregel/main/Pregel/name)[Atrigger\_to\_nodes: Mapping[str, Sequence[str]]](/python/langgraph/pregel/main/Pregel/trigger_to_nodes)[Anode\_error\_handler\_map: Mapping[str, str]](/python/langgraph/pregel/main/Pregel/node_error_handler_map)[Astream\_transformers: tuple[Callable[[tuple[str, ...]], Any], ...]](/python/langgraph/pregel/main/Pregel/stream_transformers)[AInputType: Any](/python/langgraph/pregel/main/Pregel/InputType)[AOutputType: Any](/python/langgraph/pregel/main/Pregel/OutputType)[Astream\_channels\_list: Sequence[str]](/python/langgraph/pregel/main/Pregel/stream_channels_list)[Astream\_channels\_asis: str | Sequence[str]](/python/langgraph/pregel/main/Pregel/stream_channels_asis)

### Methods

[Mget\_graph

—

Return a drawable representation of the computation graph.](/python/langgraph/pregel/main/Pregel/get_graph)[Maget\_graph

—

Return a drawable representation of the computation graph.](/python/langgraph/pregel/main/Pregel/aget_graph)[Mcopy](/python/langgraph/pregel/main/Pregel/copy)[Mwith\_config

—

Create a copy of the Pregel object with an updated config.](/python/langgraph/pregel/main/Pregel/with_config)[Mvalidate](/python/langgraph/pregel/main/Pregel/validate)[Mconfig\_schema](/python/langgraph/pregel/main/Pregel/config_schema)[Mget\_config\_jsonschema](/python/langgraph/pregel/main/Pregel/get_config_jsonschema)[Mget\_context\_jsonschema](/python/langgraph/pregel/main/Pregel/get_context_jsonschema)[Mget\_input\_schema](/python/langgraph/pregel/main/Pregel/get_input_schema)[Mget\_output\_schema](/python/langgraph/pregel/main/Pregel/get_output_schema)[Mget\_subgraphs

—

Get the subgraphs of the graph.](/python/langgraph/pregel/main/Pregel/get_subgraphs)[Maget\_subgraphs

—

Get the subgraphs of the graph.](/python/langgraph/pregel/main/Pregel/aget_subgraphs)[Mget\_state

—

Get the current state of the graph.](/python/langgraph/pregel/main/Pregel/get_state)[Maget\_state

—

Get the current state of the graph.](/python/langgraph/pregel/main/Pregel/aget_state)[Mget\_state\_history

—

Get the history of the state of the graph.](/python/langgraph/pregel/main/Pregel/get_state_history)[Maget\_state\_history

—

Asynchronously get the history of the state of the graph.](/python/langgraph/pregel/main/Pregel/aget_state_history)[Mbulk\_update\_state

—

Apply updates to the graph state in bulk. Requires a checkpointer to be set.](/python/langgraph/pregel/main/Pregel/bulk_update_state)[Mabulk\_update\_state

—

Asynchronously apply updates to the graph state in bulk. Requires a checkpointer to be set.](/python/langgraph/pregel/main/Pregel/abulk_update_state)[Mupdate\_state

—

Update the state of the graph with the given values, as if they came from](/python/langgraph/pregel/main/Pregel/update_state)[Maupdate\_state

—

Asynchronously update the state of the graph with the given values, as if they came from](/python/langgraph/pregel/main/Pregel/aupdate_state)[Mstream

—

Stream graph steps for a single input.](/python/langgraph/pregel/main/Pregel/stream)[Mastream

—

Asynchronously stream graph steps for a single input.](/python/langgraph/pregel/main/Pregel/astream)[Mstream\_events

—

Stream events from this graph.](/python/langgraph/pregel/main/Pregel/stream_events)[Mastream\_events

—

Async variant of `stream_events`.](/python/langgraph/pregel/main/Pregel/astream_events)[Minvoke

—

Run the graph with a single input and config.](/python/langgraph/pregel/main/Pregel/invoke)[Mainvoke

—

Asynchronously run the graph with a single input and config.](/python/langgraph/pregel/main/Pregel/ainvoke)[Mclear\_cache

—

Clear the cache for the given nodes.](/python/langgraph/pregel/main/Pregel/clear_cache)[Maclear\_cache

—

Asynchronously clear the cache for the given nodes.](/python/langgraph/pregel/main/Pregel/aclear_cache)

## Inherited from[PregelProtocol](/python/langgraph/pregel/protocol/PregelProtocol)

### Methods

[Mwith\_config](/python/langgraph/pregel/protocol/PregelProtocol/with_config)[Mget\_graph](/python/langgraph/pregel/protocol/PregelProtocol/get_graph)[Maget\_graph](/python/langgraph/pregel/protocol/PregelProtocol/aget_graph)[Mget\_state](/python/langgraph/pregel/protocol/PregelProtocol/get_state)[Maget\_state](/python/langgraph/pregel/protocol/PregelProtocol/aget_state)[Mget\_state\_history](/python/langgraph/pregel/protocol/PregelProtocol/get_state_history)[Maget\_state\_history](/python/langgraph/pregel/protocol/PregelProtocol/aget_state_history)[Mbulk\_update\_state](/python/langgraph/pregel/protocol/PregelProtocol/bulk_update_state)[Mabulk\_update\_state](/python/langgraph/pregel/protocol/PregelProtocol/abulk_update_state)[Mupdate\_state](/python/langgraph/pregel/protocol/PregelProtocol/update_state)[Maupdate\_state](/python/langgraph/pregel/protocol/PregelProtocol/aupdate_state)[Mstream](/python/langgraph/pregel/protocol/PregelProtocol/stream)[Mastream](/python/langgraph/pregel/protocol/PregelProtocol/astream)[Minvoke](/python/langgraph/pregel/protocol/PregelProtocol/invoke)[Mainvoke](/python/langgraph/pregel/protocol/PregelProtocol/ainvoke)

## Inherited from[Runnable](/python/langchain-core/runnables/base/Runnable)(langchain\_core)

### Attributes

[Aname](/python/langchain-core/runnables/base/Runnable/name)[AInputType](/python/langchain-core/runnables/base/Runnable/InputType)[AOutputType](/python/langchain-core/runnables/base/Runnable/OutputType)[Ainput\_schema](/python/langchain-core/runnables/base/Runnable/input_schema)[Aoutput\_schema](/python/langchain-core/runnables/base/Runnable/output_schema)[Aconfig\_specs](/python/langchain-core/runnables/base/Runnable/config_specs)

### Methods

[Mget\_name](/python/langchain-core/runnables/base/Runnable/get_name)[Mget\_input\_schema](/python/langchain-core/runnables/base/Runnable/get_input_schema)[Mget\_output\_schema](/python/langchain-core/runnables/base/Runnable/get_output_schema)[Mconfig\_schema](/python/langchain-core/runnables/base/Runnable/config_schema)[Mget\_config\_jsonschema](/python/langchain-core/runnables/base/Runnable/get_config_jsonschema)[Mget\_graph](/python/langchain-core/runnables/base/Runnable/get_graph)[Mget\_prompts](/python/langchain-core/runnables/base/Runnable/get_prompts)[Mpipe](/python/langchain-core/runnables/base/Runnable/pipe)[Mpick](/python/langchain-core/runnables/base/Runnable/pick)[Massign](/python/langchain-core/runnables/base/Runnable/assign)[Minvoke](/python/langchain-core/runnables/base/Runnable/invoke)[Mainvoke](/python/langchain-core/runnables/base/Runnable/ainvoke)[Mbatch](/python/langchain-core/runnables/base/Runnable/batch)[Mbatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/batch_as_completed)[Mabatch](/python/langchain-core/runnables/base/Runnable/abatch)[Mabatch\_as\_completed](/python/langchain-core/runnables/base/Runnable/abatch_as_completed)[Mstream](/python/langchain-core/runnables/base/Runnable/stream)[Mastream](/python/langchain-core/runnables/base/Runnable/astream)[Mastream\_log](/python/langchain-core/runnables/base/Runnable/astream_log)[Mastream\_events](/python/langchain-core/runnables/base/Runnable/astream_events)[Mstream\_events](/python/langchain-core/runnables/base/Runnable/stream_events)[Mtransform](/python/langchain-core/runnables/base/Runnable/transform)[Matransform](/python/langchain-core/runnables/base/Runnable/atransform)[Mbind](/python/langchain-core/runnables/base/Runnable/bind)[Mwith\_config](/python/langchain-core/runnables/base/Runnable/with_config)[Mwith\_listeners](/python/langchain-core/runnables/base/Runnable/with_listeners)[Mwith\_alisteners](/python/langchain-core/runnables/base/Runnable/with_alisteners)[Mwith\_types](/python/langchain-core/runnables/base/Runnable/with_types)[Mwith\_retry](/python/langchain-core/runnables/base/Runnable/with_retry)[Mmap](/python/langchain-core/runnables/base/Runnable/map)[Mwith\_fallbacks](/python/langchain-core/runnables/base/Runnable/with_fallbacks)[Mas\_tool](/python/langchain-core/runnables/base/Runnable/as_tool)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/076e2a3627206f5a1aef573aaca4a01e5af897ca/libs/langgraph/langgraph/graph/state.py#L1391)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Attributes

AbuilderAschema\_to\_mapper

Methods

Mget\_input\_jsonschemaMget\_output\_jsonschemaMattach\_nodeMattach\_edgeMattach\_branch

from Pregel

AAttributes

AnodesAchannelsAstream\_modeAstream\_eagerAoutput\_channelsAstream\_channelsAinterrupt\_after\_nodesAinterrupt\_before\_nodesAinput\_channelsAstep\_timeoutAdebugAcheckpointerAstoreAcacheAretry\_policyAcache\_policyAcontext\_schemaAconfigAnameAtrigger\_to\_nodesAnode\_error\_handler\_mapAstream\_transformersAInputTypeAOutputTypeAstream\_channels\_listAstream\_channels\_asis

MMethods

Mget\_graphMaget\_graphMcopyMwith\_configMvalidateMconfig\_schemaMget\_config\_jsonschemaMget\_context\_jsonschemaMget\_input\_schemaMget\_output\_schemaMget\_subgraphsMaget\_subgraphsMget\_stateMaget\_stateMget\_state\_historyMaget\_state\_historyMbulk\_update\_stateMabulk\_update\_stateMupdate\_stateMaupdate\_stateMstreamMastreamMstream\_eventsMastream\_eventsMinvokeMainvokeMclear\_cacheMaclear\_cache

from PregelProtocol

MMethods

Mwith\_configMget\_graphMaget\_graphMget\_stateMaget\_stateMget\_state\_historyMaget\_state\_historyMbulk\_update\_stateMabulk\_update\_stateMupdate\_stateMaupdate\_stateMstreamMastreamMinvokeMainvoke

from Runnable

AAttributes

AnameAInputTypeAOutputTypeAinput\_schemaAoutput\_schemaAconfig\_specs

MMethods

Mget\_nameMget\_input\_schemaMget\_output\_schemaMconfig\_schemaMget\_config\_jsonschemaMget\_graphMget\_promptsMpipeMpickMassignMinvokeMainvokeMbatchMbatch\_as\_completedMabatchMabatch\_as\_completedMstreamMastreamMastream\_logMastream\_eventsMstream\_eventsMtransformMatransformMbindMwith\_configMwith\_listenersMwith\_alistenersMwith\_typesMwith\_retryMmapMwith\_fallbacksMas\_tool