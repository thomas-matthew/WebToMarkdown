[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 230
* 1.8k](https://github.com/langchain-ai/docs "Go to repository")

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
    - Constants

      [Constants](https://reference.langchain.com/python/langgraph/constants/)



      Table of contents
      * [constants](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants)

        + [TAG\_HIDDEN](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.TAG_HIDDEN)
        + [TAG\_NOSTREAM](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.TAG_NOSTREAM)
        + [START](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.START)
        + [END](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.END)
    - [Channels](https://reference.langchain.com/python/langgraph/channels/)
  + Prebuilt




    Prebuilt
    - [Agents](https://reference.langchain.com/python/langgraph/agents/)
    - [Supervisor](https://reference.langchain.com/python/langgraph/supervisor/)
    - [Swarm](https://reference.langchain.com/python/langgraph/swarm/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [constants](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants)

  + [TAG\_HIDDEN](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.TAG_HIDDEN)
  + [TAG\_NOSTREAM](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.TAG_NOSTREAM)
  + [START](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.START)
  + [END](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.END)

# Constants

## constants [¶](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants "Copy anchor link to this section for reference")

### TAG\_HIDDEN `module-attribute` [¶](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.TAG_HIDDEN "Copy anchor link to this section for reference")

```
TAG_HIDDEN = intern('langsmith:hidden')
```

Tag to hide a node/edge from certain tracing/streaming environments.

### TAG\_NOSTREAM `module-attribute` [¶](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.TAG_NOSTREAM "Copy anchor link to this section for reference")

```
TAG_NOSTREAM = intern('nostream')
```

Tag to disable streaming for a chat model.

### START `module-attribute` [¶](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.START "Copy anchor link to this section for reference")

```
START = intern('__start__')
```

The first (maybe virtual) node in graph-style Pregel.

### END `module-attribute` [¶](https://reference.langchain.com/python/langgraph/constants/#langgraph.constants.END "Copy anchor link to this section for reference")

```
END = intern('__end__')
```

The last (maybe virtual) node in graph-style Pregel.

Back to top