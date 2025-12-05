[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 131
* 1.2k](https://github.com/langchain-ai/docs "Go to repository")

* [Get started](https://reference.langchain.com/python/)
* [LangChain](https://reference.langchain.com/python/langchain/)
* [LangGraph](https://reference.langchain.com/python/langgraph/)

  LangGraph
  + langgraph




    langgraph
    - [Graphs](https://reference.langchain.com/python/langgraph/graphs/)
    - [Functional API](https://reference.langchain.com/python/langgraph/func/)
    - [Pregel](https://reference.langchain.com/python/langgraph/pregel/)
    - [Checkpointing](https://reference.langchain.com/python/langgraph/checkpoints/)
    - [Storage](https://reference.langchain.com/python/langgraph/store/)
    - [Caching](https://reference.langchain.com/python/langgraph/cache/)
    - [Types](https://reference.langchain.com/python/langgraph/types/)
    - [Runtime](https://reference.langchain.com/python/langgraph/runtime/)
    - [Config](https://reference.langchain.com/python/langgraph/config/)
    - [Errors](https://reference.langchain.com/python/langgraph/errors/)
    - [Constants](https://reference.langchain.com/python/langgraph/constants/)
    - [Channels](https://reference.langchain.com/python/langgraph/channels/)
  + Prebuilt




    Prebuilt
    - [Agents](https://reference.langchain.com/python/langgraph/agents/)
    - Supervisor

      [Supervisor](https://reference.langchain.com/python/langgraph/supervisor/)



      Table of contents
      * [supervisor](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.supervisor)

        + [create\_supervisor](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.supervisor.create_supervisor)
      * [handoff](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff)

        + [create\_handoff\_tool](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff.create_handoff_tool)
        + [create\_forward\_message\_tool](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff.create_forward_message_tool)
    - [Swarm](https://reference.langchain.com/python/langgraph/swarm/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [supervisor](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.supervisor)

  + [create\_supervisor](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.supervisor.create_supervisor)
* [handoff](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff)

  + [create\_handoff\_tool](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff.create_handoff_tool)
  + [create\_forward\_message\_tool](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff.create_forward_message_tool " create_forward_message_tool")

# `langgraph-supervisor`[¶](https://reference.langchain.com/python/langgraph/supervisor/#langgraph-supervisor "Copy anchor link to this section for reference")

[![PyPI - Version](https://img.shields.io/pypi/v/langgraph-supervisor?label=%20)](https://pypi.org/project/langgraph-supervisor/#history)
[![PyPI - License](https://img.shields.io/pypi/l/langgraph-supervisor)](https://opensource.org/licenses/MIT)
[![PyPI - Downloads](https://img.shields.io/pepy/dt/langgraph-supervisor)](https://pypistats.org/packages/langgraph-supervisor)

Note

We now recommend using the **supervisor pattern directly via tools** rather than this library for most use cases. The tool-calling approach gives you more control over context engineering and is the recommended pattern in the [LangChain multi-agent guide](https://docs.langchain.com/oss/python/langchain/multi-agent).

See our [supervisor tutorial](https://docs.langchain.com/oss/python/langchain/supervisor) for a step-by-step guide.

We're making this library compatible with LangChain 1.0 to help users upgrade their existing code. If you find this library solves a problem that can't be easily addressed with the manual supervisor pattern, we'd love to hear about your use case!

See the [project description](https://pypi.org/project/langgraph-supervisor/) for more details.

## supervisor [¶](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.supervisor "Copy anchor link to this section for reference")

| FUNCTION | DESCRIPTION |
| --- | --- |
| `create_supervisor` | Create a multi-agent supervisor. |

### create\_supervisor [¶](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.supervisor.create_supervisor "Copy anchor link to this section for reference")

```
create_supervisor(
    agents: list[Pregel],
    *,
    model: LanguageModelLike,
    tools: list[BaseTool | Callable] | ToolNode | None = None,
    prompt: Prompt | None = None,
    response_format: StructuredResponseSchema
    | tuple[str, StructuredResponseSchema]
    | None = None,
    pre_model_hook: RunnableLike | None = None,
    post_model_hook: RunnableLike | None = None,
    parallel_tool_calls: bool = False,
    state_schema: StateSchemaType | None = None,
    context_schema: Type[Any] | None = None,
    output_mode: OutputMode = "last_message",
    add_handoff_messages: bool = True,
    handoff_tool_prefix: str | None = None,
    add_handoff_back_messages: bool | None = None,
    supervisor_name: str = "supervisor",
    include_agent_name: AgentNameMode | None = None,
    **deprecated_kwargs: Unpack[DeprecatedKwargs],
) -> StateGraph
```

Create a multi-agent supervisor.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `agents` | List of agents to manage.  An agent can be a LangGraph [`CompiledStateGraph`](https://reference.langchain.com/python/langgraph/graphs/#langgraph.graph.state.CompiledStateGraph "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">CompiledStateGraph</span>"), a functional API workflow, or any other [Pregel](https://reference.langchain.com/python/langgraph/pregel/#langgraph.pregel.Pregel "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">Pregel</span>") object.  **TYPE:** `list[Pregel]` |
| `model` | Language model to use for the supervisor  **TYPE:** `LanguageModelLike` |
| `tools` | Tools to use for the supervisor  **TYPE:** `list[BaseTool | Callable] | ToolNode | None`  **DEFAULT:** `None` |
| `prompt` | Optional prompt to use for the supervisor.  Can be one of:   * `str`: This is converted to a `SystemMessage` and added to the beginning of the list of messages in `state["messages"]`. * `SystemMessage`: this is added to the beginning of the list of messages in `state["messages"]`. * `Callable`: This function should take in full graph state and the output is then passed to the language model. * `Runnable`: This runnable should take in full graph state and the output is then passed to the language model.  **TYPE:** `Prompt | None`  **DEFAULT:** `None` |
| `response_format` | An optional schema for the final supervisor output.  If provided, output will be formatted to match the given schema and returned in the `'structured_response'` state key.  If not provided, `structured_response` will not be present in the output state.  Can be passed in as:   * An OpenAI function/tool schema, * A JSON Schema, * A TypedDict class, * A Pydantic class. * A tuple `(prompt, schema)`, where schema is one of the above.   The prompt will be used together with the model that is being used to generate the structured response.   Important  `response_format` requires the model to support `.with_structured_output`  Note  `response_format` requires `structured_response` key in your state schema.  You can use the prebuilt `langgraph.prebuilt.chat_agent_executor.AgentStateWithStructuredResponse`.  **TYPE:** `StructuredResponseSchema | tuple[str, StructuredResponseSchema] | None`  **DEFAULT:** `None` |
| `pre_model_hook` | An optional node to add before the LLM node in the supervisor agent (i.e., the node that calls the LLM).  Useful for managing long message histories (e.g., message trimming, summarization, etc.).  Pre-model hook must be a callable or a runnable that takes in current graph state and returns a state update in the form of  ``` # At least one of `messages` or `llm_input_messages` MUST be provided {     # If provided, will UPDATE the `messages` in the state     "messages": [RemoveMessage(id=REMOVE_ALL_MESSAGES), ...],     # If provided, will be used as the input to the LLM,     # and will NOT UPDATE `messages` in the state     "llm_input_messages": [...],     # Any other state keys that need to be propagated     ... } ```  Important  At least one of `messages` or `llm_input_messages` MUST be provided and will be used as an input to the `agent` node. The rest of the keys will be added to the graph state.  Warning  If you are returning `messages` in the pre-model hook, you should OVERWRITE the `messages` key by doing the following:  ``` {     "messages": [RemoveMessage(id=REMOVE_ALL_MESSAGES), *new_messages]     ... } ```  **TYPE:** `RunnableLike | None`  **DEFAULT:** `None` |
| `post_model_hook` | An optional node to add after the LLM node in the supervisor agent (i.e., the node that calls the LLM).  Useful for implementing human-in-the-loop, guardrails, validation, or other post-processing.  Post-model hook must be a callable or a runnable that takes in current graph state and returns a state update.  **TYPE:** `RunnableLike | None`  **DEFAULT:** `None` |
| `parallel_tool_calls` | Whether to allow the supervisor LLM to call tools in parallel (only OpenAI and Anthropic).  Use this to control whether the supervisor can hand off to multiple agents at once.  If `True`, will enable parallel tool calls.  If `False`, will disable parallel tool calls.  Important  This is currently supported only by OpenAI and Anthropic models. To control parallel tool calling for other providers, add explicit instructions for tool use to the system prompt.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `state_schema` | State schema to use for the supervisor graph.  **TYPE:** `StateSchemaType | None`  **DEFAULT:** `None` |
| `context_schema` | Specifies the schema for the context object that will be passed to the workflow.  **TYPE:** `Type[Any] | None`  **DEFAULT:** `None` |
| `output_mode` | Mode for adding managed agents' outputs to the message history in the multi-agent workflow.  Can be one of:   * `full_history`: Add the entire agent message history * `last_message`: Add only the last message  **TYPE:** `OutputMode`  **DEFAULT:** `'last_message'` |
| `add_handoff_messages` | Whether to add a pair of `(AIMessage, ToolMessage)` to the message history when a handoff occurs.  **TYPE:** `bool`  **DEFAULT:** `True` |
| `handoff_tool_prefix` | Optional prefix for the handoff tools (e.g., `'delegate_to_'` or `'transfer_to_'`)  If provided, the handoff tools will be named `handoff_tool_prefix_agent_name`.  If not provided, the handoff tools will be named `transfer_to_agent_name`.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `add_handoff_back_messages` | Whether to add a pair of `(AIMessage, ToolMessage)` to the message history when returning control to the supervisor to indicate that a handoff has occurred.  **TYPE:** `bool | None`  **DEFAULT:** `None` |
| `supervisor_name` | Name of the supervisor node.  **TYPE:** `str`  **DEFAULT:** `'supervisor'` |
| `include_agent_name` | Use to specify how to expose the agent name to the underlying supervisor LLM.   * `None`: Relies on the LLM provider using the name attribute on the AI message. Currently, only OpenAI supports this. * `'inline'`: Add the agent name directly into the content field of the AI message using XML-style tags.  Example: `"How can I help you"` -> `"<name>agent_name</name><content>How can I help you?</content>"`  **TYPE:** `AgentNameMode | None`  **DEFAULT:** `None` |

Example

```
from langchain_openai import ChatOpenAI

from langgraph_supervisor import create_supervisor
from langgraph.prebuilt import create_react_agent

# Create specialized agents

def add(a: float, b: float) -> float:
    '''Add two numbers.'''
    return a + b

def web_search(query: str) -> str:
    '''Search the web for information.'''
    return 'Here are the headcounts for each of the FAANG companies in 2024...'

math_agent = create_react_agent(
    model="openai:gpt-4o",
    tools=[add],
    name="math_expert",
)

research_agent = create_react_agent(
    model="openai:gpt-4o",
    tools=[web_search],
    name="research_expert",
)

# Create supervisor workflow
workflow = create_supervisor(
    [research_agent, math_agent],
    model=ChatOpenAI(model="gpt-4o"),
)

# Compile and run
app = workflow.compile()
result = app.invoke({
    "messages": [
        {
            "role": "user",
            "content": "what's the combined headcount of the FAANG companies in 2024?"
        }
    ]
})
```

## handoff [¶](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff "Copy anchor link to this section for reference")

| FUNCTION | DESCRIPTION |
| --- | --- |
| `create_handoff_tool` | Create a tool that can handoff control to the requested agent. |
| `create_forward_message_tool` | Create a tool the supervisor can use to forward a worker message by name. |

### create\_handoff\_tool [¶](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff.create_handoff_tool "Copy anchor link to this section for reference")

```
create_handoff_tool(
    *,
    agent_name: str,
    name: str | None = None,
    description: str | None = None,
    add_handoff_messages: bool = True,
) -> BaseTool
```

Create a tool that can handoff control to the requested agent.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `agent_name` | The name of the agent to handoff control to, i.e. the name of the agent node in the multi-agent graph.  Agent names should be simple, clear and unique, preferably in snake\_case, although you are only limited to the names accepted by LangGraph nodes as well as the tool names accepted by LLM providers (the tool name will look like this: `transfer_to_<agent_name>`).  **TYPE:** `str` |
| `name` | Optional name of the tool to use for the handoff.  If not provided, the tool name will be `transfer_to_<agent_name>`.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `description` | Optional description for the handoff tool.  If not provided, the description will be `Ask agent <agent_name> for help`.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `add_handoff_messages` | Whether to add handoff messages to the message history.  If `False`, the handoff messages will be omitted from the message history.  **TYPE:** `bool`  **DEFAULT:** `True` |

### create\_forward\_message\_tool [¶](https://reference.langchain.com/python/langgraph/supervisor/#langgraph_supervisor.handoff.create_forward_message_tool "Copy anchor link to this section for reference")

```
create_forward_message_tool(supervisor_name: str = 'supervisor') -> BaseTool
```

Create a tool the supervisor can use to forward a worker message by name.

This helps avoid information loss any time the supervisor rewrites a worker query
to the user and also can save some tokens.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `supervisor_name` | The name of the supervisor node (used for namespacing the tool).  **TYPE:** `str`  **DEFAULT:** `'supervisor'` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `BaseTool` | The `'forward_message'` tool.  **TYPE:** `BaseTool` |

Back to top