[![logo](https://reference.langchain.com/python/static/brand/reference-light.svg)
![logo](https://reference.langchain.com/python/static/brand/reference-dark.svg)](https://reference.langchain.com/python/ "LangChain Reference")
LangChain Reference

[langchain-ai/docs

* 131
* 1.2k](https://github.com/langchain-ai/docs "Go to repository")

* [Get started](https://reference.langchain.com/python/)
* [LangChain](https://reference.langchain.com/python/langchain/)

  LangChain
  + [langchain](https://reference.langchain.com/python/langchain/langchain/)

    langchain
    - [Agents](https://reference.langchain.com/python/langchain/agents/)
    - [Middleware](https://reference.langchain.com/python/langchain/middleware/)
    - [Models](https://reference.langchain.com/python/langchain/models/)
    - [Messages](https://reference.langchain.com/python/langchain/messages/)
    - [Tools](https://reference.langchain.com/python/langchain/tools/)
    - [Embeddings](https://reference.langchain.com/python/langchain/embeddings/)
  + [langchain-core](https://reference.langchain.com/python/langchain_core/)

    langchain-core
    - [Caches](https://reference.langchain.com/python/langchain_core/caches/)
    - Callbacks

      [Callbacks](https://reference.langchain.com/python/langchain_core/callbacks/)



      Table of contents
      * [AsyncCallbackHandler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler)

        + [raise\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.raise_error)
        + [run\_inline](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.run_inline)
        + [ignore\_llm](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_llm)
        + [ignore\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_retry)
        + [ignore\_chain](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_chain)
        + [ignore\_agent](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_agent)
        + [ignore\_retriever](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_retriever)
        + [ignore\_chat\_model](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_chat_model)
        + [ignore\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_custom_event)
        + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_start)
        + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chat_model_start)
        + [on\_llm\_new\_token](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_new_token)
        + [on\_llm\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_end)
        + [on\_llm\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_error)
        + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_start)
        + [on\_chain\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_end)
        + [on\_chain\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_error)
        + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_start)
        + [on\_tool\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_end)
        + [on\_tool\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_error)
        + [on\_text](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_text)
        + [on\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retry)
        + [on\_agent\_action](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_agent_action)
        + [on\_agent\_finish](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_agent_finish)
        + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_start)
        + [on\_retriever\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_end)
        + [on\_retriever\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_error)
        + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_custom_event)
      * [BaseCallbackHandler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler)

        + [raise\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.raise_error)
        + [run\_inline](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.run_inline)
        + [ignore\_llm](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_llm)
        + [ignore\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_retry)
        + [ignore\_chain](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_chain)
        + [ignore\_agent](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_agent)
        + [ignore\_retriever](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_retriever)
        + [ignore\_chat\_model](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_chat_model)
        + [ignore\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_custom_event)
        + [on\_text](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_text)
        + [on\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retry)
        + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_custom_event)
        + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_start)
        + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chat_model_start)
        + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_start)
        + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_start)
        + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_start)
        + [on\_retriever\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_error)
        + [on\_retriever\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_end)
        + [on\_tool\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_end)
        + [on\_tool\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_error)
        + [on\_chain\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_end)
        + [on\_chain\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_error)
        + [on\_agent\_action](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_agent_action)
        + [on\_agent\_finish](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_agent_finish)
        + [on\_llm\_new\_token](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_new_token)
        + [on\_llm\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_end)
        + [on\_llm\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_error)
      * [AsyncCallbackManager](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager)

        + [is\_async](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.is_async)
        + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_llm_start)
        + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_chat_model_start)
        + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_chain_start)
        + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_tool_start)
        + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_custom_event)
        + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_retriever_start)
        + [configure](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.configure)
        + [\_\_init\_\_](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.__init__)
        + [copy](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.copy)
        + [merge](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.merge)
        + [add\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_handler)
        + [remove\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_handler)
        + [set\_handlers](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.set_handlers)
        + [set\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.set_handler)
        + [add\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_tags)
        + [remove\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_tags)
        + [add\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_metadata)
        + [remove\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_metadata)
      * [CallbackManager](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager)

        + [is\_async](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.is_async)
        + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_llm_start)
        + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_chat_model_start)
        + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_chain_start)
        + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_tool_start)
        + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_retriever_start)
        + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_custom_event)
        + [configure](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.configure)
        + [\_\_init\_\_](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.__init__)
        + [copy](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.copy)
        + [merge](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.merge)
        + [add\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_handler)
        + [remove\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_handler)
        + [set\_handlers](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.set_handlers)
        + [set\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.set_handler)
        + [add\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_tags)
        + [remove\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_tags)
        + [add\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_metadata)
        + [remove\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_metadata)
      * [UsageMetadataCallbackHandler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler)

        + [raise\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.raise_error)
        + [run\_inline](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.run_inline)
        + [ignore\_llm](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_llm)
        + [ignore\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_retry)
        + [ignore\_chain](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_chain)
        + [ignore\_agent](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_agent)
        + [ignore\_retriever](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_retriever)
        + [ignore\_chat\_model](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_chat_model)
        + [ignore\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_custom_event)
        + [\_\_init\_\_](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.__init__)
        + [on\_llm\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_end)
        + [on\_text](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_text)
        + [on\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retry)
        + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_custom_event)
        + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_start)
        + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chat_model_start)
        + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_start)
        + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_start)
        + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_start)
        + [on\_retriever\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_error)
        + [on\_retriever\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_end)
        + [on\_tool\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_end)
        + [on\_tool\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_error)
        + [on\_chain\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_end)
        + [on\_chain\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_error)
        + [on\_agent\_action](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_agent_action)
        + [on\_agent\_finish](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_agent_finish)
        + [on\_llm\_new\_token](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_new_token)
        + [on\_llm\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_error)
      * [get\_usage\_metadata\_callback](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.get_usage_metadata_callback)
    - [Documents](https://reference.langchain.com/python/langchain_core/documents/)
    - [Document loaders](https://reference.langchain.com/python/langchain_core/document_loaders/)
    - [Embeddings](https://reference.langchain.com/python/langchain_core/embeddings/)
    - [Exceptions](https://reference.langchain.com/python/langchain_core/exceptions/)
    - [Language models](https://reference.langchain.com/python/langchain_core/language_models/)
    - [Serialization](https://reference.langchain.com/python/langchain_core/load/)
    - [Output parsers](https://reference.langchain.com/python/langchain_core/output_parsers/)
    - [Prompts](https://reference.langchain.com/python/langchain_core/prompts/)
    - [Rate limiters](https://reference.langchain.com/python/langchain_core/rate_limiters/)
    - [Retrievers](https://reference.langchain.com/python/langchain_core/retrievers/)
    - [Runnables](https://reference.langchain.com/python/langchain_core/runnables/)
    - [Utilities](https://reference.langchain.com/python/langchain_core/utils/)
    - [Vector stores](https://reference.langchain.com/python/langchain_core/vectorstores/)
  + [langchain-text-splitters](https://reference.langchain.com/python/langchain_text_splitters/)

    langchain-text-splitters
  + [langchain-mcp-adapters](https://reference.langchain.com/python/langchain_mcp_adapters/)

    langchain-mcp-adapters
  + [langchain-tests](https://reference.langchain.com/python/langchain_tests/)

    langchain-tests
    - [Unit tests](https://reference.langchain.com/python/langchain_tests/unit_tests/)
    - [Integration tests](https://reference.langchain.com/python/langchain_tests/integration_tests/)
  + [langchain-classic](https://reference.langchain.com/python/langchain_classic/)

    langchain-classic
    - [Agents](https://reference.langchain.com/python/langchain_classic/agents/)
    - [Callbacks](https://reference.langchain.com/python/langchain_classic/callbacks/)
    - [Chains](https://reference.langchain.com/python/langchain_classic/chains/)
    - [Chat models](https://reference.langchain.com/python/langchain_classic/chat_models/)
    - [Embeddings](https://reference.langchain.com/python/langchain_classic/embeddings/)
    - [Evaluation](https://reference.langchain.com/python/langchain_classic/evaluation/)
    - [Globals](https://reference.langchain.com/python/langchain_classic/globals/)
    - [Hub](https://reference.langchain.com/python/langchain_classic/hub/)
    - [Memory](https://reference.langchain.com/python/langchain_classic/memory/)
    - [Output parsers](https://reference.langchain.com/python/langchain_classic/output_parsers/)
    - [Retrievers](https://reference.langchain.com/python/langchain_classic/retrievers/)
    - [Runnables](https://reference.langchain.com/python/langchain_classic/runnables/)
    - [LangSmith](https://reference.langchain.com/python/langchain_classic/smith/)
    - [Storage](https://reference.langchain.com/python/langchain_classic/storage/)
* [LangGraph](https://reference.langchain.com/python/langgraph/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [AsyncCallbackHandler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler)

  + [raise\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.raise_error)
  + [run\_inline](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.run_inline)
  + [ignore\_llm](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_llm)
  + [ignore\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_retry)
  + [ignore\_chain](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_chain)
  + [ignore\_agent](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_agent)
  + [ignore\_retriever](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_retriever)
  + [ignore\_chat\_model](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_chat_model)
  + [ignore\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_custom_event)
  + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_start)
  + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chat_model_start)
  + [on\_llm\_new\_token](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_new_token)
  + [on\_llm\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_end)
  + [on\_llm\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_error)
  + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_start)
  + [on\_chain\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_end)
  + [on\_chain\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_error)
  + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_start)
  + [on\_tool\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_end)
  + [on\_tool\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_error)
  + [on\_text](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_text)
  + [on\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retry)
  + [on\_agent\_action](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_agent_action)
  + [on\_agent\_finish](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_agent_finish)
  + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_start)
  + [on\_retriever\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_end)
  + [on\_retriever\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_error)
  + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_custom_event)
* [BaseCallbackHandler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler)

  + [raise\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.raise_error)
  + [run\_inline](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.run_inline)
  + [ignore\_llm](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_llm)
  + [ignore\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_retry)
  + [ignore\_chain](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_chain)
  + [ignore\_agent](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_agent)
  + [ignore\_retriever](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_retriever)
  + [ignore\_chat\_model](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_chat_model)
  + [ignore\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_custom_event)
  + [on\_text](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_text)
  + [on\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retry)
  + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_custom_event)
  + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_start)
  + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chat_model_start)
  + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_start)
  + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_start)
  + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_start)
  + [on\_retriever\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_error)
  + [on\_retriever\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_end)
  + [on\_tool\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_end)
  + [on\_tool\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_error)
  + [on\_chain\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_end)
  + [on\_chain\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_error)
  + [on\_agent\_action](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_agent_action)
  + [on\_agent\_finish](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_agent_finish)
  + [on\_llm\_new\_token](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_new_token)
  + [on\_llm\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_end)
  + [on\_llm\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_error)
* [AsyncCallbackManager](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager)

  + [is\_async](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.is_async)
  + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_llm_start)
  + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_chat_model_start)
  + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_chain_start)
  + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_tool_start)
  + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_custom_event)
  + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_retriever_start)
  + [configure](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.configure)
  + [\_\_init\_\_](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.__init__)
  + [copy](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.copy)
  + [merge](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.merge)
  + [add\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_handler)
  + [remove\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_handler)
  + [set\_handlers](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.set_handlers)
  + [set\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.set_handler)
  + [add\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_tags)
  + [remove\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_tags)
  + [add\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_metadata)
  + [remove\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_metadata)
* [CallbackManager](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager)

  + [is\_async](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.is_async)
  + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_llm_start)
  + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_chat_model_start)
  + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_chain_start)
  + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_tool_start)
  + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_retriever_start)
  + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_custom_event)
  + [configure](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.configure)
  + [\_\_init\_\_](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.__init__)
  + [copy](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.copy)
  + [merge](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.merge)
  + [add\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_handler)
  + [remove\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_handler)
  + [set\_handlers](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.set_handlers)
  + [set\_handler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.set_handler)
  + [add\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_tags)
  + [remove\_tags](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_tags)
  + [add\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_metadata)
  + [remove\_metadata](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_metadata)
* [UsageMetadataCallbackHandler](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler)

  + [raise\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.raise_error)
  + [run\_inline](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.run_inline)
  + [ignore\_llm](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_llm)
  + [ignore\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_retry)
  + [ignore\_chain](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_chain)
  + [ignore\_agent](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_agent)
  + [ignore\_retriever](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_retriever)
  + [ignore\_chat\_model](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_chat_model)
  + [ignore\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_custom_event)
  + [\_\_init\_\_](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.__init__)
  + [on\_llm\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_end)
  + [on\_text](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_text)
  + [on\_retry](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retry)
  + [on\_custom\_event](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_custom_event)
  + [on\_llm\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_start)
  + [on\_chat\_model\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chat_model_start)
  + [on\_retriever\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_start)
  + [on\_chain\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_start)
  + [on\_tool\_start](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_start)
  + [on\_retriever\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_error)
  + [on\_retriever\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_end)
  + [on\_tool\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_end)
  + [on\_tool\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_error)
  + [on\_chain\_end](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_end)
  + [on\_chain\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_error)
  + [on\_agent\_action](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_agent_action)
  + [on\_agent\_finish](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_agent_finish)
  + [on\_llm\_new\_token](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_new_token)
  + [on\_llm\_error](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_error)
* [get\_usage\_metadata\_callback](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.get_usage_metadata_callback)

# Callbacks

## AsyncCallbackHandler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler "Copy anchor link to this section for reference")

Bases: `BaseCallbackHandler`

Async callback handler for LangChain.

| METHOD | DESCRIPTION |
| --- | --- |
| `on_llm_start` | Run when the model starts running. |
| `on_chat_model_start` | Run when a chat model starts running. |
| `on_llm_new_token` | Run on new output token. Only available when streaming is enabled. |
| `on_llm_end` | Run when the model ends running. |
| `on_llm_error` | Run when LLM errors. |
| `on_chain_start` | Run when a chain starts running. |
| `on_chain_end` | Run when a chain ends running. |
| `on_chain_error` | Run when chain errors. |
| `on_tool_start` | Run when the tool starts running. |
| `on_tool_end` | Run when the tool ends running. |
| `on_tool_error` | Run when tool errors. |
| `on_text` | Run on an arbitrary text. |
| `on_retry` | Run on a retry event. |
| `on_agent_action` | Run on agent action. |
| `on_agent_finish` | Run on the agent end. |
| `on_retriever_start` | Run on the retriever start. |
| `on_retriever_end` | Run on the retriever end. |
| `on_retriever_error` | Run on retriever error. |
| `on_custom_event` | Override to define a handler for custom events. |

### raise\_error `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.raise_error "Copy anchor link to this section for reference")

```
raise_error: bool = False
```

Whether to raise an error if an exception occurs.

### run\_inline `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.run_inline "Copy anchor link to this section for reference")

```
run_inline: bool = False
```

Whether to run the callback inline.

### ignore\_llm `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_llm "Copy anchor link to this section for reference")

```
ignore_llm: bool
```

Whether to ignore LLM callbacks.

### ignore\_retry `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_retry "Copy anchor link to this section for reference")

```
ignore_retry: bool
```

Whether to ignore retry callbacks.

### ignore\_chain `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_chain "Copy anchor link to this section for reference")

```
ignore_chain: bool
```

Whether to ignore chain callbacks.

### ignore\_agent `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_agent "Copy anchor link to this section for reference")

```
ignore_agent: bool
```

Whether to ignore agent callbacks.

### ignore\_retriever `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_retriever "Copy anchor link to this section for reference")

```
ignore_retriever: bool
```

Whether to ignore retriever callbacks.

### ignore\_chat\_model `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_chat_model "Copy anchor link to this section for reference")

```
ignore_chat_model: bool
```

Whether to ignore chat model callbacks.

### ignore\_custom\_event `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.ignore_custom_event "Copy anchor link to this section for reference")

```
ignore_custom_event: bool
```

Ignore custom event.

### on\_llm\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_start "Copy anchor link to this section for reference")

```
on_llm_start(
    serialized: dict[str, Any],
    prompts: list[str],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> None
```

Run when the model starts running.

Warning

This method is called for non-chat models (regular LLMs). If you're
implementing a handler for a chat model, you should use
`on_chat_model_start` instead.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `prompts` | The prompts.  **TYPE:** `list[str]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chat\_model\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chat_model_start "Copy anchor link to this section for reference")

```
on_chat_model_start(
    serialized: dict[str, Any],
    messages: list[list[BaseMessage]],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when a chat model starts running.

Warning

This method is called for chat models. If you're implementing a handler for
a non-chat model, you should use `on_llm_start` instead.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chat model.  **TYPE:** `dict[str, Any]` |
| `messages` | The messages.  **TYPE:** `list[list[BaseMessage]]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_new\_token `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_new_token "Copy anchor link to this section for reference")

```
on_llm_new_token(
    token: str,
    *,
    chunk: GenerationChunk | ChatGenerationChunk | None = None,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run on new output token. Only available when streaming is enabled.

For both chat models and non-chat models (legacy LLMs).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `token` | The new token.  **TYPE:** `str` |
| `chunk` | The new generated chunk, containing content and other information.  **TYPE:** `GenerationChunk | ChatGenerationChunk | None`  **DEFAULT:** `None` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_end `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_end "Copy anchor link to this section for reference")

```
on_llm_end(
    response: LLMResult,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run when the model ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `response` | The response which was generated.  **TYPE:** `LLMResult` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_error `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_llm_error "Copy anchor link to this section for reference")

```
on_llm_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run when LLM errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments. - response (LLMResult): The response which was generated before the error occurred.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_start "Copy anchor link to this section for reference")

```
on_chain_start(
    serialized: dict[str, Any],
    inputs: dict[str, Any],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> None
```

Run when a chain starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any]` |
| `inputs` | The inputs.  **TYPE:** `dict[str, Any]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_end `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_end "Copy anchor link to this section for reference")

```
on_chain_end(
    outputs: dict[str, Any],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run when a chain ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `outputs` | The outputs of the chain.  **TYPE:** `dict[str, Any]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_error `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_chain_error "Copy anchor link to this section for reference")

```
on_chain_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run when chain errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_start "Copy anchor link to this section for reference")

```
on_tool_start(
    serialized: dict[str, Any],
    input_str: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    inputs: dict[str, Any] | None = None,
    **kwargs: Any,
) -> None
```

Run when the tool starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized tool.  **TYPE:** `dict[str, Any]` |
| `input_str` | The input string.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `inputs` | The inputs.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_end `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_end "Copy anchor link to this section for reference")

```
on_tool_end(
    output: Any,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run when the tool ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `output` | The output of the tool.  **TYPE:** `Any` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_error `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_tool_error "Copy anchor link to this section for reference")

```
on_tool_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run when tool errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_text `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_text "Copy anchor link to this section for reference")

```
on_text(
    text: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run on an arbitrary text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The text.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retry `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retry "Copy anchor link to this section for reference")

```
on_retry(
    retry_state: RetryCallState,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on a retry event.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_state` | The retry state.  **TYPE:** `RetryCallState` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_agent\_action `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_agent_action "Copy anchor link to this section for reference")

```
on_agent_action(
    action: AgentAction,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run on agent action.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `action` | The agent action.  **TYPE:** `AgentAction` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_agent\_finish `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_agent_finish "Copy anchor link to this section for reference")

```
on_agent_finish(
    finish: AgentFinish,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run on the agent end.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `finish` | The agent finish.  **TYPE:** `AgentFinish` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_start "Copy anchor link to this section for reference")

```
on_retriever_start(
    serialized: dict[str, Any],
    query: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> None
```

Run on the retriever start.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized retriever.  **TYPE:** `dict[str, Any]` |
| `query` | The query.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_end `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_end "Copy anchor link to this section for reference")

```
on_retriever_end(
    documents: Sequence[Document],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run on the retriever end.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | The documents retrieved.  **TYPE:** `Sequence[Document]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_error `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_retriever_error "Copy anchor link to this section for reference")

```
on_retriever_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    **kwargs: Any,
) -> None
```

Run on retriever error.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_custom\_event `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.AsyncCallbackHandler.on_custom_event "Copy anchor link to this section for reference")

```
on_custom_event(
    name: str,
    data: Any,
    *,
    run_id: UUID,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> None
```

Override to define a handler for custom events.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `name` | The name of the custom event.  **TYPE:** `str` |
| `data` | The data for the custom event. Format will match the format specified by the user.  **TYPE:** `Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID` |
| `tags` | The tags associated with the custom event (includes inherited tags).  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata associated with the custom event (includes inherited metadata).  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

## BaseCallbackHandler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler "Copy anchor link to this section for reference")

Bases: `LLMManagerMixin`, `ChainManagerMixin`, `ToolManagerMixin`, `RetrieverManagerMixin`, `CallbackManagerMixin`, `RunManagerMixin`

Base callback handler for LangChain.

| METHOD | DESCRIPTION |
| --- | --- |
| `on_text` | Run on an arbitrary text. |
| `on_retry` | Run on a retry event. |
| `on_custom_event` | Override to define a handler for a custom event. |
| `on_llm_start` | Run when LLM starts running. |
| `on_chat_model_start` | Run when a chat model starts running. |
| `on_retriever_start` | Run when the Retriever starts running. |
| `on_chain_start` | Run when a chain starts running. |
| `on_tool_start` | Run when the tool starts running. |
| `on_retriever_error` | Run when Retriever errors. |
| `on_retriever_end` | Run when Retriever ends running. |
| `on_tool_end` | Run when the tool ends running. |
| `on_tool_error` | Run when tool errors. |
| `on_chain_end` | Run when chain ends running. |
| `on_chain_error` | Run when chain errors. |
| `on_agent_action` | Run on agent action. |
| `on_agent_finish` | Run on the agent end. |
| `on_llm_new_token` | Run on new output token. Only available when streaming is enabled. |
| `on_llm_end` | Run when LLM ends running. |
| `on_llm_error` | Run when LLM errors. |

### raise\_error `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.raise_error "Copy anchor link to this section for reference")

```
raise_error: bool = False
```

Whether to raise an error if an exception occurs.

### run\_inline `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.run_inline "Copy anchor link to this section for reference")

```
run_inline: bool = False
```

Whether to run the callback inline.

### ignore\_llm `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_llm "Copy anchor link to this section for reference")

```
ignore_llm: bool
```

Whether to ignore LLM callbacks.

### ignore\_retry `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_retry "Copy anchor link to this section for reference")

```
ignore_retry: bool
```

Whether to ignore retry callbacks.

### ignore\_chain `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_chain "Copy anchor link to this section for reference")

```
ignore_chain: bool
```

Whether to ignore chain callbacks.

### ignore\_agent `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_agent "Copy anchor link to this section for reference")

```
ignore_agent: bool
```

Whether to ignore agent callbacks.

### ignore\_retriever `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_retriever "Copy anchor link to this section for reference")

```
ignore_retriever: bool
```

Whether to ignore retriever callbacks.

### ignore\_chat\_model `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_chat_model "Copy anchor link to this section for reference")

```
ignore_chat_model: bool
```

Whether to ignore chat model callbacks.

### ignore\_custom\_event `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.ignore_custom_event "Copy anchor link to this section for reference")

```
ignore_custom_event: bool
```

Ignore custom event.

### on\_text [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_text "Copy anchor link to this section for reference")

```
on_text(
    text: str, *, run_id: UUID, parent_run_id: UUID | None = None, **kwargs: Any
) -> Any
```

Run on an arbitrary text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The text.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retry [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retry "Copy anchor link to this section for reference")

```
on_retry(
    retry_state: RetryCallState,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on a retry event.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_state` | The retry state.  **TYPE:** `RetryCallState` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_custom\_event [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_custom_event "Copy anchor link to this section for reference")

```
on_custom_event(
    name: str,
    data: Any,
    *,
    run_id: UUID,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Override to define a handler for a custom event.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `name` | The name of the custom event.  **TYPE:** `str` |
| `data` | The data for the custom event. Format will match the format specified by the user.  **TYPE:** `Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID` |
| `tags` | The tags associated with the custom event (includes inherited tags).  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata associated with the custom event (includes inherited metadata).  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

### on\_llm\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_start "Copy anchor link to this section for reference")

```
on_llm_start(
    serialized: dict[str, Any],
    prompts: list[str],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when LLM starts running.

Warning

This method is called for non-chat models (regular LLMs). If you're
implementing a handler for a chat model, you should use
`on_chat_model_start` instead.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `prompts` | The prompts.  **TYPE:** `list[str]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chat\_model\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chat_model_start "Copy anchor link to this section for reference")

```
on_chat_model_start(
    serialized: dict[str, Any],
    messages: list[list[BaseMessage]],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when a chat model starts running.

Warning

This method is called for chat models. If you're implementing a handler for
a non-chat model, you should use `on_llm_start` instead.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chat model.  **TYPE:** `dict[str, Any]` |
| `messages` | The messages.  **TYPE:** `list[list[BaseMessage]]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_start "Copy anchor link to this section for reference")

```
on_retriever_start(
    serialized: dict[str, Any],
    query: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when the Retriever starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized Retriever.  **TYPE:** `dict[str, Any]` |
| `query` | The query.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_start "Copy anchor link to this section for reference")

```
on_chain_start(
    serialized: dict[str, Any],
    inputs: dict[str, Any],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when a chain starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any]` |
| `inputs` | The inputs.  **TYPE:** `dict[str, Any]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_start "Copy anchor link to this section for reference")

```
on_tool_start(
    serialized: dict[str, Any],
    input_str: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    inputs: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when the tool starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any]` |
| `input_str` | The input string.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `inputs` | The inputs.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_error "Copy anchor link to this section for reference")

```
on_retriever_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when Retriever errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_retriever_end "Copy anchor link to this section for reference")

```
on_retriever_end(
    documents: Sequence[Document],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when Retriever ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | The documents retrieved.  **TYPE:** `Sequence[Document]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_end "Copy anchor link to this section for reference")

```
on_tool_end(
    output: Any, *, run_id: UUID, parent_run_id: UUID | None = None, **kwargs: Any
) -> Any
```

Run when the tool ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `output` | The output of the tool.  **TYPE:** `Any` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_tool_error "Copy anchor link to this section for reference")

```
on_tool_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when tool errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_end "Copy anchor link to this section for reference")

```
on_chain_end(
    outputs: dict[str, Any],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when chain ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `outputs` | The outputs of the chain.  **TYPE:** `dict[str, Any]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_chain_error "Copy anchor link to this section for reference")

```
on_chain_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when chain errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_agent\_action [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_agent_action "Copy anchor link to this section for reference")

```
on_agent_action(
    action: AgentAction,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on agent action.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `action` | The agent action.  **TYPE:** `AgentAction` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_agent\_finish [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_agent_finish "Copy anchor link to this section for reference")

```
on_agent_finish(
    finish: AgentFinish,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on the agent end.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `finish` | The agent finish.  **TYPE:** `AgentFinish` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_new\_token [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_new_token "Copy anchor link to this section for reference")

```
on_llm_new_token(
    token: str,
    *,
    chunk: GenerationChunk | ChatGenerationChunk | None = None,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on new output token. Only available when streaming is enabled.

For both chat models and non-chat models (legacy LLMs).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `token` | The new token.  **TYPE:** `str` |
| `chunk` | The new generated chunk, containing content and other information.  **TYPE:** `GenerationChunk | ChatGenerationChunk | None`  **DEFAULT:** `None` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_end "Copy anchor link to this section for reference")

```
on_llm_end(
    response: LLMResult,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when LLM ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `response` | The response which was generated.  **TYPE:** `LLMResult` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.base.BaseCallbackHandler.on_llm_error "Copy anchor link to this section for reference")

```
on_llm_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when LLM errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

## AsyncCallbackManager [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager "Copy anchor link to this section for reference")

Bases: `BaseCallbackManager`

Async callback manager that handles callbacks from LangChain.

| METHOD | DESCRIPTION |
| --- | --- |
| `on_llm_start` | Run when LLM starts running. |
| `on_chat_model_start` | Async run when LLM starts running. |
| `on_chain_start` | Async run when chain starts running. |
| `on_tool_start` | Run when the tool starts running. |
| `on_custom_event` | Dispatch an adhoc event to the handlers (async version). |
| `on_retriever_start` | Run when the retriever starts running. |
| `configure` | Configure the async callback manager. |
| `__init__` | Initialize callback manager. |
| `copy` | Return a copy of the callback manager. |
| `merge` | Merge the callback manager with another callback manager. |
| `add_handler` | Add a handler to the callback manager. |
| `remove_handler` | Remove a handler from the callback manager. |
| `set_handlers` | Set handlers as the only handlers on the callback manager. |
| `set_handler` | Set handler as the only handler on the callback manager. |
| `add_tags` | Add tags to the callback manager. |
| `remove_tags` | Remove tags from the callback manager. |
| `add_metadata` | Add metadata to the callback manager. |
| `remove_metadata` | Remove metadata from the callback manager. |

### is\_async `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.is_async "Copy anchor link to this section for reference")

```
is_async: bool
```

Return whether the handler is async.

### on\_llm\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_llm_start "Copy anchor link to this section for reference")

```
on_llm_start(
    serialized: dict[str, Any],
    prompts: list[str],
    run_id: UUID | None = None,
    **kwargs: Any,
) -> list[AsyncCallbackManagerForLLMRun]
```

Run when LLM starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `prompts` | The list of prompts.  **TYPE:** `list[str]` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[AsyncCallbackManagerForLLMRun]` | The list of async callback managers, one for each LLM Run corresponding to |
| `list[AsyncCallbackManagerForLLMRun]` | each prompt. |

### on\_chat\_model\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_chat_model_start "Copy anchor link to this section for reference")

```
on_chat_model_start(
    serialized: dict[str, Any],
    messages: list[list[BaseMessage]],
    run_id: UUID | None = None,
    **kwargs: Any,
) -> list[AsyncCallbackManagerForLLMRun]
```

Async run when LLM starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `messages` | The list of messages.  **TYPE:** `list[list[BaseMessage]]` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[AsyncCallbackManagerForLLMRun]` | The list of async callback managers, one for each LLM Run corresponding to |
| `list[AsyncCallbackManagerForLLMRun]` | each inner message list. |

### on\_chain\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_chain_start "Copy anchor link to this section for reference")

```
on_chain_start(
    serialized: dict[str, Any] | None,
    inputs: dict[str, Any] | Any,
    run_id: UUID | None = None,
    **kwargs: Any,
) -> AsyncCallbackManagerForChainRun
```

Async run when chain starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any] | None` |
| `inputs` | The inputs to the chain.  **TYPE:** `dict[str, Any] | Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncCallbackManagerForChainRun` | The async callback manager for the chain run. |

### on\_tool\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_tool_start "Copy anchor link to this section for reference")

```
on_tool_start(
    serialized: dict[str, Any] | None,
    input_str: str,
    run_id: UUID | None = None,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> AsyncCallbackManagerForToolRun
```

Run when the tool starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized tool.  **TYPE:** `dict[str, Any] | None` |
| `input_str` | The input to the tool.  **TYPE:** `str` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `parent_run_id` | The ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncCallbackManagerForToolRun` | The async callback manager for the tool run. |

### on\_custom\_event `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_custom_event "Copy anchor link to this section for reference")

```
on_custom_event(
    name: str, data: Any, run_id: UUID | None = None, **kwargs: Any
) -> None
```

Dispatch an adhoc event to the handlers (async version).

This event should NOT be used in any internal LangChain code. The event
is meant specifically for users of the library to dispatch custom
events that are tailored to their application.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `name` | The name of the adhoc event.  **TYPE:** `str` |
| `data` | The data for the adhoc event.  **TYPE:** `Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If additional keyword arguments are passed. |

### on\_retriever\_start `async` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.on_retriever_start "Copy anchor link to this section for reference")

```
on_retriever_start(
    serialized: dict[str, Any] | None,
    query: str,
    run_id: UUID | None = None,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> AsyncCallbackManagerForRetrieverRun
```

Run when the retriever starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized retriever.  **TYPE:** `dict[str, Any] | None` |
| `query` | The query.  **TYPE:** `str` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `parent_run_id` | The ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncCallbackManagerForRetrieverRun` | The async callback manager for the retriever run. |

### configure `classmethod` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.configure "Copy anchor link to this section for reference")

```
configure(
    inheritable_callbacks: Callbacks = None,
    local_callbacks: Callbacks = None,
    verbose: bool = False,
    inheritable_tags: list[str] | None = None,
    local_tags: list[str] | None = None,
    inheritable_metadata: dict[str, Any] | None = None,
    local_metadata: dict[str, Any] | None = None,
) -> AsyncCallbackManager
```

Configure the async callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inheritable_callbacks` | The inheritable callbacks.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `local_callbacks` | The local callbacks.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `verbose` | Whether to enable verbose mode.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `inheritable_tags` | The inheritable tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `local_tags` | The local tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `inheritable_metadata` | The inheritable metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `local_metadata` | The local metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncCallbackManager` | The configured async callback manager. |

### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.__init__ "Copy anchor link to this section for reference")

```
__init__(
    handlers: list[BaseCallbackHandler],
    inheritable_handlers: list[BaseCallbackHandler] | None = None,
    parent_run_id: UUID | None = None,
    *,
    tags: list[str] | None = None,
    inheritable_tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    inheritable_metadata: dict[str, Any] | None = None,
) -> None
```

Initialize callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handlers` | The handlers.  **TYPE:** `list[BaseCallbackHandler]` |
| `inheritable_handlers` | The inheritable handlers.  **TYPE:** `list[BaseCallbackHandler] | None`  **DEFAULT:** `None` |
| `parent_run_id` | The parent run ID.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `inheritable_tags` | The inheritable tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `inheritable_metadata` | The inheritable metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

### copy [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the callback manager.

### merge [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.merge "Copy anchor link to this section for reference")

```
merge(other: BaseCallbackManager) -> Self
```

Merge the callback manager with another callback manager.

May be overwritten in subclasses. Primarily used internally
within merge\_configs.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | The merged callback manager of the same type as the current object. |

Example: Merging two callback managers.

```
```python
from langchain_core.callbacks.manager import (
    CallbackManager,
    trace_as_chain_group,
)
from langchain_core.callbacks.stdout import StdOutCallbackHandler

manager = CallbackManager(handlers=[StdOutCallbackHandler()], tags=["tag2"])
with trace_as_chain_group("My Group Name", tags=["tag1"]) as group_manager:
    merged_manager = group_manager.merge(manager)
    print(merged_manager.handlers)
    # [
    #    <langchain_core.callbacks.stdout.StdOutCallbackHandler object at ...>,
    #    <langchain_core.callbacks.streaming_stdout.StreamingStdOutCallbackHandler object at ...>,
    # ]

    print(merged_manager.tags)
    #    ['tag2', 'tag1']
```
```

### add\_handler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_handler "Copy anchor link to this section for reference")

```
add_handler(handler: BaseCallbackHandler, inherit: bool = True) -> None
```

Add a handler to the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handler` | The handler to add.  **TYPE:** `BaseCallbackHandler` |
| `inherit` | Whether to inherit the handler.  **TYPE:** `bool`  **DEFAULT:** `True` |

### remove\_handler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_handler "Copy anchor link to this section for reference")

```
remove_handler(handler: BaseCallbackHandler) -> None
```

Remove a handler from the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handler` | The handler to remove.  **TYPE:** `BaseCallbackHandler` |

### set\_handlers [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.set_handlers "Copy anchor link to this section for reference")

```
set_handlers(handlers: list[BaseCallbackHandler], inherit: bool = True) -> None
```

Set handlers as the only handlers on the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handlers` | The handlers to set.  **TYPE:** `list[BaseCallbackHandler]` |
| `inherit` | Whether to inherit the handlers.  **TYPE:** `bool`  **DEFAULT:** `True` |

### set\_handler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.set_handler "Copy anchor link to this section for reference")

```
set_handler(handler: BaseCallbackHandler, inherit: bool = True) -> None
```

Set handler as the only handler on the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handler` | The handler to set.  **TYPE:** `BaseCallbackHandler` |
| `inherit` | Whether to inherit the handler.  **TYPE:** `bool`  **DEFAULT:** `True` |

### add\_tags [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_tags "Copy anchor link to this section for reference")

```
add_tags(tags: list[str], inherit: bool = True) -> None
```

Add tags to the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `tags` | The tags to add.  **TYPE:** `list[str]` |
| `inherit` | Whether to inherit the tags.  **TYPE:** `bool`  **DEFAULT:** `True` |

### remove\_tags [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_tags "Copy anchor link to this section for reference")

```
remove_tags(tags: list[str]) -> None
```

Remove tags from the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `tags` | The tags to remove.  **TYPE:** `list[str]` |

### add\_metadata [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.add_metadata "Copy anchor link to this section for reference")

```
add_metadata(metadata: dict[str, Any], inherit: bool = True) -> None
```

Add metadata to the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `metadata` | The metadata to add.  **TYPE:** `dict[str, Any]` |
| `inherit` | Whether to inherit the metadata.  **TYPE:** `bool`  **DEFAULT:** `True` |

### remove\_metadata [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.AsyncCallbackManager.remove_metadata "Copy anchor link to this section for reference")

```
remove_metadata(keys: list[str]) -> None
```

Remove metadata from the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | The keys to remove.  **TYPE:** `list[str]` |

## CallbackManager [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager "Copy anchor link to this section for reference")

Bases: `BaseCallbackManager`

Callback manager for LangChain.

| METHOD | DESCRIPTION |
| --- | --- |
| `on_llm_start` | Run when LLM starts running. |
| `on_chat_model_start` | Run when chat model starts running. |
| `on_chain_start` | Run when chain starts running. |
| `on_tool_start` | Run when tool starts running. |
| `on_retriever_start` | Run when the retriever starts running. |
| `on_custom_event` | Dispatch an adhoc event to the handlers (async version). |
| `configure` | Configure the callback manager. |
| `__init__` | Initialize callback manager. |
| `copy` | Return a copy of the callback manager. |
| `merge` | Merge the callback manager with another callback manager. |
| `add_handler` | Add a handler to the callback manager. |
| `remove_handler` | Remove a handler from the callback manager. |
| `set_handlers` | Set handlers as the only handlers on the callback manager. |
| `set_handler` | Set handler as the only handler on the callback manager. |
| `add_tags` | Add tags to the callback manager. |
| `remove_tags` | Remove tags from the callback manager. |
| `add_metadata` | Add metadata to the callback manager. |
| `remove_metadata` | Remove metadata from the callback manager. |

### is\_async `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.is_async "Copy anchor link to this section for reference")

```
is_async: bool
```

Whether the callback manager is async.

### on\_llm\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_llm_start "Copy anchor link to this section for reference")

```
on_llm_start(
    serialized: dict[str, Any],
    prompts: list[str],
    run_id: UUID | None = None,
    **kwargs: Any,
) -> list[CallbackManagerForLLMRun]
```

Run when LLM starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `prompts` | The list of prompts.  **TYPE:** `list[str]` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[CallbackManagerForLLMRun]` | A callback manager for each prompt as an LLM run. |

### on\_chat\_model\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_chat_model_start "Copy anchor link to this section for reference")

```
on_chat_model_start(
    serialized: dict[str, Any],
    messages: list[list[BaseMessage]],
    run_id: UUID | None = None,
    **kwargs: Any,
) -> list[CallbackManagerForLLMRun]
```

Run when chat model starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `messages` | The list of messages.  **TYPE:** `list[list[BaseMessage]]` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[CallbackManagerForLLMRun]` | A callback manager for each list of messages as an LLM run. |

### on\_chain\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_chain_start "Copy anchor link to this section for reference")

```
on_chain_start(
    serialized: dict[str, Any] | None,
    inputs: dict[str, Any] | Any,
    run_id: UUID | None = None,
    **kwargs: Any,
) -> CallbackManagerForChainRun
```

Run when chain starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any] | None` |
| `inputs` | The inputs to the chain.  **TYPE:** `dict[str, Any] | Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CallbackManagerForChainRun` | The callback manager for the chain run. |

### on\_tool\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_tool_start "Copy anchor link to this section for reference")

```
on_tool_start(
    serialized: dict[str, Any] | None,
    input_str: str,
    run_id: UUID | None = None,
    parent_run_id: UUID | None = None,
    inputs: dict[str, Any] | None = None,
    **kwargs: Any,
) -> CallbackManagerForToolRun
```

Run when tool starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | Serialized representation of the tool.  **TYPE:** `dict[str, Any] | None` |
| `input_str` | The input to the tool as a string. Non-string inputs are cast to strings.  **TYPE:** `str` |
| `run_id` | ID for the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `parent_run_id` | The ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `inputs` | The original input to the tool if provided. Recommended for usage instead of input\_str when the original input is needed. If provided, the inputs are expected to be formatted as a dict. The keys will correspond to the named-arguments in the tool.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | The keyword arguments to pass to the event handler  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CallbackManagerForToolRun` | The callback manager for the tool run. |

### on\_retriever\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_retriever_start "Copy anchor link to this section for reference")

```
on_retriever_start(
    serialized: dict[str, Any] | None,
    query: str,
    run_id: UUID | None = None,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> CallbackManagerForRetrieverRun
```

Run when the retriever starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized retriever.  **TYPE:** `dict[str, Any] | None` |
| `query` | The query.  **TYPE:** `str` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `parent_run_id` | The ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CallbackManagerForRetrieverRun` | The callback manager for the retriever run. |

### on\_custom\_event [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.on_custom_event "Copy anchor link to this section for reference")

```
on_custom_event(
    name: str, data: Any, run_id: UUID | None = None, **kwargs: Any
) -> None
```

Dispatch an adhoc event to the handlers (async version).

This event should NOT be used in any internal LangChain code. The event
is meant specifically for users of the library to dispatch custom
events that are tailored to their application.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `name` | The name of the adhoc event.  **TYPE:** `str` |
| `data` | The data for the adhoc event.  **TYPE:** `Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |

| RAISES | DESCRIPTION |
| --- | --- |
| `ValueError` | If additional keyword arguments are passed. |

### configure `classmethod` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.configure "Copy anchor link to this section for reference")

```
configure(
    inheritable_callbacks: Callbacks = None,
    local_callbacks: Callbacks = None,
    verbose: bool = False,
    inheritable_tags: list[str] | None = None,
    local_tags: list[str] | None = None,
    inheritable_metadata: dict[str, Any] | None = None,
    local_metadata: dict[str, Any] | None = None,
) -> CallbackManager
```

Configure the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `inheritable_callbacks` | The inheritable callbacks.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `local_callbacks` | The local callbacks.  **TYPE:** `Callbacks`  **DEFAULT:** `None` |
| `verbose` | Whether to enable verbose mode.  **TYPE:** `bool`  **DEFAULT:** `False` |
| `inheritable_tags` | The inheritable tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `local_tags` | The local tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `inheritable_metadata` | The inheritable metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `local_metadata` | The local metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CallbackManager` | The configured callback manager. |

### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.__init__ "Copy anchor link to this section for reference")

```
__init__(
    handlers: list[BaseCallbackHandler],
    inheritable_handlers: list[BaseCallbackHandler] | None = None,
    parent_run_id: UUID | None = None,
    *,
    tags: list[str] | None = None,
    inheritable_tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    inheritable_metadata: dict[str, Any] | None = None,
) -> None
```

Initialize callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handlers` | The handlers.  **TYPE:** `list[BaseCallbackHandler]` |
| `inheritable_handlers` | The inheritable handlers.  **TYPE:** `list[BaseCallbackHandler] | None`  **DEFAULT:** `None` |
| `parent_run_id` | The parent run ID.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `inheritable_tags` | The inheritable tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `inheritable_metadata` | The inheritable metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

### copy [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.copy "Copy anchor link to this section for reference")

```
copy() -> Self
```

Return a copy of the callback manager.

### merge [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.merge "Copy anchor link to this section for reference")

```
merge(other: BaseCallbackManager) -> Self
```

Merge the callback manager with another callback manager.

May be overwritten in subclasses. Primarily used internally
within merge\_configs.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Self` | The merged callback manager of the same type as the current object. |

Example: Merging two callback managers.

```
```python
from langchain_core.callbacks.manager import (
    CallbackManager,
    trace_as_chain_group,
)
from langchain_core.callbacks.stdout import StdOutCallbackHandler

manager = CallbackManager(handlers=[StdOutCallbackHandler()], tags=["tag2"])
with trace_as_chain_group("My Group Name", tags=["tag1"]) as group_manager:
    merged_manager = group_manager.merge(manager)
    print(merged_manager.handlers)
    # [
    #    <langchain_core.callbacks.stdout.StdOutCallbackHandler object at ...>,
    #    <langchain_core.callbacks.streaming_stdout.StreamingStdOutCallbackHandler object at ...>,
    # ]

    print(merged_manager.tags)
    #    ['tag2', 'tag1']
```
```

### add\_handler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_handler "Copy anchor link to this section for reference")

```
add_handler(handler: BaseCallbackHandler, inherit: bool = True) -> None
```

Add a handler to the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handler` | The handler to add.  **TYPE:** `BaseCallbackHandler` |
| `inherit` | Whether to inherit the handler.  **TYPE:** `bool`  **DEFAULT:** `True` |

### remove\_handler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_handler "Copy anchor link to this section for reference")

```
remove_handler(handler: BaseCallbackHandler) -> None
```

Remove a handler from the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handler` | The handler to remove.  **TYPE:** `BaseCallbackHandler` |

### set\_handlers [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.set_handlers "Copy anchor link to this section for reference")

```
set_handlers(handlers: list[BaseCallbackHandler], inherit: bool = True) -> None
```

Set handlers as the only handlers on the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handlers` | The handlers to set.  **TYPE:** `list[BaseCallbackHandler]` |
| `inherit` | Whether to inherit the handlers.  **TYPE:** `bool`  **DEFAULT:** `True` |

### set\_handler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.set_handler "Copy anchor link to this section for reference")

```
set_handler(handler: BaseCallbackHandler, inherit: bool = True) -> None
```

Set handler as the only handler on the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `handler` | The handler to set.  **TYPE:** `BaseCallbackHandler` |
| `inherit` | Whether to inherit the handler.  **TYPE:** `bool`  **DEFAULT:** `True` |

### add\_tags [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_tags "Copy anchor link to this section for reference")

```
add_tags(tags: list[str], inherit: bool = True) -> None
```

Add tags to the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `tags` | The tags to add.  **TYPE:** `list[str]` |
| `inherit` | Whether to inherit the tags.  **TYPE:** `bool`  **DEFAULT:** `True` |

### remove\_tags [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_tags "Copy anchor link to this section for reference")

```
remove_tags(tags: list[str]) -> None
```

Remove tags from the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `tags` | The tags to remove.  **TYPE:** `list[str]` |

### add\_metadata [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.add_metadata "Copy anchor link to this section for reference")

```
add_metadata(metadata: dict[str, Any], inherit: bool = True) -> None
```

Add metadata to the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `metadata` | The metadata to add.  **TYPE:** `dict[str, Any]` |
| `inherit` | Whether to inherit the metadata.  **TYPE:** `bool`  **DEFAULT:** `True` |

### remove\_metadata [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.manager.CallbackManager.remove_metadata "Copy anchor link to this section for reference")

```
remove_metadata(keys: list[str]) -> None
```

Remove metadata from the callback manager.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `keys` | The keys to remove.  **TYPE:** `list[str]` |

## UsageMetadataCallbackHandler [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler "Copy anchor link to this section for reference")

Bases: `BaseCallbackHandler`

Callback Handler that tracks AIMessage.usage\_metadata.

Example

```
from langchain.chat_models import init_chat_model
from langchain_core.callbacks import UsageMetadataCallbackHandler

llm_1 = init_chat_model(model="openai:gpt-4o-mini")
llm_2 = init_chat_model(model="anthropic:claude-3-5-haiku-20241022")

callback = UsageMetadataCallbackHandler()
result_1 = llm_1.invoke("Hello", config={"callbacks": [callback]})
result_2 = llm_2.invoke("Hello", config={"callbacks": [callback]})
callback.usage_metadata
```

```
{'gpt-4o-mini-2024-07-18': {'input_tokens': 8,
  'output_tokens': 10,
  'total_tokens': 18,
  'input_token_details': {'audio': 0, 'cache_read': 0},
  'output_token_details': {'audio': 0, 'reasoning': 0}},
 'claude-3-5-haiku-20241022': {'input_tokens': 8,
  'output_tokens': 21,
  'total_tokens': 29,
  'input_token_details': {'cache_read': 0, 'cache_creation': 0}}}
```

Added in `langchain-core` 0.3.49

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Initialize the UsageMetadataCallbackHandler. |
| `on_llm_end` | Collect token usage. |
| `on_text` | Run on an arbitrary text. |
| `on_retry` | Run on a retry event. |
| `on_custom_event` | Override to define a handler for a custom event. |
| `on_llm_start` | Run when LLM starts running. |
| `on_chat_model_start` | Run when a chat model starts running. |
| `on_retriever_start` | Run when the Retriever starts running. |
| `on_chain_start` | Run when a chain starts running. |
| `on_tool_start` | Run when the tool starts running. |
| `on_retriever_error` | Run when Retriever errors. |
| `on_retriever_end` | Run when Retriever ends running. |
| `on_tool_end` | Run when the tool ends running. |
| `on_tool_error` | Run when tool errors. |
| `on_chain_end` | Run when chain ends running. |
| `on_chain_error` | Run when chain errors. |
| `on_agent_action` | Run on agent action. |
| `on_agent_finish` | Run on the agent end. |
| `on_llm_new_token` | Run on new output token. Only available when streaming is enabled. |
| `on_llm_error` | Run when LLM errors. |

### raise\_error `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.raise_error "Copy anchor link to this section for reference")

```
raise_error: bool = False
```

Whether to raise an error if an exception occurs.

### run\_inline `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.run_inline "Copy anchor link to this section for reference")

```
run_inline: bool = False
```

Whether to run the callback inline.

### ignore\_llm `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_llm "Copy anchor link to this section for reference")

```
ignore_llm: bool
```

Whether to ignore LLM callbacks.

### ignore\_retry `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_retry "Copy anchor link to this section for reference")

```
ignore_retry: bool
```

Whether to ignore retry callbacks.

### ignore\_chain `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_chain "Copy anchor link to this section for reference")

```
ignore_chain: bool
```

Whether to ignore chain callbacks.

### ignore\_agent `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_agent "Copy anchor link to this section for reference")

```
ignore_agent: bool
```

Whether to ignore agent callbacks.

### ignore\_retriever `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_retriever "Copy anchor link to this section for reference")

```
ignore_retriever: bool
```

Whether to ignore retriever callbacks.

### ignore\_chat\_model `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_chat_model "Copy anchor link to this section for reference")

```
ignore_chat_model: bool
```

Whether to ignore chat model callbacks.

### ignore\_custom\_event `property` [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.ignore_custom_event "Copy anchor link to this section for reference")

```
ignore_custom_event: bool
```

Ignore custom event.

### \_\_init\_\_ [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.__init__ "Copy anchor link to this section for reference")

```
__init__() -> None
```

Initialize the UsageMetadataCallbackHandler.

### on\_llm\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_end "Copy anchor link to this section for reference")

```
on_llm_end(response: LLMResult, **kwargs: Any) -> None
```

Collect token usage.

### on\_text [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_text "Copy anchor link to this section for reference")

```
on_text(
    text: str, *, run_id: UUID, parent_run_id: UUID | None = None, **kwargs: Any
) -> Any
```

Run on an arbitrary text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | The text.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retry [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retry "Copy anchor link to this section for reference")

```
on_retry(
    retry_state: RetryCallState,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on a retry event.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `retry_state` | The retry state.  **TYPE:** `RetryCallState` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_custom\_event [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_custom_event "Copy anchor link to this section for reference")

```
on_custom_event(
    name: str,
    data: Any,
    *,
    run_id: UUID,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Override to define a handler for a custom event.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `name` | The name of the custom event.  **TYPE:** `str` |
| `data` | The data for the custom event. Format will match the format specified by the user.  **TYPE:** `Any` |
| `run_id` | The ID of the run.  **TYPE:** `UUID` |
| `tags` | The tags associated with the custom event (includes inherited tags).  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata associated with the custom event (includes inherited metadata).  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |

### on\_llm\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_start "Copy anchor link to this section for reference")

```
on_llm_start(
    serialized: dict[str, Any],
    prompts: list[str],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when LLM starts running.

Warning

This method is called for non-chat models (regular LLMs). If you're
implementing a handler for a chat model, you should use
`on_chat_model_start` instead.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized LLM.  **TYPE:** `dict[str, Any]` |
| `prompts` | The prompts.  **TYPE:** `list[str]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chat\_model\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chat_model_start "Copy anchor link to this section for reference")

```
on_chat_model_start(
    serialized: dict[str, Any],
    messages: list[list[BaseMessage]],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when a chat model starts running.

Warning

This method is called for chat models. If you're implementing a handler for
a non-chat model, you should use `on_llm_start` instead.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chat model.  **TYPE:** `dict[str, Any]` |
| `messages` | The messages.  **TYPE:** `list[list[BaseMessage]]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_start "Copy anchor link to this section for reference")

```
on_retriever_start(
    serialized: dict[str, Any],
    query: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when the Retriever starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized Retriever.  **TYPE:** `dict[str, Any]` |
| `query` | The query.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_start "Copy anchor link to this section for reference")

```
on_chain_start(
    serialized: dict[str, Any],
    inputs: dict[str, Any],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when a chain starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any]` |
| `inputs` | The inputs.  **TYPE:** `dict[str, Any]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_start [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_start "Copy anchor link to this section for reference")

```
on_tool_start(
    serialized: dict[str, Any],
    input_str: str,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    tags: list[str] | None = None,
    metadata: dict[str, Any] | None = None,
    inputs: dict[str, Any] | None = None,
    **kwargs: Any,
) -> Any
```

Run when the tool starts running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serialized` | The serialized chain.  **TYPE:** `dict[str, Any]` |
| `input_str` | The input string.  **TYPE:** `str` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `tags` | The tags.  **TYPE:** `list[str] | None`  **DEFAULT:** `None` |
| `metadata` | The metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `inputs` | The inputs.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_error "Copy anchor link to this section for reference")

```
on_retriever_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when Retriever errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_retriever\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_retriever_end "Copy anchor link to this section for reference")

```
on_retriever_end(
    documents: Sequence[Document],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when Retriever ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `documents` | The documents retrieved.  **TYPE:** `Sequence[Document]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_end "Copy anchor link to this section for reference")

```
on_tool_end(
    output: Any, *, run_id: UUID, parent_run_id: UUID | None = None, **kwargs: Any
) -> Any
```

Run when the tool ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `output` | The output of the tool.  **TYPE:** `Any` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_tool\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_tool_error "Copy anchor link to this section for reference")

```
on_tool_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when tool errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_end [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_end "Copy anchor link to this section for reference")

```
on_chain_end(
    outputs: dict[str, Any],
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when chain ends running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `outputs` | The outputs of the chain.  **TYPE:** `dict[str, Any]` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_chain\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_chain_error "Copy anchor link to this section for reference")

```
on_chain_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when chain errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_agent\_action [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_agent_action "Copy anchor link to this section for reference")

```
on_agent_action(
    action: AgentAction,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on agent action.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `action` | The agent action.  **TYPE:** `AgentAction` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_agent\_finish [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_agent_finish "Copy anchor link to this section for reference")

```
on_agent_finish(
    finish: AgentFinish,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on the agent end.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `finish` | The agent finish.  **TYPE:** `AgentFinish` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_new\_token [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_new_token "Copy anchor link to this section for reference")

```
on_llm_new_token(
    token: str,
    *,
    chunk: GenerationChunk | ChatGenerationChunk | None = None,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run on new output token. Only available when streaming is enabled.

For both chat models and non-chat models (legacy LLMs).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `token` | The new token.  **TYPE:** `str` |
| `chunk` | The new generated chunk, containing content and other information.  **TYPE:** `GenerationChunk | ChatGenerationChunk | None`  **DEFAULT:** `None` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

### on\_llm\_error [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.UsageMetadataCallbackHandler.on_llm_error "Copy anchor link to this section for reference")

```
on_llm_error(
    error: BaseException,
    *,
    run_id: UUID,
    parent_run_id: UUID | None = None,
    **kwargs: Any,
) -> Any
```

Run when LLM errors.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `error` | The error that occurred.  **TYPE:** `BaseException` |
| `run_id` | The run ID. This is the ID of the current run.  **TYPE:** `UUID` |
| `parent_run_id` | The parent run ID. This is the ID of the parent run.  **TYPE:** `UUID | None`  **DEFAULT:** `None` |
| `**kwargs` | Additional keyword arguments.  **TYPE:** `Any`  **DEFAULT:** `{}` |

## get\_usage\_metadata\_callback [¶](https://reference.langchain.com/python/langchain_core/callbacks/#langchain_core.callbacks.usage.get_usage_metadata_callback "Copy anchor link to this section for reference")

```
get_usage_metadata_callback(
    name: str = "usage_metadata_callback",
) -> Generator[UsageMetadataCallbackHandler, None, None]
```

Get usage metadata callback.

Get context manager for tracking usage metadata across chat model calls using
`AIMessage.usage_metadata`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `name` | The name of the context variable.  **TYPE:** `str`  **DEFAULT:** `'usage_metadata_callback'` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `UsageMetadataCallbackHandler` | The usage metadata callback. |

Example

```
from langchain.chat_models import init_chat_model
from langchain_core.callbacks import get_usage_metadata_callback

llm_1 = init_chat_model(model="openai:gpt-4o-mini")
llm_2 = init_chat_model(model="anthropic:claude-3-5-haiku-20241022")

with get_usage_metadata_callback() as cb:
    llm_1.invoke("Hello")
    llm_2.invoke("Hello")
    print(cb.usage_metadata)
```

```
{
    "gpt-4o-mini-2024-07-18": {
        "input_tokens": 8,
        "output_tokens": 10,
        "total_tokens": 18,
        "input_token_details": {"audio": 0, "cache_read": 0},
        "output_token_details": {"audio": 0, "reasoning": 0},
    },
    "claude-3-5-haiku-20241022": {
        "input_tokens": 8,
        "output_tokens": 21,
        "total_tokens": 29,
        "input_token_details": {"cache_read": 0, "cache_creation": 0},
    },
}
```

Added in `langchain-core` 0.3.49

Back to top