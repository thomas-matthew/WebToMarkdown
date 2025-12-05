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
    - Storage

      [Storage](https://reference.langchain.com/python/langgraph/store/)



      Table of contents
      * [base](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base)

        + [NamespacePath](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NamespacePath)
        + [NamespaceMatchType](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NamespaceMatchType)
        + [Embeddings](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings)

          - [embed\_documents](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.embed_documents)
          - [embed\_query](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.embed_query)
          - [aembed\_documents](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.aembed_documents)
          - [aembed\_query](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.aembed_query)
        + [NotProvided](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NotProvided)
        + [Item](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Item)
        + [SearchItem](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchItem)

          - [\_\_init\_\_](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchItem.__init__)
        + [GetOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp)

          - [namespace](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.namespace)
          - [key](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.key)
          - [refresh\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.refresh_ttl)
        + [SearchOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp)

          - [namespace\_prefix](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.namespace_prefix)
          - [filter](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.filter)
          - [limit](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.limit)
          - [offset](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.offset)
          - [query](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.query)
          - [refresh\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.refresh_ttl)
        + [MatchCondition](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition)

          - [match\_type](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition.match_type)
          - [path](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition.path)
        + [ListNamespacesOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp)

          - [match\_conditions](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.match_conditions)
          - [max\_depth](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.max_depth)
          - [limit](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.limit)
          - [offset](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.offset)
        + [PutOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp)

          - [namespace](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.namespace)
          - [key](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.key)
          - [value](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.value)
          - [index](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.index)
          - [ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.ttl)
        + [InvalidNamespaceError](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.InvalidNamespaceError)
        + [TTLConfig](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig)

          - [refresh\_on\_read](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.refresh_on_read)
          - [default\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.default_ttl)
          - [sweep\_interval\_minutes](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.sweep_interval_minutes)
        + [IndexConfig](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig)

          - [dims](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.dims)
          - [embed](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.embed)
          - [fields](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.fields)
        + [BaseStore](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore)

          - [batch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.batch)
          - [abatch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.abatch)
          - [get](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.get)
          - [search](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.search)
          - [put](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.put)
          - [delete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.delete)
          - [list\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.list_namespaces)
          - [aget](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.aget)
          - [asearch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.asearch)
          - [aput](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.aput)
          - [adelete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.adelete)
          - [alist\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.alist_namespaces)
        + [ensure\_embeddings](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ensure_embeddings)
        + [get\_text\_at\_path](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.get_text_at_path)
        + [tokenize\_path](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.tokenize_path)
      * [postgres](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres)

        + [AsyncPostgresStore](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore)

          - [batch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.batch)
          - [get](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.get)
          - [search](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.search)
          - [put](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.put)
          - [delete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.delete)
          - [list\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.list_namespaces)
          - [aget](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.aget)
          - [asearch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.asearch)
          - [aput](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.aput)
          - [adelete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.adelete)
          - [alist\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.alist_namespaces)
          - [abatch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.abatch)
          - [from\_conn\_string](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.from_conn_string)
          - [setup](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.setup)
          - [sweep\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.sweep_ttl)
          - [start\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.start_ttl_sweeper)
          - [stop\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.stop_ttl_sweeper)
        + [PoolConfig](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig)

          - [min\_size](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.min_size)
          - [max\_size](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.max_size)
          - [kwargs](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.kwargs)
        + [PostgresStore](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore)

          - [get](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.get)
          - [search](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.search)
          - [put](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.put)
          - [delete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.delete)
          - [list\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.list_namespaces)
          - [aget](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.aget)
          - [asearch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.asearch)
          - [aput](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.aput)
          - [adelete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.adelete)
          - [alist\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.alist_namespaces)
          - [from\_conn\_string](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.from_conn_string)
          - [sweep\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.sweep_ttl)
          - [start\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.start_ttl_sweeper)
          - [stop\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.stop_ttl_sweeper)
          - [\_\_del\_\_](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.__del__)
          - [batch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.batch)
          - [abatch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.abatch)
          - [setup](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.setup)
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
    - [Supervisor](https://reference.langchain.com/python/langgraph/supervisor/)
    - [Swarm](https://reference.langchain.com/python/langgraph/swarm/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [base](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base)

  + [NamespacePath](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NamespacePath)
  + [NamespaceMatchType](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NamespaceMatchType)
  + [Embeddings](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings)

    - [embed\_documents](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.embed_documents)
    - [embed\_query](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.embed_query)
    - [aembed\_documents](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.aembed_documents)
    - [aembed\_query](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.aembed_query)
  + [NotProvided](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NotProvided)
  + [Item](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Item)
  + [SearchItem](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchItem)

    - [\_\_init\_\_](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchItem.__init__)
  + [GetOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp)

    - [namespace](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.namespace)
    - [key](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.key)
    - [refresh\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.refresh_ttl)
  + [SearchOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp)

    - [namespace\_prefix](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.namespace_prefix)
    - [filter](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.filter)
    - [limit](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.limit)
    - [offset](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.offset)
    - [query](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.query)
    - [refresh\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.refresh_ttl)
  + [MatchCondition](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition)

    - [match\_type](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition.match_type)
    - [path](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition.path)
  + [ListNamespacesOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp)

    - [match\_conditions](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.match_conditions)
    - [max\_depth](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.max_depth)
    - [limit](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.limit)
    - [offset](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.offset)
  + [PutOp](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp)

    - [namespace](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.namespace)
    - [key](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.key)
    - [value](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.value)
    - [index](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.index)
    - [ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.ttl)
  + [InvalidNamespaceError](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.InvalidNamespaceError)
  + [TTLConfig](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig)

    - [refresh\_on\_read](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.refresh_on_read)
    - [default\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.default_ttl)
    - [sweep\_interval\_minutes](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.sweep_interval_minutes)
  + [IndexConfig](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig)

    - [dims](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.dims)
    - [embed](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.embed)
    - [fields](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.fields)
  + [BaseStore](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore)

    - [batch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.batch)
    - [abatch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.abatch)
    - [get](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.get)
    - [search](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.search)
    - [put](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.put)
    - [delete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.delete)
    - [list\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.list_namespaces)
    - [aget](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.aget)
    - [asearch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.asearch)
    - [aput](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.aput)
    - [adelete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.adelete)
    - [alist\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.alist_namespaces)
  + [ensure\_embeddings](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ensure_embeddings)
  + [get\_text\_at\_path](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.get_text_at_path)
  + [tokenize\_path](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.tokenize_path)
* [postgres](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres)

  + [AsyncPostgresStore](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore)

    - [batch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.batch)
    - [get](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.get)
    - [search](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.search)
    - [put](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.put)
    - [delete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.delete)
    - [list\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.list_namespaces)
    - [aget](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.aget)
    - [asearch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.asearch)
    - [aput](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.aput)
    - [adelete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.adelete)
    - [alist\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.alist_namespaces)
    - [abatch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.abatch)
    - [from\_conn\_string](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.from_conn_string)
    - [setup](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.setup)
    - [sweep\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.sweep_ttl)
    - [start\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.start_ttl_sweeper)
    - [stop\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.stop_ttl_sweeper)
  + [PoolConfig](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig)

    - [min\_size](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.min_size)
    - [max\_size](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.max_size)
    - [kwargs](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.kwargs)
  + [PostgresStore](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore)

    - [get](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.get)
    - [search](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.search)
    - [put](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.put)
    - [delete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.delete)
    - [list\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.list_namespaces)
    - [aget](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.aget)
    - [asearch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.asearch)
    - [aput](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.aput)
    - [adelete](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.adelete)
    - [alist\_namespaces](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.alist_namespaces)
    - [from\_conn\_string](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.from_conn_string)
    - [sweep\_ttl](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.sweep_ttl)
    - [start\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.start_ttl_sweeper)
    - [stop\_ttl\_sweeper](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.stop_ttl_sweeper)
    - [\_\_del\_\_](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.__del__)
    - [batch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.batch)
    - [abatch](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.abatch)
    - [setup](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.setup)

# Storage

## base [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base "Copy anchor link to this section for reference")

Base classes and types for persistent key-value stores.

Stores provide long-term memory that persists across threads and conversations.
Supports hierarchical namespaces, key-value storage, and optional vector search.

Core types

* `BaseStore`: Store interface with sync/async operations
* `Item`: Stored key-value pairs with metadata
* `Op`: Get/Put/Search/List operations

| FUNCTION | DESCRIPTION |
| --- | --- |
| `ensure_embeddings` | Ensure that an embedding function conforms to LangChain's Embeddings interface. |
| `get_text_at_path` | Extract text from an object using a path expression or pre-tokenized path. |
| `tokenize_path` | Tokenize a path into components. |

### NamespacePath `module-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NamespacePath "Copy anchor link to this section for reference")

```
NamespacePath = tuple[str | Literal['*'], ...]
```

A tuple representing a namespace path that can include wildcards.

Examples

```
("users",)  # Exact users namespace
("documents", "*")  # Any sub-namespace under documents
("cache", "*", "v1")  # Any cache category with v1 version
```

### NamespaceMatchType `module-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NamespaceMatchType "Copy anchor link to this section for reference")

```
NamespaceMatchType = Literal['prefix', 'suffix']
```

Specifies how to match namespace paths.

Values

"prefix": Match from the start of the namespace
"suffix": Match from the end of the namespace

### Embeddings [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings "Copy anchor link to this section for reference")

Bases: `ABC`

Interface for embedding models.

This is an interface meant for implementing text embedding models.

Text embedding models are used to map text to a vector (a point in n-dimensional
space).

Texts that are similar will usually be mapped to points that are close to each
other in this space. The exact details of what's considered "similar" and how
"distance" is measured in this space are dependent on the specific embedding model.

This abstraction contains a method for embedding a list of documents and a method
for embedding a query text. The embedding of a query text is expected to be a single
vector, while the embedding of a list of documents is expected to be a list of
vectors.

Usually the query embedding is identical to the document embedding, but the
abstraction allows treating them independently.

In addition to the synchronous methods, this interface also provides asynchronous
versions of the methods.

By default, the asynchronous methods are implemented using the synchronous methods;
however, implementations may choose to override the asynchronous methods with
an async native implementation for performance reasons.

| METHOD | DESCRIPTION |
| --- | --- |
| `embed_documents` | Embed search docs. |
| `embed_query` | Embed query text. |
| `aembed_documents` | Asynchronous Embed search docs. |
| `aembed_query` | Asynchronous Embed query text. |

#### embed\_documents `abstractmethod` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.embed_documents "Copy anchor link to this section for reference")

```
embed_documents(texts: list[str]) -> list[list[float]]
```

Embed search docs.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | List of text to embed.  **TYPE:** `list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[list[float]]` | List of embeddings. |

#### embed\_query `abstractmethod` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.embed_query "Copy anchor link to this section for reference")

```
embed_query(text: str) -> list[float]
```

Embed query text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | Text to embed.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embedding. |

#### aembed\_documents `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.aembed_documents "Copy anchor link to this section for reference")

```
aembed_documents(texts: list[str]) -> list[list[float]]
```

Asynchronous Embed search docs.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `texts` | List of text to embed.  **TYPE:** `list[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[list[float]]` | List of embeddings. |

#### aembed\_query `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Embeddings.aembed_query "Copy anchor link to this section for reference")

```
aembed_query(text: str) -> list[float]
```

Asynchronous Embed query text.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `text` | Text to embed.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[float]` | Embedding. |

### NotProvided [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.NotProvided "Copy anchor link to this section for reference")

Sentinel singleton.

### Item [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.Item "Copy anchor link to this section for reference")

Represents a stored item with metadata.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `value` | The stored data as a dictionary. Keys are filterable.  **TYPE:** `dict[str, Any]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |
| `namespace` | Hierarchical path defining the collection in which this document resides. Represented as a tuple of strings, allowing for nested categorization. For example: `("documents", 'user123')`  **TYPE:** `tuple[str, ...]` |
| `created_at` | Timestamp of item creation.  **TYPE:** `datetime` |
| `updated_at` | Timestamp of last update.  **TYPE:** `datetime` |

### SearchItem [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchItem "Copy anchor link to this section for reference")

Bases: `Item`

Represents an item returned from a search operation with additional metadata.

| METHOD | DESCRIPTION |
| --- | --- |
| `__init__` | Initialize a result item. |

#### \_\_init\_\_ [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchItem.__init__ "Copy anchor link to this section for reference")

```
__init__(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    created_at: datetime,
    updated_at: datetime,
    score: float | None = None,
) -> None
```

Initialize a result item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path to the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |
| `value` | The stored value.  **TYPE:** `dict[str, Any]` |
| `created_at` | When the item was first created.  **TYPE:** `datetime` |
| `updated_at` | When the item was last updated.  **TYPE:** `datetime` |
| `score` | Relevance/similarity score if from a ranked operation.  **TYPE:** `float | None`  **DEFAULT:** `None` |

### GetOp [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp "Copy anchor link to this section for reference")

Bases: `NamedTuple`

Operation to retrieve a specific item by its namespace and key.

This operation allows precise retrieval of stored items using their full path
(namespace) and unique identifier (key) combination.

Examples

Basic item retrieval:

```
GetOp(namespace=("users", "profiles"), key="user123")
GetOp(namespace=("cache", "embeddings"), key="doc456")
```

#### namespace `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.namespace "Copy anchor link to this section for reference")

```
namespace: tuple[str, ...]
```

Hierarchical path that uniquely identifies the item's location.

Examples

```
("users",)  # Root level users namespace
("users", "profiles")  # Profiles within users namespace
```

#### key `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.key "Copy anchor link to this section for reference")

```
key: str
```

Unique identifier for the item within its specific namespace.

Examples

```
"user123"  # For a user profile
"doc456"  # For a document
```

#### refresh\_ttl `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.GetOp.refresh_ttl "Copy anchor link to this section for reference")

```
refresh_ttl: bool = True
```

Whether to refresh TTLs for the returned item.

If no TTL was specified for the original item(s),
or if TTL support is not enabled for your adapter,
this argument is ignored.

### SearchOp [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp "Copy anchor link to this section for reference")

Bases: `NamedTuple`

Operation to search for items within a specified namespace hierarchy.

This operation supports both structured filtering and natural language search
within a given namespace prefix. It provides pagination through limit and offset
parameters.

Note

Natural language search support depends on your store implementation.

Examples

Search with filters and pagination:

```
SearchOp(
    namespace_prefix=("documents",),
    filter={"type": "report", "status": "active"},
    limit=5,
    offset=10
)
```

Natural language search:

```
SearchOp(
    namespace_prefix=("users", "content"),
    query="technical documentation about APIs",
    limit=20
)
```

#### namespace\_prefix `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.namespace_prefix "Copy anchor link to this section for reference")

```
namespace_prefix: tuple[str, ...]
```

Hierarchical path prefix defining the search scope.

Examples

```
()  # Search entire store
("documents",)  # Search all documents
("users", "content")  # Search within user content
```

#### filter `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.filter "Copy anchor link to this section for reference")

```
filter: dict[str, Any] | None = None
```

Key-value pairs for filtering results based on exact matches or comparison operators.

The filter supports both exact matches and operator-based comparisons.

Supported Operators

* `$eq`: Equal to (same as direct value comparison)
* `$ne`: Not equal to
* `$gt`: Greater than
* `$gte`: Greater than or equal to
* `$lt`: Less than
* `$lte`: Less than or equal to
 
Examples

Simple exact match:

```
{"status": "active"}
```

Comparison operators:

```
{"score": {"$gt": 4.99}}  # Score greater than 4.99
```

Multiple conditions:

```
{
    "score": {"$gte": 3.0},
    "color": "red"
}
```

#### limit `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.limit "Copy anchor link to this section for reference")

```
limit: int = 10
```

Maximum number of items to return in the search results.

#### offset `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.offset "Copy anchor link to this section for reference")

```
offset: int = 0
```

Number of matching items to skip for pagination.

#### query `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.query "Copy anchor link to this section for reference")

```
query: str | None = None
```

Natural language search query for semantic search capabilities.

Examples

* "technical documentation about REST APIs"
* "machine learning papers from 2023"

#### refresh\_ttl `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.SearchOp.refresh_ttl "Copy anchor link to this section for reference")

```
refresh_ttl: bool = True
```

Whether to refresh TTLs for the returned item.

If no TTL was specified for the original item(s),
or if TTL support is not enabled for your adapter,
this argument is ignored.

### MatchCondition [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition "Copy anchor link to this section for reference")

Bases: `NamedTuple`

Represents a pattern for matching namespaces in the store.

This class combines a match type (prefix or suffix) with a namespace path
pattern that can include wildcards to flexibly match different namespace
hierarchies.

Examples

Prefix matching:

```
MatchCondition(match_type="prefix", path=("users", "profiles"))
```

Suffix matching with wildcard:

```
MatchCondition(match_type="suffix", path=("cache", "*"))
```

Simple suffix matching:

```
MatchCondition(match_type="suffix", path=("v1",))
```

#### match\_type `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition.match_type "Copy anchor link to this section for reference")

```
match_type: NamespaceMatchType
```

Type of namespace matching to perform.

#### path `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.MatchCondition.path "Copy anchor link to this section for reference")

```
path: NamespacePath
```

Namespace path pattern that can include wildcards.

### ListNamespacesOp [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp "Copy anchor link to this section for reference")

Bases: `NamedTuple`

Operation to list and filter namespaces in the store.

This operation allows exploring the organization of data, finding specific
collections, and navigating the namespace hierarchy.

Examples

List all namespaces under the `"documents"` path:

```
ListNamespacesOp(
    match_conditions=(MatchCondition(match_type="prefix", path=("documents",)),),
    max_depth=2
)
```

List all namespaces that end with `"v1"`:

```
ListNamespacesOp(
    match_conditions=(MatchCondition(match_type="suffix", path=("v1",)),),
    limit=50
)
```

#### match\_conditions `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.match_conditions "Copy anchor link to this section for reference")

```
match_conditions: tuple[MatchCondition, ...] | None = None
```

Optional conditions for filtering namespaces.

Examples

All user namespaces:

```
(MatchCondition(match_type="prefix", path=("users",)),)
```

All namespaces that start with `"docs"` and end with `"draft"`:

```
(
    MatchCondition(match_type="prefix", path=("docs",)),
    MatchCondition(match_type="suffix", path=("draft",))
)
```

#### max\_depth `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.max_depth "Copy anchor link to this section for reference")

```
max_depth: int | None = None
```

Maximum depth of namespace hierarchy to return.

Note

Namespaces deeper than this level will be truncated.

#### limit `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.limit "Copy anchor link to this section for reference")

```
limit: int = 100
```

Maximum number of namespaces to return.

#### offset `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ListNamespacesOp.offset "Copy anchor link to this section for reference")

```
offset: int = 0
```

Number of namespaces to skip for pagination.

### PutOp [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp "Copy anchor link to this section for reference")

Bases: `NamedTuple`

Operation to store, update, or delete an item in the store.

This class represents a single operation to modify the store's contents,
whether adding new items, updating existing ones, or removing them.

#### namespace `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.namespace "Copy anchor link to this section for reference")

```
namespace: tuple[str, ...]
```

Hierarchical path that identifies the location of the item.

The namespace acts as a folder-like structure to organize items.
Each element in the tuple represents one level in the hierarchy.

Examples

Root level documents:

```
("documents",)
```

User-specific documents:

```
("documents", "user123")
```

Nested cache structure:

```
("cache", "embeddings", "v1")
```

#### key `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.key "Copy anchor link to this section for reference")

```
key: str
```

Unique identifier for the item within its namespace.

The key must be unique within the specific namespace to avoid conflicts.
Together with the namespace, it forms a complete path to the item.

Example

If namespace is `("documents", "user123")` and key is `"report1"`,
the full path would effectively be `"documents/user123/report1"`

#### value `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.value "Copy anchor link to this section for reference")

```
value: dict[str, Any] | None
```

The data to store, or `None` to mark the item for deletion.

The value must be a dictionary with string keys and JSON-serializable values.
Setting this to `None` signals that the item should be deleted.

Example

{
"field1": "string value",
"field2": 123,
"nested": {"can": "contain", "any": "serializable data"}
}

#### index `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.index "Copy anchor link to this section for reference")

```
index: Literal[False] | list[str] | None = None
```

Controls how the item's fields are indexed for search operations.

Indexing configuration determines how the item can be found through search

* `None` (default): Uses the store's default indexing configuration (if provided)
* `False`: Disables indexing for this item
* `list[str]`: Specifies which json path fields to index for search

The item remains accessible through direct get() operations regardless of indexing.
When indexed, fields can be searched using natural language queries through
vector similarity search (if supported by the store implementation).

Path Syntax

* Simple field access: `"field"`
* Nested fields: `"parent.child.grandchild"`
* Array indexing:
  + Specific index: `"array[0]"`
  + Last element: `"array[-1]"`
  + All elements (each individually): `"array[*]"`
 
Examples

* `None` - Use store defaults (whole item)
* `list[str]` - List of fields to index

```
[
    "metadata.title",                    # Nested field access
    "context[*].content",                # Index content from all context as separate vectors
    "authors[0].name",                   # First author's name
    "revisions[-1].changes",             # Most recent revision's changes
    "sections[*].paragraphs[*].text",    # All text from all paragraphs in all sections
    "metadata.tags[*]",                  # All tags in metadata
]
```

#### ttl `class-attribute` `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.PutOp.ttl "Copy anchor link to this section for reference")

```
ttl: float | None = None
```

Controls the TTL (time-to-live) for the item in minutes.

If provided, and if the store you are using supports this feature, the item
will expire this many minutes after it was last accessed. The expiration timer
refreshes on both read operations (get/search) and write operations (put/update).
When the TTL expires, the item will be scheduled for deletion on a best-effort basis.
Defaults to `None` (no expiration).

### InvalidNamespaceError [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.InvalidNamespaceError "Copy anchor link to this section for reference")

Bases: `ValueError`

Provided namespace is invalid.

### TTLConfig [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig "Copy anchor link to this section for reference")

Bases: `TypedDict`

Configuration for TTL (time-to-live) behavior in the store.

#### refresh\_on\_read `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.refresh_on_read "Copy anchor link to this section for reference")

```
refresh_on_read: bool
```

Default behavior for refreshing TTLs on read operations (`GET` and `SEARCH`).

If `True`, TTLs will be refreshed on read operations (get/search) by default.
This can be overridden per-operation by explicitly setting `refresh_ttl`.
Defaults to `True` if not configured.

#### default\_ttl `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.default_ttl "Copy anchor link to this section for reference")

```
default_ttl: float | None
```

Default TTL (time-to-live) in minutes for new items.

If provided, new items will expire after this many minutes after their last access.
The expiration timer refreshes on both read and write operations.
Defaults to `None` (no expiration).

#### sweep\_interval\_minutes `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.TTLConfig.sweep_interval_minutes "Copy anchor link to this section for reference")

```
sweep_interval_minutes: int | None
```

Interval in minutes between TTL sweep operations.

If provided, the store will periodically delete expired items based on TTL.
Defaults to None (no sweeping).

### IndexConfig [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig "Copy anchor link to this section for reference")

Bases: `TypedDict`

Configuration for indexing documents for semantic search in the store.

If not provided to the store, the store will not support vector search.
In that case, all `index` arguments to `put()` and `aput()` operations will be ignored.

#### dims `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.dims "Copy anchor link to this section for reference")

```
dims: int
```

Number of dimensions in the embedding vectors.

Common embedding models have the following dimensions

* `openai:text-embedding-3-large`: `3072`
* `openai:text-embedding-3-small`: `1536`
* `openai:text-embedding-ada-002`: `1536`
* `cohere:embed-english-v3.0`: `1024`
* `cohere:embed-english-light-v3.0`: `384`
* `cohere:embed-multilingual-v3.0`: `1024`
* `cohere:embed-multilingual-light-v3.0`: `384`

#### embed `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.embed "Copy anchor link to this section for reference")

```
embed: Embeddings | EmbeddingsFunc | AEmbeddingsFunc | str
```

Optional function to generate embeddings from text.

Can be specified in three ways

1. A LangChain `Embeddings` instance
2. A synchronous embedding function (`EmbeddingsFunc`)
3. An asynchronous embedding function (`AEmbeddingsFunc`)
4. A provider string (e.g., `"openai:text-embedding-3-small"`)
 
Examples

Using LangChain's initialization with `InMemoryStore`:

```
from langchain.embeddings import init_embeddings
from langgraph.store.memory import InMemoryStore

store = InMemoryStore(
    index={
        "dims": 1536,
        "embed": init_embeddings("openai:text-embedding-3-small")
    }
)
```

Using a custom embedding function with `InMemoryStore`:

```
from openai import OpenAI
from langgraph.store.memory import InMemoryStore

client = OpenAI()

def embed_texts(texts: list[str]) -> list[list[float]]:
    response = client.embeddings.create(
        model="text-embedding-3-small",
        input=texts
    )
    return [e.embedding for e in response.data]

store = InMemoryStore(
    index={
        "dims": 1536,
        "embed": embed_texts
    }
)
```

Using an asynchronous embedding function with `InMemoryStore`:

```
from openai import AsyncOpenAI
from langgraph.store.memory import InMemoryStore

client = AsyncOpenAI()

async def aembed_texts(texts: list[str]) -> list[list[float]]:
    response = await client.embeddings.create(
        model="text-embedding-3-small",
        input=texts
    )
    return [e.embedding for e in response.data]

store = InMemoryStore(
    index={
        "dims": 1536,
        "embed": aembed_texts
    }
)
```

#### fields `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.IndexConfig.fields "Copy anchor link to this section for reference")

```
fields: list[str] | None
```

Fields to extract text from for embedding generation.

Controls which parts of stored items are embedded for semantic search. Follows JSON path syntax:

* `["$"]`: Embeds the entire JSON object as one vector (default)
* `["field1", "field2"]`: Embeds specific top-level fields
* `["parent.child"]`: Embeds nested fields using dot notation
* `["array[*].field"]`: Embeds field from each array element separately

Note

You can always override this behavior when storing an item using the
`index` parameter in the `put` or `aput` operations.

 
Examples

```
# Embed entire document (default)
fields=["$"]

# Embed specific fields
fields=["text", "summary"]

# Embed nested fields
fields=["metadata.title", "content.body"]

# Embed from arrays
fields=["messages[*].content"]  # Each message content separately
fields=["context[0].text"]      # First context item's text
```


Note

* Fields missing from a document are skipped
* Array notation creates separate embeddings for each element
* Complex nested paths are supported (e.g., `"a.b[*].c.d"`)

### BaseStore [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore "Copy anchor link to this section for reference")

Bases: `ABC`

Abstract base class for persistent key-value stores.

Stores enable persistence and memory that can be shared across threads,
scoped to user IDs, assistant IDs, or other arbitrary namespaces.
Some implementations may support semantic search capabilities through
an optional `index` configuration.

Note

Semantic search capabilities vary by implementation and are typically
disabled by default. Stores that support this feature can be configured
by providing an `index` configuration at creation time. Without this
configuration, semantic search is disabled and any `index` arguments
to storage operations will have no effect.

Similarly, TTL (time-to-live) support is disabled by default.
Subclasses must explicitly set `supports_ttl = True` to enable this feature.

| METHOD | DESCRIPTION |
| --- | --- |
| `batch` | Execute multiple operations synchronously in a single batch. |
| `abatch` | Execute multiple operations asynchronously in a single batch. |
| `get` | Retrieve a single item. |
| `search` | Search for items within a namespace prefix. |
| `put` | Store or update an item in the store. |
| `delete` | Delete an item. |
| `list_namespaces` | List and filter namespaces in the store. |
| `aget` | Asynchronously retrieve a single item. |
| `asearch` | Asynchronously search for items within a namespace prefix. |
| `aput` | Asynchronously store or update an item in the store. |
| `adelete` | Asynchronously delete an item. |
| `alist_namespaces` | List and filter namespaces in the store asynchronously. |

#### batch `abstractmethod` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.batch "Copy anchor link to this section for reference")

```
batch(ops: Iterable[Op]) -> list[Result]
```

Execute multiple operations synchronously in a single batch.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ops` | An iterable of operations to execute.  **TYPE:** `Iterable[Op]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Result]` | A list of results, where each result corresponds to an operation in the input. |
| `list[Result]` | The order of results matches the order of input operations. |

#### abatch `abstractmethod` `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.abatch "Copy anchor link to this section for reference")

```
abatch(ops: Iterable[Op]) -> list[Result]
```

Execute multiple operations asynchronously in a single batch.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ops` | An iterable of operations to execute.  **TYPE:** `Iterable[Op]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Result]` | A list of results, where each result corresponds to an operation in the input. |
| `list[Result]` | The order of results matches the order of input operations. |

#### get [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.get "Copy anchor link to this section for reference")

```
get(
    namespace: tuple[str, ...], key: str, *, refresh_ttl: bool | None = None
) -> Item | None
```

Retrieve a single item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |
| `refresh_ttl` | Whether to refresh TTLs for the returned item. If `None`, uses the store's default `refresh_ttl` setting. If no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Item | None` | The retrieved item or `None` if not found. |

#### search [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.search "Copy anchor link to this section for reference")

```
search(
    namespace_prefix: tuple[str, ...],
    /,
    *,
    query: str | None = None,
    filter: dict[str, Any] | None = None,
    limit: int = 10,
    offset: int = 0,
    refresh_ttl: bool | None = None,
) -> list[SearchItem]
```

Search for items within a namespace prefix.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace_prefix` | Hierarchical path prefix to search within.  **TYPE:** `tuple[str, ...]` |
| `query` | Optional query for natural language search.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `filter` | Key-value pairs to filter results.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of items to return.  **TYPE:** `int`  **DEFAULT:** `10` |
| `offset` | Number of items to skip before returning results.  **TYPE:** `int`  **DEFAULT:** `0` |
| `refresh_ttl` | Whether to refresh TTLs for the returned items. If no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[SearchItem]` | List of items matching the search criteria. |

Examples

Basic filtering:

```
# Search for documents with specific metadata
results = store.search(
    ("docs",),
    filter={"type": "article", "status": "published"}
)
```

Natural language search (requires vector store implementation):

```
# Initialize store with embedding configuration
store = YourStore( # e.g., InMemoryStore, AsyncPostgresStore
    index={
        "dims": 1536,  # embedding dimensions
        "embed": your_embedding_function,  # function to create embeddings
        "fields": ["text"]  # fields to embed. Defaults to ["$"]
    }
)

# Search for semantically similar documents

results = store.search(
    ("docs",),
    query="machine learning applications in healthcare",
    filter={"type": "research_paper"},
    limit=5
)
```

Note

Natural language search support depends on your store implementation
and requires proper embedding configuration.

#### put [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.put "Copy anchor link to this section for reference")

```
put(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    index: Literal[False] | list[str] | None = None,
    *,
    ttl: float | None | NotProvided = NOT_PROVIDED,
) -> None
```

Store or update an item in the store.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item, represented as a tuple of strings. Example: `("documents", "user123")`  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace. Together with namespace forms the complete path to the item.  **TYPE:** `str` |
| `value` | Dictionary containing the item's data. Must contain string keys and JSON-serializable values.  **TYPE:** `dict[str, Any]` |
| `index` | Controls how the item's fields are indexed for search:   * None (default): Use `fields` you configured when creating the store (if any)   If you do not initialize the store with indexing capabilities,   the `index` parameter will be ignored * False: Disable indexing for this item * `list[str]`: List of field paths to index, supporting:   + Nested fields: `"metadata.title"`   + Array access: `"chapters[*].content"` (each indexed separately)   + Specific indices: `"authors[0].name"`  **TYPE:** `Literal[False] | list[str] | None`  **DEFAULT:** `None` |
| `ttl` | Time to live in minutes. Support for this argument depends on your store adapter. If specified, the item will expire after this many minutes from when it was last accessed. None means no expiration. Expired runs will be deleted opportunistically. By default, the expiration timer refreshes on both read operations (get/search) and write operations (put/update), whenever the item is included in the operation.  **TYPE:** `float | None | NotProvided`  **DEFAULT:** `NOT_PROVIDED` |

Note

Indexing support depends on your store implementation.
If you do not initialize the store with indexing capabilities,
the `index` parameter will be ignored.

Similarly, TTL support depends on the specific store implementation.
Some implementations may not support expiration of items.

 
Examples

Store item. Indexing depends on how you configure the store:

```
store.put(("docs",), "report", {"memory": "Will likes ai"})
```

Do not index item for semantic search. Still accessible through `get()`
and `search()` operations but won't have a vector representation.

```
store.put(("docs",), "report", {"memory": "Will likes ai"}, index=False)
```

Index specific fields for search:

```
store.put(("docs",), "report", {"memory": "Will likes ai"}, index=["memory"])
```

#### delete [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.delete "Copy anchor link to this section for reference")

```
delete(namespace: tuple[str, ...], key: str) -> None
```

Delete an item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

#### list\_namespaces [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.list_namespaces "Copy anchor link to this section for reference")

```
list_namespaces(
    *,
    prefix: NamespacePath | None = None,
    suffix: NamespacePath | None = None,
    max_depth: int | None = None,
    limit: int = 100,
    offset: int = 0,
) -> list[tuple[str, ...]]
```

List and filter namespaces in the store.

Used to explore the organization of data,
find specific collections, or navigate the namespace hierarchy.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prefix` | Filter namespaces that start with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `suffix` | Filter namespaces that end with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `max_depth` | Return namespaces up to this depth in the hierarchy. Namespaces deeper than this level will be truncated.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of namespaces to return.  **TYPE:** `int`  **DEFAULT:** `100` |
| `offset` | Number of namespaces to skip for pagination.  **TYPE:** `int`  **DEFAULT:** `0` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[str, ...]]` | A list of namespace tuples that match the criteria. Each tuple represents a full namespace path up to `max_depth`. |

???+ example "Examples":

```
Setting `max_depth=3`. Given the namespaces:

```python
# Example if you have the following namespaces:
# ("a", "b", "c")
# ("a", "b", "d", "e")
# ("a", "b", "d", "i")
# ("a", "b", "f")
# ("a", "c", "f")
store.list_namespaces(prefix=("a", "b"), max_depth=3)
# [("a", "b", "c"), ("a", "b", "d"), ("a", "b", "f")]
```
```

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.aget "Copy anchor link to this section for reference")

```
aget(
    namespace: tuple[str, ...], key: str, *, refresh_ttl: bool | None = None
) -> Item | None
```

Asynchronously retrieve a single item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Item | None` | The retrieved item or `None` if not found. |

#### asearch `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.asearch "Copy anchor link to this section for reference")

```
asearch(
    namespace_prefix: tuple[str, ...],
    /,
    *,
    query: str | None = None,
    filter: dict[str, Any] | None = None,
    limit: int = 10,
    offset: int = 0,
    refresh_ttl: bool | None = None,
) -> list[SearchItem]
```

Asynchronously search for items within a namespace prefix.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace_prefix` | Hierarchical path prefix to search within.  **TYPE:** `tuple[str, ...]` |
| `query` | Optional query for natural language search.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `filter` | Key-value pairs to filter results.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of items to return.  **TYPE:** `int`  **DEFAULT:** `10` |
| `offset` | Number of items to skip before returning results.  **TYPE:** `int`  **DEFAULT:** `0` |
| `refresh_ttl` | Whether to refresh TTLs for the returned items. If `None`, uses the store's `TTLConfig.refresh_default` setting. If `TTLConfig` is not provided or no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[SearchItem]` | List of items matching the search criteria. |

Examples

Basic filtering:

```
# Search for documents with specific metadata
results = await store.asearch(
    ("docs",),
    filter={"type": "article", "status": "published"}
)
```

Natural language search (requires vector store implementation):

```
# Initialize store with embedding configuration
store = YourStore( # e.g., InMemoryStore, AsyncPostgresStore
    index={
        "dims": 1536,  # embedding dimensions
        "embed": your_embedding_function,  # function to create embeddings
        "fields": ["text"]  # fields to embed
    }
)

# Search for semantically similar documents

results = await store.asearch(
    ("docs",),
    query="machine learning applications in healthcare",
    filter={"type": "research_paper"},
    limit=5
)
```

Note

Natural language search support depends on your store implementation
and requires proper embedding configuration.

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.aput "Copy anchor link to this section for reference")

```
aput(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    index: Literal[False] | list[str] | None = None,
    *,
    ttl: float | None | NotProvided = NOT_PROVIDED,
) -> None
```

Asynchronously store or update an item in the store.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item, represented as a tuple of strings. Example: `("documents", "user123")`  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace. Together with namespace forms the complete path to the item.  **TYPE:** `str` |
| `value` | Dictionary containing the item's data. Must contain string keys and JSON-serializable values.  **TYPE:** `dict[str, Any]` |
| `index` | Controls how the item's fields are indexed for search:   * None (default): Use `fields` you configured when creating the store (if any)   If you do not initialize the store with indexing capabilities,   the `index` parameter will be ignored * False: Disable indexing for this item * `list[str]`: List of field paths to index, supporting:   + Nested fields: `"metadata.title"`   + Array access: `"chapters[*].content"` (each indexed separately)   + Specific indices: `"authors[0].name"`  **TYPE:** `Literal[False] | list[str] | None`  **DEFAULT:** `None` |
| `ttl` | Time to live in minutes. Support for this argument depends on your store adapter. If specified, the item will expire after this many minutes from when it was last accessed. None means no expiration. Expired runs will be deleted opportunistically. By default, the expiration timer refreshes on both read operations (get/search) and write operations (put/update), whenever the item is included in the operation.  **TYPE:** `float | None | NotProvided`  **DEFAULT:** `NOT_PROVIDED` |

Note

Indexing support depends on your store implementation.
If you do not initialize the store with indexing capabilities,
the `index` parameter will be ignored.

Similarly, TTL support depends on the specific store implementation.
Some implementations may not support expiration of items.

 
Examples

Store item. Indexing depends on how you configure the store:

```
await store.aput(("docs",), "report", {"memory": "Will likes ai"})
```

Do not index item for semantic search. Still accessible through `get()`
and `search()` operations but won't have a vector representation.

```
await store.aput(("docs",), "report", {"memory": "Will likes ai"}, index=False)
```

Index specific fields for search (if store configured to index items):

```
await store.aput(
    ("docs",),
    "report",
    {
        "memory": "Will likes ai",
        "context": [{"content": "..."}, {"content": "..."}]
    },
    index=["memory", "context[*].content"]
)
```

#### adelete `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.adelete "Copy anchor link to this section for reference")

```
adelete(namespace: tuple[str, ...], key: str) -> None
```

Asynchronously delete an item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

#### alist\_namespaces `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.BaseStore.alist_namespaces "Copy anchor link to this section for reference")

```
alist_namespaces(
    *,
    prefix: NamespacePath | None = None,
    suffix: NamespacePath | None = None,
    max_depth: int | None = None,
    limit: int = 100,
    offset: int = 0,
) -> list[tuple[str, ...]]
```

List and filter namespaces in the store asynchronously.

Used to explore the organization of data,
find specific collections, or navigate the namespace hierarchy.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prefix` | Filter namespaces that start with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `suffix` | Filter namespaces that end with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `max_depth` | Return namespaces up to this depth in the hierarchy. Namespaces deeper than this level will be truncated to this depth.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of namespaces to return.  **TYPE:** `int`  **DEFAULT:** `100` |
| `offset` | Number of namespaces to skip for pagination.  **TYPE:** `int`  **DEFAULT:** `0` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[str, ...]]` | A list of namespace tuples that match the criteria. Each tuple represents a full namespace path up to `max_depth`. |

Examples

Setting `max_depth=3` with existing namespaces:

```
# Given the following namespaces:
# ("a", "b", "c")
# ("a", "b", "d", "e")
# ("a", "b", "d", "i")
# ("a", "b", "f")
# ("a", "c", "f")

await store.alist_namespaces(prefix=("a", "b"), max_depth=3)
# Returns: [("a", "b", "c"), ("a", "b", "d"), ("a", "b", "f")]
```

### ensure\_embeddings [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.ensure_embeddings "Copy anchor link to this section for reference")

```
ensure_embeddings(
    embed: Embeddings | EmbeddingsFunc | AEmbeddingsFunc | str | None,
) -> Embeddings
```

Ensure that an embedding function conforms to LangChain's Embeddings interface.

This function wraps arbitrary embedding functions to make them compatible with
LangChain's Embeddings interface. It handles both synchronous and asynchronous
functions.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `embed` | Either an existing Embeddings instance, or a function that converts text to embeddings. If the function is async, it will be used for both sync and async operations.  **TYPE:** `Embeddings | EmbeddingsFunc | AEmbeddingsFunc | str | None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Embeddings` | An Embeddings instance that wraps the provided function(s). |

Examples

Wrap a synchronous embedding function:

```
def my_embed_fn(texts):
    return [[0.1, 0.2] for _ in texts]

embeddings = ensure_embeddings(my_embed_fn)
result = embeddings.embed_query("hello")  # Returns [0.1, 0.2]
```

Wrap an asynchronous embedding function:

```
async def my_async_fn(texts):
    return [[0.1, 0.2] for _ in texts]

embeddings = ensure_embeddings(my_async_fn)
result = await embeddings.aembed_query("hello")  # Returns [0.1, 0.2]
```

Initialize embeddings using a provider string:

```
# Requires langchain>=0.3.9 and langgraph-checkpoint>=2.0.11
embeddings = ensure_embeddings("openai:text-embedding-3-small")
result = embeddings.embed_query("hello")
```

### get\_text\_at\_path [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.get_text_at_path "Copy anchor link to this section for reference")

```
get_text_at_path(obj: Any, path: str | list[str]) -> list[str]
```

Extract text from an object using a path expression or pre-tokenized path.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `obj` | The object to extract text from  **TYPE:** `Any` |
| `path` | Either a path string or pre-tokenized path list.  **TYPE:** `str | list[str]` |

Path types handled

* Simple paths: "field1.field2"
* Array indexing: "[0]", "[\*]", "[-1]"
* Wildcards: "\*"
* Multi-field selection: "{field1,field2}"
* Nested paths in multi-field: "{field1,nested.field2}"

### tokenize\_path [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.base.tokenize_path "Copy anchor link to this section for reference")

```
tokenize_path(path: str) -> list[str]
```

Tokenize a path into components.

Types handled

* Simple paths: "field1.field2"
* Array indexing: "[0]", "[\*]", "[-1]"
* Wildcards: "\*"
* Multi-field selection: "{field1,field2}"

## postgres [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres "Copy anchor link to this section for reference")

### AsyncPostgresStore [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore "Copy anchor link to this section for reference")

Bases: `AsyncBatchedBaseStore`, `BasePostgresStore[Conn]`

Asynchronous Postgres-backed store with optional vector search using pgvector.

Examples

Basic setup and usage:

```
from langgraph.store.postgres import AsyncPostgresStore

conn_string = "postgresql://user:pass@localhost:5432/dbname"

async with AsyncPostgresStore.from_conn_string(conn_string) as store:
    await store.setup()  # Run migrations. Done once

    # Store and retrieve data
    await store.aput(("users", "123"), "prefs", {"theme": "dark"})
    item = await store.aget(("users", "123"), "prefs")
```

Vector search using LangChain embeddings:

```
from langchain.embeddings import init_embeddings
from langgraph.store.postgres import AsyncPostgresStore

conn_string = "postgresql://user:pass@localhost:5432/dbname"

async with AsyncPostgresStore.from_conn_string(
    conn_string,
    index={
        "dims": 1536,
        "embed": init_embeddings("openai:text-embedding-3-small"),
        "fields": ["text"]  # specify which fields to embed. Default is the whole serialized value
    }
) as store:
    await store.setup()  # Run migrations. Done once

    # Store documents
    await store.aput(("docs",), "doc1", {"text": "Python tutorial"})
    await store.aput(("docs",), "doc2", {"text": "TypeScript guide"})
    await store.aput(("docs",), "doc3", {"text": "Other guide"}, index=False)  # don't index

    # Search by similarity
    results = await store.asearch(("docs",), query="programming guides", limit=2)
```

Using connection pooling for better performance:

```
from langgraph.store.postgres import AsyncPostgresStore, PoolConfig

conn_string = "postgresql://user:pass@localhost:5432/dbname"

async with AsyncPostgresStore.from_conn_string(
    conn_string,
    pool_config=PoolConfig(
        min_size=5,
        max_size=20
    )
) as store:
    await store.setup()  # Run migrations. Done once
    # Use store with connection pooling...
```

Warning

Make sure to:
1. Call `setup()` before first use to create necessary tables and indexes
2. Have the pgvector extension available to use vector search
3. Use Python 3.10+ for async functionality


Note

Semantic search is disabled by default. You can enable it by providing an `index` configuration
when creating the store. Without this configuration, all `index` arguments passed to
`put` or `aput` will have no effect.


Note

If you provide a TTL configuration, you must explicitly call `start_ttl_sweeper()` to begin
the background task that removes expired items. Call `stop_ttl_sweeper()` to properly
clean up resources when you're done with the store.

| METHOD | DESCRIPTION |
| --- | --- |
| `batch` | Execute multiple operations synchronously in a single batch. |
| `get` | Retrieve a single item. |
| `search` | Search for items within a namespace prefix. |
| `put` | Store or update an item in the store. |
| `delete` | Delete an item. |
| `list_namespaces` | List and filter namespaces in the store. |
| `aget` | Asynchronously retrieve a single item. |
| `asearch` | Asynchronously search for items within a namespace prefix. |
| `aput` | Asynchronously store or update an item in the store. |
| `adelete` | Asynchronously delete an item. |
| `alist_namespaces` | List and filter namespaces in the store asynchronously. |
| `abatch` | Execute multiple operations asynchronously in a single batch. |
| `from_conn_string` | Create a new AsyncPostgresStore instance from a connection string. |
| `setup` | Set up the store database asynchronously. |
| `sweep_ttl` | Delete expired store items based on TTL. |
| `start_ttl_sweeper` | Periodically delete expired store items based on TTL. |
| `stop_ttl_sweeper` | Stop the TTL sweeper task if it's running. |

#### batch [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.batch "Copy anchor link to this section for reference")

```
batch(ops: Iterable[Op]) -> list[Result]
```

Execute multiple operations synchronously in a single batch.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ops` | An iterable of operations to execute.  **TYPE:** `Iterable[Op]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Result]` | A list of results, where each result corresponds to an operation in the input. |
| `list[Result]` | The order of results matches the order of input operations. |

#### get [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.get "Copy anchor link to this section for reference")

```
get(
    namespace: tuple[str, ...], key: str, *, refresh_ttl: bool | None = None
) -> Item | None
```

Retrieve a single item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |
| `refresh_ttl` | Whether to refresh TTLs for the returned item. If `None`, uses the store's default `refresh_ttl` setting. If no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Item | None` | The retrieved item or `None` if not found. |

#### search [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.search "Copy anchor link to this section for reference")

```
search(
    namespace_prefix: tuple[str, ...],
    /,
    *,
    query: str | None = None,
    filter: dict[str, Any] | None = None,
    limit: int = 10,
    offset: int = 0,
    refresh_ttl: bool | None = None,
) -> list[SearchItem]
```

Search for items within a namespace prefix.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace_prefix` | Hierarchical path prefix to search within.  **TYPE:** `tuple[str, ...]` |
| `query` | Optional query for natural language search.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `filter` | Key-value pairs to filter results.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of items to return.  **TYPE:** `int`  **DEFAULT:** `10` |
| `offset` | Number of items to skip before returning results.  **TYPE:** `int`  **DEFAULT:** `0` |
| `refresh_ttl` | Whether to refresh TTLs for the returned items. If no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[SearchItem]` | List of items matching the search criteria. |

Examples

Basic filtering:

```
# Search for documents with specific metadata
results = store.search(
    ("docs",),
    filter={"type": "article", "status": "published"}
)
```

Natural language search (requires vector store implementation):

```
# Initialize store with embedding configuration
store = YourStore( # e.g., InMemoryStore, AsyncPostgresStore
    index={
        "dims": 1536,  # embedding dimensions
        "embed": your_embedding_function,  # function to create embeddings
        "fields": ["text"]  # fields to embed. Defaults to ["$"]
    }
)

# Search for semantically similar documents

results = store.search(
    ("docs",),
    query="machine learning applications in healthcare",
    filter={"type": "research_paper"},
    limit=5
)
```

Note

Natural language search support depends on your store implementation
and requires proper embedding configuration.

#### put [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.put "Copy anchor link to this section for reference")

```
put(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    index: Literal[False] | list[str] | None = None,
    *,
    ttl: float | None | NotProvided = NOT_PROVIDED,
) -> None
```

Store or update an item in the store.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item, represented as a tuple of strings. Example: `("documents", "user123")`  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace. Together with namespace forms the complete path to the item.  **TYPE:** `str` |
| `value` | Dictionary containing the item's data. Must contain string keys and JSON-serializable values.  **TYPE:** `dict[str, Any]` |
| `index` | Controls how the item's fields are indexed for search:   * None (default): Use `fields` you configured when creating the store (if any)   If you do not initialize the store with indexing capabilities,   the `index` parameter will be ignored * False: Disable indexing for this item * `list[str]`: List of field paths to index, supporting:   + Nested fields: `"metadata.title"`   + Array access: `"chapters[*].content"` (each indexed separately)   + Specific indices: `"authors[0].name"`  **TYPE:** `Literal[False] | list[str] | None`  **DEFAULT:** `None` |
| `ttl` | Time to live in minutes. Support for this argument depends on your store adapter. If specified, the item will expire after this many minutes from when it was last accessed. None means no expiration. Expired runs will be deleted opportunistically. By default, the expiration timer refreshes on both read operations (get/search) and write operations (put/update), whenever the item is included in the operation.  **TYPE:** `float | None | NotProvided`  **DEFAULT:** `NOT_PROVIDED` |

Note

Indexing support depends on your store implementation.
If you do not initialize the store with indexing capabilities,
the `index` parameter will be ignored.

Similarly, TTL support depends on the specific store implementation.
Some implementations may not support expiration of items.

 
Examples

Store item. Indexing depends on how you configure the store:

```
store.put(("docs",), "report", {"memory": "Will likes ai"})
```

Do not index item for semantic search. Still accessible through `get()`
and `search()` operations but won't have a vector representation.

```
store.put(("docs",), "report", {"memory": "Will likes ai"}, index=False)
```

Index specific fields for search:

```
store.put(("docs",), "report", {"memory": "Will likes ai"}, index=["memory"])
```

#### delete [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.delete "Copy anchor link to this section for reference")

```
delete(namespace: tuple[str, ...], key: str) -> None
```

Delete an item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

#### list\_namespaces [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.list_namespaces "Copy anchor link to this section for reference")

```
list_namespaces(
    *,
    prefix: NamespacePath | None = None,
    suffix: NamespacePath | None = None,
    max_depth: int | None = None,
    limit: int = 100,
    offset: int = 0,
) -> list[tuple[str, ...]]
```

List and filter namespaces in the store.

Used to explore the organization of data,
find specific collections, or navigate the namespace hierarchy.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prefix` | Filter namespaces that start with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `suffix` | Filter namespaces that end with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `max_depth` | Return namespaces up to this depth in the hierarchy. Namespaces deeper than this level will be truncated.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of namespaces to return.  **TYPE:** `int`  **DEFAULT:** `100` |
| `offset` | Number of namespaces to skip for pagination.  **TYPE:** `int`  **DEFAULT:** `0` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[str, ...]]` | A list of namespace tuples that match the criteria. Each tuple represents a full namespace path up to `max_depth`. |

???+ example "Examples":

```
Setting `max_depth=3`. Given the namespaces:

```python
# Example if you have the following namespaces:
# ("a", "b", "c")
# ("a", "b", "d", "e")
# ("a", "b", "d", "i")
# ("a", "b", "f")
# ("a", "c", "f")
store.list_namespaces(prefix=("a", "b"), max_depth=3)
# [("a", "b", "c"), ("a", "b", "d"), ("a", "b", "f")]
```
```

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.aget "Copy anchor link to this section for reference")

```
aget(
    namespace: tuple[str, ...], key: str, *, refresh_ttl: bool | None = None
) -> Item | None
```

Asynchronously retrieve a single item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Item | None` | The retrieved item or `None` if not found. |

#### asearch `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.asearch "Copy anchor link to this section for reference")

```
asearch(
    namespace_prefix: tuple[str, ...],
    /,
    *,
    query: str | None = None,
    filter: dict[str, Any] | None = None,
    limit: int = 10,
    offset: int = 0,
    refresh_ttl: bool | None = None,
) -> list[SearchItem]
```

Asynchronously search for items within a namespace prefix.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace_prefix` | Hierarchical path prefix to search within.  **TYPE:** `tuple[str, ...]` |
| `query` | Optional query for natural language search.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `filter` | Key-value pairs to filter results.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of items to return.  **TYPE:** `int`  **DEFAULT:** `10` |
| `offset` | Number of items to skip before returning results.  **TYPE:** `int`  **DEFAULT:** `0` |
| `refresh_ttl` | Whether to refresh TTLs for the returned items. If `None`, uses the store's `TTLConfig.refresh_default` setting. If `TTLConfig` is not provided or no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[SearchItem]` | List of items matching the search criteria. |

Examples

Basic filtering:

```
# Search for documents with specific metadata
results = await store.asearch(
    ("docs",),
    filter={"type": "article", "status": "published"}
)
```

Natural language search (requires vector store implementation):

```
# Initialize store with embedding configuration
store = YourStore( # e.g., InMemoryStore, AsyncPostgresStore
    index={
        "dims": 1536,  # embedding dimensions
        "embed": your_embedding_function,  # function to create embeddings
        "fields": ["text"]  # fields to embed
    }
)

# Search for semantically similar documents

results = await store.asearch(
    ("docs",),
    query="machine learning applications in healthcare",
    filter={"type": "research_paper"},
    limit=5
)
```

Note

Natural language search support depends on your store implementation
and requires proper embedding configuration.

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.aput "Copy anchor link to this section for reference")

```
aput(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    index: Literal[False] | list[str] | None = None,
    *,
    ttl: float | None | NotProvided = NOT_PROVIDED,
) -> None
```

Asynchronously store or update an item in the store.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item, represented as a tuple of strings. Example: `("documents", "user123")`  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace. Together with namespace forms the complete path to the item.  **TYPE:** `str` |
| `value` | Dictionary containing the item's data. Must contain string keys and JSON-serializable values.  **TYPE:** `dict[str, Any]` |
| `index` | Controls how the item's fields are indexed for search:   * None (default): Use `fields` you configured when creating the store (if any)   If you do not initialize the store with indexing capabilities,   the `index` parameter will be ignored * False: Disable indexing for this item * `list[str]`: List of field paths to index, supporting:   + Nested fields: `"metadata.title"`   + Array access: `"chapters[*].content"` (each indexed separately)   + Specific indices: `"authors[0].name"`  **TYPE:** `Literal[False] | list[str] | None`  **DEFAULT:** `None` |
| `ttl` | Time to live in minutes. Support for this argument depends on your store adapter. If specified, the item will expire after this many minutes from when it was last accessed. None means no expiration. Expired runs will be deleted opportunistically. By default, the expiration timer refreshes on both read operations (get/search) and write operations (put/update), whenever the item is included in the operation.  **TYPE:** `float | None | NotProvided`  **DEFAULT:** `NOT_PROVIDED` |

Note

Indexing support depends on your store implementation.
If you do not initialize the store with indexing capabilities,
the `index` parameter will be ignored.

Similarly, TTL support depends on the specific store implementation.
Some implementations may not support expiration of items.

 
Examples

Store item. Indexing depends on how you configure the store:

```
await store.aput(("docs",), "report", {"memory": "Will likes ai"})
```

Do not index item for semantic search. Still accessible through `get()`
and `search()` operations but won't have a vector representation.

```
await store.aput(("docs",), "report", {"memory": "Will likes ai"}, index=False)
```

Index specific fields for search (if store configured to index items):

```
await store.aput(
    ("docs",),
    "report",
    {
        "memory": "Will likes ai",
        "context": [{"content": "..."}, {"content": "..."}]
    },
    index=["memory", "context[*].content"]
)
```

#### adelete `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.adelete "Copy anchor link to this section for reference")

```
adelete(namespace: tuple[str, ...], key: str) -> None
```

Asynchronously delete an item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

#### alist\_namespaces `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.alist_namespaces "Copy anchor link to this section for reference")

```
alist_namespaces(
    *,
    prefix: NamespacePath | None = None,
    suffix: NamespacePath | None = None,
    max_depth: int | None = None,
    limit: int = 100,
    offset: int = 0,
) -> list[tuple[str, ...]]
```

List and filter namespaces in the store asynchronously.

Used to explore the organization of data,
find specific collections, or navigate the namespace hierarchy.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prefix` | Filter namespaces that start with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `suffix` | Filter namespaces that end with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `max_depth` | Return namespaces up to this depth in the hierarchy. Namespaces deeper than this level will be truncated to this depth.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of namespaces to return.  **TYPE:** `int`  **DEFAULT:** `100` |
| `offset` | Number of namespaces to skip for pagination.  **TYPE:** `int`  **DEFAULT:** `0` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[str, ...]]` | A list of namespace tuples that match the criteria. Each tuple represents a full namespace path up to `max_depth`. |

Examples

Setting `max_depth=3` with existing namespaces:

```
# Given the following namespaces:
# ("a", "b", "c")
# ("a", "b", "d", "e")
# ("a", "b", "d", "i")
# ("a", "b", "f")
# ("a", "c", "f")

await store.alist_namespaces(prefix=("a", "b"), max_depth=3)
# Returns: [("a", "b", "c"), ("a", "b", "d"), ("a", "b", "f")]
```

#### abatch `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.abatch "Copy anchor link to this section for reference")

```
abatch(ops: Iterable[Op]) -> list[Result]
```

Execute multiple operations asynchronously in a single batch.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ops` | An iterable of operations to execute.  **TYPE:** `Iterable[Op]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Result]` | A list of results, where each result corresponds to an operation in the input. |
| `list[Result]` | The order of results matches the order of input operations. |

#### from\_conn\_string `async` `classmethod` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.from_conn_string "Copy anchor link to this section for reference")

```
from_conn_string(
    conn_string: str,
    *,
    pipeline: bool = False,
    pool_config: PoolConfig | None = None,
    index: PostgresIndexConfig | None = None,
    ttl: TTLConfig | None = None,
) -> AsyncIterator[AsyncPostgresStore]
```

Create a new AsyncPostgresStore instance from a connection string.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn_string` | The Postgres connection info string.  **TYPE:** `str` |
| `pipeline` | Whether to use AsyncPipeline (only for single connections)  **TYPE:** `bool`  **DEFAULT:** `False` |
| `pool_config` | Configuration for the connection pool. If provided, will create a connection pool and use it instead of a single connection. This overrides the `pipeline` argument.  **TYPE:** `PoolConfig | None`  **DEFAULT:** `None` |
| `index` | The embedding config.  **TYPE:** `PostgresIndexConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncPostgresStore` | A new AsyncPostgresStore instance.  **TYPE:** `AsyncIterator[AsyncPostgresStore]` |

#### setup `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.setup "Copy anchor link to this section for reference")

```
setup() -> None
```

Set up the store database asynchronously.

This method creates the necessary tables in the Postgres database if they don't
already exist and runs database migrations. It MUST be called directly by the user
the first time the store is used.

#### sweep\_ttl `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.sweep_ttl "Copy anchor link to this section for reference")

```
sweep_ttl() -> int
```

Delete expired store items based on TTL.

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The number of deleted items.  **TYPE:** `int` |

#### start\_ttl\_sweeper `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.start_ttl_sweeper "Copy anchor link to this section for reference")

```
start_ttl_sweeper(sweep_interval_minutes: int | None = None) -> Task[None]
```

Periodically delete expired store items based on TTL.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Task[None]` | Task that can be awaited or cancelled. |

#### stop\_ttl\_sweeper `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.AsyncPostgresStore.stop_ttl_sweeper "Copy anchor link to this section for reference")

```
stop_ttl_sweeper(timeout: float | None = None) -> bool
```

Stop the TTL sweeper task if it's running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `timeout` | Maximum time to wait for the task to stop, in seconds. If `None`, wait indefinitely.  **TYPE:** `float | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | True if the task was successfully stopped or wasn't running, False if the timeout was reached before the task stopped.  **TYPE:** `bool` |

### PoolConfig [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig "Copy anchor link to this section for reference")

Bases: `TypedDict`

Connection pool settings for PostgreSQL connections.

Controls connection lifecycle and resource utilization:
- Small pools (1-5) suit low-concurrency workloads
- Larger pools handle concurrent requests but consume more resources
- Setting max\_size prevents resource exhaustion under load

#### min\_size `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.min_size "Copy anchor link to this section for reference")

```
min_size: int
```

Minimum number of connections maintained in the pool. Defaults to 1.

#### max\_size `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.max_size "Copy anchor link to this section for reference")

```
max_size: int | None
```

Maximum number of connections allowed in the pool. None means unlimited.

#### kwargs `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PoolConfig.kwargs "Copy anchor link to this section for reference")

```
kwargs: dict
```

Additional connection arguments passed to each connection in the pool.

Default kwargs set automatically:
- autocommit: True
- prepare\_threshold: 0
- row\_factory: dict\_row

### PostgresStore [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore "Copy anchor link to this section for reference")

Bases: `BaseStore`, `BasePostgresStore[Conn]`

Postgres-backed store with optional vector search using pgvector.

Examples

Basic setup and usage:

```
from langgraph.store.postgres import PostgresStore
from psycopg import Connection

conn_string = "postgresql://user:pass@localhost:5432/dbname"

# Using direct connection
with Connection.connect(conn_string) as conn:
    store = PostgresStore(conn)
    store.setup() # Run migrations. Done once

    # Store and retrieve data
    store.put(("users", "123"), "prefs", {"theme": "dark"})
    item = store.get(("users", "123"), "prefs")
```

Or using the convenient from\_conn\_string helper:

```
from langgraph.store.postgres import PostgresStore

conn_string = "postgresql://user:pass@localhost:5432/dbname"

with PostgresStore.from_conn_string(conn_string) as store:
    store.setup()

    # Store and retrieve data
    store.put(("users", "123"), "prefs", {"theme": "dark"})
    item = store.get(("users", "123"), "prefs")
```

Vector search using LangChain embeddings:

```
from langchain.embeddings import init_embeddings
from langgraph.store.postgres import PostgresStore

conn_string = "postgresql://user:pass@localhost:5432/dbname"

with PostgresStore.from_conn_string(
    conn_string,
    index={
        "dims": 1536,
        "embed": init_embeddings("openai:text-embedding-3-small"),
        "fields": ["text"]  # specify which fields to embed. Default is the whole serialized value
    }
) as store:
    store.setup() # Do this once to run migrations

    # Store documents
    store.put(("docs",), "doc1", {"text": "Python tutorial"})
    store.put(("docs",), "doc2", {"text": "TypeScript guide"})
    store.put(("docs",), "doc2", {"text": "Other guide"}, index=False) # don't index

    # Search by similarity
    results = store.search(("docs",), query="programming guides", limit=2)
```

Note

Semantic search is disabled by default. You can enable it by providing an `index` configuration
when creating the store. Without this configuration, all `index` arguments passed to
`put` or `aput`will have no effect.


Warning

Make sure to call `setup()` before first use to create necessary tables and indexes.
The pgvector extension must be available to use vector search.


Note

If you provide a TTL configuration, you must explicitly call `start_ttl_sweeper()` to begin
the background thread that removes expired items. Call `stop_ttl_sweeper()` to properly
clean up resources when you're done with the store.

| METHOD | DESCRIPTION |
| --- | --- |
| `get` | Retrieve a single item. |
| `search` | Search for items within a namespace prefix. |
| `put` | Store or update an item in the store. |
| `delete` | Delete an item. |
| `list_namespaces` | List and filter namespaces in the store. |
| `aget` | Asynchronously retrieve a single item. |
| `asearch` | Asynchronously search for items within a namespace prefix. |
| `aput` | Asynchronously store or update an item in the store. |
| `adelete` | Asynchronously delete an item. |
| `alist_namespaces` | List and filter namespaces in the store asynchronously. |
| `from_conn_string` | Create a new PostgresStore instance from a connection string. |
| `sweep_ttl` | Delete expired store items based on TTL. |
| `start_ttl_sweeper` | Periodically delete expired store items based on TTL. |
| `stop_ttl_sweeper` | Stop the TTL sweeper thread if it's running. |
| `__del__` | Ensure the TTL sweeper thread is stopped when the object is garbage collected. |
| `batch` | Execute multiple operations synchronously in a single batch. |
| `abatch` | Execute multiple operations asynchronously in a single batch. |
| `setup` | Set up the store database. |

#### get [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.get "Copy anchor link to this section for reference")

```
get(
    namespace: tuple[str, ...], key: str, *, refresh_ttl: bool | None = None
) -> Item | None
```

Retrieve a single item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |
| `refresh_ttl` | Whether to refresh TTLs for the returned item. If `None`, uses the store's default `refresh_ttl` setting. If no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Item | None` | The retrieved item or `None` if not found. |

#### search [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.search "Copy anchor link to this section for reference")

```
search(
    namespace_prefix: tuple[str, ...],
    /,
    *,
    query: str | None = None,
    filter: dict[str, Any] | None = None,
    limit: int = 10,
    offset: int = 0,
    refresh_ttl: bool | None = None,
) -> list[SearchItem]
```

Search for items within a namespace prefix.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace_prefix` | Hierarchical path prefix to search within.  **TYPE:** `tuple[str, ...]` |
| `query` | Optional query for natural language search.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `filter` | Key-value pairs to filter results.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of items to return.  **TYPE:** `int`  **DEFAULT:** `10` |
| `offset` | Number of items to skip before returning results.  **TYPE:** `int`  **DEFAULT:** `0` |
| `refresh_ttl` | Whether to refresh TTLs for the returned items. If no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[SearchItem]` | List of items matching the search criteria. |

Examples

Basic filtering:

```
# Search for documents with specific metadata
results = store.search(
    ("docs",),
    filter={"type": "article", "status": "published"}
)
```

Natural language search (requires vector store implementation):

```
# Initialize store with embedding configuration
store = YourStore( # e.g., InMemoryStore, AsyncPostgresStore
    index={
        "dims": 1536,  # embedding dimensions
        "embed": your_embedding_function,  # function to create embeddings
        "fields": ["text"]  # fields to embed. Defaults to ["$"]
    }
)

# Search for semantically similar documents

results = store.search(
    ("docs",),
    query="machine learning applications in healthcare",
    filter={"type": "research_paper"},
    limit=5
)
```

Note

Natural language search support depends on your store implementation
and requires proper embedding configuration.

#### put [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.put "Copy anchor link to this section for reference")

```
put(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    index: Literal[False] | list[str] | None = None,
    *,
    ttl: float | None | NotProvided = NOT_PROVIDED,
) -> None
```

Store or update an item in the store.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item, represented as a tuple of strings. Example: `("documents", "user123")`  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace. Together with namespace forms the complete path to the item.  **TYPE:** `str` |
| `value` | Dictionary containing the item's data. Must contain string keys and JSON-serializable values.  **TYPE:** `dict[str, Any]` |
| `index` | Controls how the item's fields are indexed for search:   * None (default): Use `fields` you configured when creating the store (if any)   If you do not initialize the store with indexing capabilities,   the `index` parameter will be ignored * False: Disable indexing for this item * `list[str]`: List of field paths to index, supporting:   + Nested fields: `"metadata.title"`   + Array access: `"chapters[*].content"` (each indexed separately)   + Specific indices: `"authors[0].name"`  **TYPE:** `Literal[False] | list[str] | None`  **DEFAULT:** `None` |
| `ttl` | Time to live in minutes. Support for this argument depends on your store adapter. If specified, the item will expire after this many minutes from when it was last accessed. None means no expiration. Expired runs will be deleted opportunistically. By default, the expiration timer refreshes on both read operations (get/search) and write operations (put/update), whenever the item is included in the operation.  **TYPE:** `float | None | NotProvided`  **DEFAULT:** `NOT_PROVIDED` |

Note

Indexing support depends on your store implementation.
If you do not initialize the store with indexing capabilities,
the `index` parameter will be ignored.

Similarly, TTL support depends on the specific store implementation.
Some implementations may not support expiration of items.

 
Examples

Store item. Indexing depends on how you configure the store:

```
store.put(("docs",), "report", {"memory": "Will likes ai"})
```

Do not index item for semantic search. Still accessible through `get()`
and `search()` operations but won't have a vector representation.

```
store.put(("docs",), "report", {"memory": "Will likes ai"}, index=False)
```

Index specific fields for search:

```
store.put(("docs",), "report", {"memory": "Will likes ai"}, index=["memory"])
```

#### delete [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.delete "Copy anchor link to this section for reference")

```
delete(namespace: tuple[str, ...], key: str) -> None
```

Delete an item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

#### list\_namespaces [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.list_namespaces "Copy anchor link to this section for reference")

```
list_namespaces(
    *,
    prefix: NamespacePath | None = None,
    suffix: NamespacePath | None = None,
    max_depth: int | None = None,
    limit: int = 100,
    offset: int = 0,
) -> list[tuple[str, ...]]
```

List and filter namespaces in the store.

Used to explore the organization of data,
find specific collections, or navigate the namespace hierarchy.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prefix` | Filter namespaces that start with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `suffix` | Filter namespaces that end with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `max_depth` | Return namespaces up to this depth in the hierarchy. Namespaces deeper than this level will be truncated.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of namespaces to return.  **TYPE:** `int`  **DEFAULT:** `100` |
| `offset` | Number of namespaces to skip for pagination.  **TYPE:** `int`  **DEFAULT:** `0` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[str, ...]]` | A list of namespace tuples that match the criteria. Each tuple represents a full namespace path up to `max_depth`. |

???+ example "Examples":

```
Setting `max_depth=3`. Given the namespaces:

```python
# Example if you have the following namespaces:
# ("a", "b", "c")
# ("a", "b", "d", "e")
# ("a", "b", "d", "i")
# ("a", "b", "f")
# ("a", "c", "f")
store.list_namespaces(prefix=("a", "b"), max_depth=3)
# [("a", "b", "c"), ("a", "b", "d"), ("a", "b", "f")]
```
```

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.aget "Copy anchor link to this section for reference")

```
aget(
    namespace: tuple[str, ...], key: str, *, refresh_ttl: bool | None = None
) -> Item | None
```

Asynchronously retrieve a single item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Item | None` | The retrieved item or `None` if not found. |

#### asearch `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.asearch "Copy anchor link to this section for reference")

```
asearch(
    namespace_prefix: tuple[str, ...],
    /,
    *,
    query: str | None = None,
    filter: dict[str, Any] | None = None,
    limit: int = 10,
    offset: int = 0,
    refresh_ttl: bool | None = None,
) -> list[SearchItem]
```

Asynchronously search for items within a namespace prefix.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace_prefix` | Hierarchical path prefix to search within.  **TYPE:** `tuple[str, ...]` |
| `query` | Optional query for natural language search.  **TYPE:** `str | None`  **DEFAULT:** `None` |
| `filter` | Key-value pairs to filter results.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of items to return.  **TYPE:** `int`  **DEFAULT:** `10` |
| `offset` | Number of items to skip before returning results.  **TYPE:** `int`  **DEFAULT:** `0` |
| `refresh_ttl` | Whether to refresh TTLs for the returned items. If `None`, uses the store's `TTLConfig.refresh_default` setting. If `TTLConfig` is not provided or no TTL is specified, this argument is ignored.  **TYPE:** `bool | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[SearchItem]` | List of items matching the search criteria. |

Examples

Basic filtering:

```
# Search for documents with specific metadata
results = await store.asearch(
    ("docs",),
    filter={"type": "article", "status": "published"}
)
```

Natural language search (requires vector store implementation):

```
# Initialize store with embedding configuration
store = YourStore( # e.g., InMemoryStore, AsyncPostgresStore
    index={
        "dims": 1536,  # embedding dimensions
        "embed": your_embedding_function,  # function to create embeddings
        "fields": ["text"]  # fields to embed
    }
)

# Search for semantically similar documents

results = await store.asearch(
    ("docs",),
    query="machine learning applications in healthcare",
    filter={"type": "research_paper"},
    limit=5
)
```

Note

Natural language search support depends on your store implementation
and requires proper embedding configuration.

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.aput "Copy anchor link to this section for reference")

```
aput(
    namespace: tuple[str, ...],
    key: str,
    value: dict[str, Any],
    index: Literal[False] | list[str] | None = None,
    *,
    ttl: float | None | NotProvided = NOT_PROVIDED,
) -> None
```

Asynchronously store or update an item in the store.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item, represented as a tuple of strings. Example: `("documents", "user123")`  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace. Together with namespace forms the complete path to the item.  **TYPE:** `str` |
| `value` | Dictionary containing the item's data. Must contain string keys and JSON-serializable values.  **TYPE:** `dict[str, Any]` |
| `index` | Controls how the item's fields are indexed for search:   * None (default): Use `fields` you configured when creating the store (if any)   If you do not initialize the store with indexing capabilities,   the `index` parameter will be ignored * False: Disable indexing for this item * `list[str]`: List of field paths to index, supporting:   + Nested fields: `"metadata.title"`   + Array access: `"chapters[*].content"` (each indexed separately)   + Specific indices: `"authors[0].name"`  **TYPE:** `Literal[False] | list[str] | None`  **DEFAULT:** `None` |
| `ttl` | Time to live in minutes. Support for this argument depends on your store adapter. If specified, the item will expire after this many minutes from when it was last accessed. None means no expiration. Expired runs will be deleted opportunistically. By default, the expiration timer refreshes on both read operations (get/search) and write operations (put/update), whenever the item is included in the operation.  **TYPE:** `float | None | NotProvided`  **DEFAULT:** `NOT_PROVIDED` |

Note

Indexing support depends on your store implementation.
If you do not initialize the store with indexing capabilities,
the `index` parameter will be ignored.

Similarly, TTL support depends on the specific store implementation.
Some implementations may not support expiration of items.

 
Examples

Store item. Indexing depends on how you configure the store:

```
await store.aput(("docs",), "report", {"memory": "Will likes ai"})
```

Do not index item for semantic search. Still accessible through `get()`
and `search()` operations but won't have a vector representation.

```
await store.aput(("docs",), "report", {"memory": "Will likes ai"}, index=False)
```

Index specific fields for search (if store configured to index items):

```
await store.aput(
    ("docs",),
    "report",
    {
        "memory": "Will likes ai",
        "context": [{"content": "..."}, {"content": "..."}]
    },
    index=["memory", "context[*].content"]
)
```

#### adelete `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.adelete "Copy anchor link to this section for reference")

```
adelete(namespace: tuple[str, ...], key: str) -> None
```

Asynchronously delete an item.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `namespace` | Hierarchical path for the item.  **TYPE:** `tuple[str, ...]` |
| `key` | Unique identifier within the namespace.  **TYPE:** `str` |

#### alist\_namespaces `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.alist_namespaces "Copy anchor link to this section for reference")

```
alist_namespaces(
    *,
    prefix: NamespacePath | None = None,
    suffix: NamespacePath | None = None,
    max_depth: int | None = None,
    limit: int = 100,
    offset: int = 0,
) -> list[tuple[str, ...]]
```

List and filter namespaces in the store asynchronously.

Used to explore the organization of data,
find specific collections, or navigate the namespace hierarchy.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `prefix` | Filter namespaces that start with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `suffix` | Filter namespaces that end with this path.  **TYPE:** `NamespacePath | None`  **DEFAULT:** `None` |
| `max_depth` | Return namespaces up to this depth in the hierarchy. Namespaces deeper than this level will be truncated to this depth.  **TYPE:** `int | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of namespaces to return.  **TYPE:** `int`  **DEFAULT:** `100` |
| `offset` | Number of namespaces to skip for pagination.  **TYPE:** `int`  **DEFAULT:** `0` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[tuple[str, ...]]` | A list of namespace tuples that match the criteria. Each tuple represents a full namespace path up to `max_depth`. |

Examples

Setting `max_depth=3` with existing namespaces:

```
# Given the following namespaces:
# ("a", "b", "c")
# ("a", "b", "d", "e")
# ("a", "b", "d", "i")
# ("a", "b", "f")
# ("a", "c", "f")

await store.alist_namespaces(prefix=("a", "b"), max_depth=3)
# Returns: [("a", "b", "c"), ("a", "b", "d"), ("a", "b", "f")]
```

#### from\_conn\_string `classmethod` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.from_conn_string "Copy anchor link to this section for reference")

```
from_conn_string(
    conn_string: str,
    *,
    pipeline: bool = False,
    pool_config: PoolConfig | None = None,
    index: PostgresIndexConfig | None = None,
    ttl: TTLConfig | None = None,
) -> Iterator[PostgresStore]
```

Create a new PostgresStore instance from a connection string.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn_string` | The Postgres connection info string.  **TYPE:** `str` |
| `pipeline` | whether to use Pipeline  **TYPE:** `bool`  **DEFAULT:** `False` |
| `pool_config` | Configuration for the connection pool. If provided, will create a connection pool and use it instead of a single connection. This overrides the `pipeline` argument.  **TYPE:** `PoolConfig | None`  **DEFAULT:** `None` |
| `index` | The index configuration for the store.  **TYPE:** `PostgresIndexConfig | None`  **DEFAULT:** `None` |
| `ttl` | The TTL configuration for the store.  **TYPE:** `TTLConfig | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `PostgresStore` | A new PostgresStore instance.  **TYPE:** `Iterator[PostgresStore]` |

#### sweep\_ttl [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.sweep_ttl "Copy anchor link to this section for reference")

```
sweep_ttl() -> int
```

Delete expired store items based on TTL.

| RETURNS | DESCRIPTION |
| --- | --- |
| `int` | The number of deleted items.  **TYPE:** `int` |

#### start\_ttl\_sweeper [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.start_ttl_sweeper "Copy anchor link to this section for reference")

```
start_ttl_sweeper(sweep_interval_minutes: int | None = None) -> Future[None]
```

Periodically delete expired store items based on TTL.

| RETURNS | DESCRIPTION |
| --- | --- |
| `Future[None]` | Future that can be waited on or cancelled. |

#### stop\_ttl\_sweeper [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.stop_ttl_sweeper "Copy anchor link to this section for reference")

```
stop_ttl_sweeper(timeout: float | None = None) -> bool
```

Stop the TTL sweeper thread if it's running.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `timeout` | Maximum time to wait for the thread to stop, in seconds. If `None`, wait indefinitely.  **TYPE:** `float | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `bool` | True if the thread was successfully stopped or wasn't running, False if the timeout was reached before the thread stopped.  **TYPE:** `bool` |

#### \_\_del\_\_ [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.__del__ "Copy anchor link to this section for reference")

```
__del__() -> None
```

Ensure the TTL sweeper thread is stopped when the object is garbage collected.

#### batch [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.batch "Copy anchor link to this section for reference")

```
batch(ops: Iterable[Op]) -> list[Result]
```

Execute multiple operations synchronously in a single batch.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ops` | An iterable of operations to execute.  **TYPE:** `Iterable[Op]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Result]` | A list of results, where each result corresponds to an operation in the input. |
| `list[Result]` | The order of results matches the order of input operations. |

#### abatch `async` [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.abatch "Copy anchor link to this section for reference")

```
abatch(ops: Iterable[Op]) -> list[Result]
```

Execute multiple operations asynchronously in a single batch.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `ops` | An iterable of operations to execute.  **TYPE:** `Iterable[Op]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `list[Result]` | A list of results, where each result corresponds to an operation in the input. |
| `list[Result]` | The order of results matches the order of input operations. |

#### setup [¶](https://reference.langchain.com/python/langgraph/store/#langgraph.store.postgres.PostgresStore.setup "Copy anchor link to this section for reference")

```
setup() -> None
```

Set up the store database.

This method creates the necessary tables in the Postgres database if they don't
already exist and runs database migrations. It MUST be called directly by the user
the first time the store is used.

Back to top