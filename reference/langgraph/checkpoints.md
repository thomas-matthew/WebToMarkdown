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
    - Checkpointing

      [Checkpointing](https://reference.langchain.com/python/langgraph/checkpoints/)



      Table of contents
      * [base](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base)

        + [CheckpointMetadata](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata)

          - [source](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.source)
          - [step](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.step)
          - [parents](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.parents)
        + [Checkpoint](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint)

          - [v](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.v)
          - [id](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.id)
          - [ts](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.ts)
          - [channel\_values](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.channel_values)
          - [channel\_versions](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.channel_versions)
          - [versions\_seen](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.versions_seen)
          - [updated\_channels](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.updated_channels)
        + [BaseCheckpointSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver)

          - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.config_specs)
          - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get)
          - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get_tuple)
          - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.list)
          - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.put)
          - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.put_writes)
          - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.delete_thread)
          - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aget)
          - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aget_tuple)
          - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.alist)
          - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aput)
          - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aput_writes)
          - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.adelete_thread)
          - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get_next_version)
        + [create\_checkpoint](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.create_checkpoint)
      * [base](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base)

        + [SerializerProtocol](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.SerializerProtocol)
        + [CipherProtocol](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol)

          - [encrypt](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol.encrypt)
          - [decrypt](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol.decrypt)
      * [jsonplus](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.jsonplus)

        + [JsonPlusSerializer](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.jsonplus.JsonPlusSerializer)
      * [encrypted](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted)

        + [EncryptedSerializer](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer)

          - [dumps\_typed](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer.dumps_typed)
          - [from\_pycryptodome\_aes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer.from_pycryptodome_aes)
      * [memory](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory)

        + [InMemorySaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver)

          - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.config_specs)
          - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get_tuple)
          - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.list)
          - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.put)
          - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.put_writes)
          - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.delete_thread)
          - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aget_tuple)
          - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.alist)
          - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aput)
          - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aput_writes)
          - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.adelete_thread)
          - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get_next_version)
          - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get)
          - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aget)
        + [PersistentDict](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.PersistentDict)

          - [sync](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.PersistentDict.sync)
      * [sqlite](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite)

        + [SqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver)

          - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.config_specs)
          - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.from_conn_string)
          - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.setup)
          - [cursor](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.cursor)
          - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get_tuple)
          - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.list)
          - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.put)
          - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.put_writes)
          - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.delete_thread)
          - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aget_tuple)
          - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.alist)
          - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aput)
          - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get_next_version)
          - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get)
          - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aget)
          - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aput_writes)
          - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.adelete_thread)
      * [aio](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio)

        + [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver)

          - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.config_specs)
          - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.from_conn_string)
          - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get_tuple)
          - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.list)
          - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.put)
          - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.put_writes)
          - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.delete_thread)
          - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.setup)
          - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aget_tuple)
          - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.alist)
          - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aput)
          - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aput_writes)
          - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.adelete_thread)
          - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get_next_version)
          - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get)
          - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aget)
      * [postgres](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres)

        + [PostgresSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver)

          - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.config_specs)
          - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.from_conn_string)
          - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.setup)
          - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.list)
          - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get_tuple)
          - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.put)
          - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.put_writes)
          - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.delete_thread)
          - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get)
          - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aget)
          - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aget_tuple)
          - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.alist)
          - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aput)
          - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aput_writes)
          - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.adelete_thread)
          - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get_next_version)
      * [aio](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio)

        + [AsyncPostgresSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver)

          - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.config_specs)
          - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.from_conn_string)
          - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.setup)
          - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.alist)
          - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aget_tuple)
          - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aput)
          - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aput_writes)
          - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.adelete_thread)
          - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.list)
          - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get_tuple)
          - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.put)
          - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.put_writes)
          - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.delete_thread)
          - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get)
          - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aget)
          - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get_next_version)
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
    - [Supervisor](https://reference.langchain.com/python/langgraph/supervisor/)
    - [Swarm](https://reference.langchain.com/python/langgraph/swarm/)
* [Deep Agents](https://reference.langchain.com/python/deepagents/)
* [Integrations](https://reference.langchain.com/python/integrations/)
* [LangSmith](https://reference.langchain.com/python/langsmith/)

Table of contents

* [base](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base)

  + [CheckpointMetadata](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata)

    - [source](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.source)
    - [step](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.step)
    - [parents](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.parents)
  + [Checkpoint](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint)

    - [v](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.v)
    - [id](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.id)
    - [ts](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.ts)
    - [channel\_values](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.channel_values)
    - [channel\_versions](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.channel_versions)
    - [versions\_seen](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.versions_seen)
    - [updated\_channels](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.updated_channels)
  + [BaseCheckpointSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver)

    - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.config_specs)
    - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get)
    - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get_tuple)
    - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.list)
    - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.put)
    - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.put_writes)
    - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.delete_thread)
    - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aget)
    - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aget_tuple)
    - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.alist)
    - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aput)
    - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aput_writes)
    - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.adelete_thread)
    - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get_next_version)
  + [create\_checkpoint](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.create_checkpoint)
* [base](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base)

  + [SerializerProtocol](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.SerializerProtocol)
  + [CipherProtocol](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol)

    - [encrypt](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol.encrypt)
    - [decrypt](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol.decrypt)
* [jsonplus](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.jsonplus)

  + [JsonPlusSerializer](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.jsonplus.JsonPlusSerializer)
* [encrypted](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted)

  + [EncryptedSerializer](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer)

    - [dumps\_typed](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer.dumps_typed)
    - [from\_pycryptodome\_aes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer.from_pycryptodome_aes)
* [memory](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory)

  + [InMemorySaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver)

    - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.config_specs)
    - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get_tuple)
    - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.list)
    - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.put)
    - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.put_writes)
    - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.delete_thread)
    - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aget_tuple)
    - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.alist)
    - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aput)
    - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aput_writes)
    - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.adelete_thread)
    - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get_next_version)
    - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get)
    - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aget)
  + [PersistentDict](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.PersistentDict)

    - [sync](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.PersistentDict.sync)
* [sqlite](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite)

  + [SqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver)

    - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.config_specs)
    - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.from_conn_string)
    - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.setup)
    - [cursor](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.cursor)
    - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get_tuple)
    - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.list)
    - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.put)
    - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.put_writes)
    - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.delete_thread)
    - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aget_tuple)
    - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.alist)
    - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aput)
    - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get_next_version)
    - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get)
    - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aget)
    - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aput_writes)
    - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.adelete_thread)
* [aio](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio)

  + [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver)

    - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.config_specs)
    - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.from_conn_string)
    - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get_tuple)
    - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.list)
    - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.put)
    - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.put_writes)
    - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.delete_thread)
    - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.setup)
    - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aget_tuple)
    - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.alist)
    - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aput)
    - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aput_writes)
    - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.adelete_thread)
    - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get_next_version)
    - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get)
    - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aget)
* [postgres](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres)

  + [PostgresSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver)

    - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.config_specs)
    - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.from_conn_string)
    - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.setup)
    - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.list)
    - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get_tuple)
    - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.put)
    - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.put_writes)
    - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.delete_thread)
    - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get)
    - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aget)
    - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aget_tuple)
    - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.alist)
    - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aput)
    - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aput_writes)
    - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.adelete_thread)
    - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get_next_version)
* [aio](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio)

  + [AsyncPostgresSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver)

    - [config\_specs](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.config_specs)
    - [from\_conn\_string](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.from_conn_string)
    - [setup](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.setup)
    - [alist](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.alist)
    - [aget\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aget_tuple)
    - [aput](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aput)
    - [aput\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aput_writes)
    - [adelete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.adelete_thread)
    - [list](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.list)
    - [get\_tuple](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get_tuple)
    - [put](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.put)
    - [put\_writes](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.put_writes)
    - [delete\_thread](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.delete_thread)
    - [get](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get)
    - [aget](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aget)
    - [get\_next\_version](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get_next_version)

# Checkpointing

## base [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base "Copy anchor link to this section for reference")

| FUNCTION | DESCRIPTION |
| --- | --- |
| `create_checkpoint` | Create a checkpoint for the given channels. |

### CheckpointMetadata [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata "Copy anchor link to this section for reference")

Bases: `TypedDict`

Metadata associated with a checkpoint.

#### source `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.source "Copy anchor link to this section for reference")

```
source: Literal['input', 'loop', 'update', 'fork']
```

The source of the checkpoint.

* `"input"`: The checkpoint was created from an input to invoke/stream/batch.
* `"loop"`: The checkpoint was created from inside the pregel loop.
* `"update"`: The checkpoint was created from a manual state update.
* `"fork"`: The checkpoint was created as a copy of another checkpoint.

#### step `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.step "Copy anchor link to this section for reference")

```
step: int
```

The step number of the checkpoint.

`-1` for the first `"input"` checkpoint.
`0` for the first `"loop"` checkpoint.
`...` for the `nth` checkpoint afterwards.

#### parents `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.CheckpointMetadata.parents "Copy anchor link to this section for reference")

```
parents: dict[str, str]
```

The IDs of the parent checkpoints.

Mapping from checkpoint namespace to checkpoint ID.

### Checkpoint [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint "Copy anchor link to this section for reference")

Bases: `TypedDict`

State snapshot at a given point in time.

#### v `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.v "Copy anchor link to this section for reference")

```
v: int
```

The version of the checkpoint format. Currently `1`.

#### id `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.id "Copy anchor link to this section for reference")

```
id: str
```

The ID of the checkpoint.

This is both unique and monotonically increasing, so can be used for sorting
checkpoints from first to last.

#### ts `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.ts "Copy anchor link to this section for reference")

```
ts: str
```

The timestamp of the checkpoint in ISO 8601 format.

#### channel\_values `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.channel_values "Copy anchor link to this section for reference")

```
channel_values: dict[str, Any]
```

The values of the channels at the time of the checkpoint.

Mapping from channel name to deserialized channel snapshot value.

#### channel\_versions `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.channel_versions "Copy anchor link to this section for reference")

```
channel_versions: ChannelVersions
```

The versions of the channels at the time of the checkpoint.

The keys are channel names and the values are monotonically increasing
version strings for each channel.

#### versions\_seen `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.versions_seen "Copy anchor link to this section for reference")

```
versions_seen: dict[str, ChannelVersions]
```

Map from node ID to map from channel name to version seen.

This keeps track of the versions of the channels that each node has seen.
Used to determine which nodes to execute next.

#### updated\_channels `instance-attribute` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.Checkpoint.updated_channels "Copy anchor link to this section for reference")

```
updated_channels: list[str] | None
```

The channels that were updated in this checkpoint.

### BaseCheckpointSaver [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver "Copy anchor link to this section for reference")

Bases: `Generic[V]`

Base class for creating a graph checkpointer.

Checkpointers allow LangGraph agents to persist their state
within and across multiple interactions.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `serde` | Serializer for encoding/decoding checkpoints.  **TYPE:** `SerializerProtocol` |

Note

When creating a custom checkpoint saver, consider implementing async
versions to avoid blocking the main thread.

| METHOD | DESCRIPTION |
| --- | --- |
| `get` | Fetch a checkpoint using the given configuration. |
| `get_tuple` | Fetch a checkpoint tuple using the given configuration. |
| `list` | List checkpoints that match the given criteria. |
| `put` | Store a checkpoint with its configuration and metadata. |
| `put_writes` | Store intermediate writes linked to a checkpoint. |
| `delete_thread` | Delete all checkpoints and writes associated with a specific thread ID. |
| `aget` | Asynchronously fetch a checkpoint using the given configuration. |
| `aget_tuple` | Asynchronously fetch a checkpoint tuple using the given configuration. |
| `alist` | Asynchronously list checkpoints that match the given criteria. |
| `aput` | Asynchronously store a checkpoint with its configuration and metadata. |
| `aput_writes` | Asynchronously store intermediate writes linked to a checkpoint. |
| `adelete_thread` | Delete all checkpoints and writes associated with a specific thread ID. |
| `get_next_version` | Generate the next version ID for a channel. |

#### config\_specs `property` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.config_specs "Copy anchor link to this section for reference")

```
config_specs: list
```

Define the configuration options for the checkpoint saver.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list` | List of configuration field specs.  **TYPE:** `list` |

#### get [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get "Copy anchor link to this section for reference")

```
get(config: RunnableConfig) -> Checkpoint | None
```

Fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### get\_tuple [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get_tuple "Copy anchor link to this section for reference")

```
get_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Fetch a checkpoint tuple using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The requested checkpoint tuple, or `None` if not found. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### list [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.list "Copy anchor link to this section for reference")

```
list(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[CheckpointTuple]
```

List checkpoints that match the given criteria.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | List checkpoints created before this configuration.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Iterator[CheckpointTuple]` | Iterator of matching checkpoint tuples. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### put [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.put "Copy anchor link to this section for reference")

```
put(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Store a checkpoint with its configuration and metadata.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration for the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to store.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata for the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### put\_writes [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.put_writes "Copy anchor link to this section for reference")

```
put_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### delete\_thread [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.delete_thread "Copy anchor link to this section for reference")

```
delete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a specific thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID whose checkpoints should be deleted.  **TYPE:** `str` |

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aget "Copy anchor link to this section for reference")

```
aget(config: RunnableConfig) -> Checkpoint | None
```

Asynchronously fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget\_tuple `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aget_tuple "Copy anchor link to this section for reference")

```
aget_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Asynchronously fetch a checkpoint tuple using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The requested checkpoint tuple, or `None` if not found. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### alist `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.alist "Copy anchor link to this section for reference")

```
alist(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[CheckpointTuple]
```

Asynchronously list checkpoints that match the given criteria.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | List checkpoints created before this configuration.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[CheckpointTuple]` | Async iterator of matching checkpoint tuples. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aput "Copy anchor link to this section for reference")

```
aput(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Asynchronously store a checkpoint with its configuration and metadata.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration for the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to store.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata for the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### aput\_writes `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.aput_writes "Copy anchor link to this section for reference")

```
aput_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Asynchronously store intermediate writes linked to a checkpoint.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### adelete\_thread `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.adelete_thread "Copy anchor link to this section for reference")

```
adelete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a specific thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID whose checkpoints should be deleted.  **TYPE:** `str` |

#### get\_next\_version [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.BaseCheckpointSaver.get_next_version "Copy anchor link to this section for reference")

```
get_next_version(current: V | None, channel: None) -> V
```

Generate the next version ID for a channel.

Default is to use integer versions, incrementing by `1`.

If you override, you can use `str`/`int`/`float` versions, as long as they are monotonically increasing.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `current` | The current version identifier (`int`, `float`, or `str`).  **TYPE:** `V | None` |
| `channel` | Deprecated argument, kept for backwards compatibility.  **TYPE:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `V` | The next version identifier, which must be increasing.  **TYPE:** `V` |

### create\_checkpoint [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.base.create_checkpoint "Copy anchor link to this section for reference")

```
create_checkpoint(
    checkpoint: Checkpoint,
    channels: Mapping[str, ChannelProtocol] | None,
    step: int,
    *,
    id: str | None = None,
) -> Checkpoint
```

Create a checkpoint for the given channels.

## base [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base "Copy anchor link to this section for reference")

### SerializerProtocol [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.SerializerProtocol "Copy anchor link to this section for reference")

Bases: `Protocol`

Protocol for serialization and deserialization of objects.

* `dumps_typed`: Serialize an object to a tuple `(type, bytes)`.
* `loads_typed`: Deserialize an object from a tuple `(type, bytes)`.

Valid implementations include the `pickle`, `json` and `orjson` modules.

### CipherProtocol [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol "Copy anchor link to this section for reference")

Bases: `Protocol`

Protocol for encryption and decryption of data.

* `encrypt`: Encrypt plaintext.
* `decrypt`: Decrypt ciphertext.

| METHOD | DESCRIPTION |
| --- | --- |
| `encrypt` | Encrypt plaintext. Returns a tuple `(cipher name, ciphertext)`. |
| `decrypt` | Decrypt ciphertext. Returns the plaintext. |

#### encrypt [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol.encrypt "Copy anchor link to this section for reference")

```
encrypt(plaintext: bytes) -> tuple[str, bytes]
```

Encrypt plaintext. Returns a tuple `(cipher name, ciphertext)`.

#### decrypt [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.base.CipherProtocol.decrypt "Copy anchor link to this section for reference")

```
decrypt(ciphername: str, ciphertext: bytes) -> bytes
```

Decrypt ciphertext. Returns the plaintext.

## jsonplus [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.jsonplus "Copy anchor link to this section for reference")

### JsonPlusSerializer [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.jsonplus.JsonPlusSerializer "Copy anchor link to this section for reference")

Bases: `SerializerProtocol`

Serializer that uses ormsgpack, with optional fallbacks.

Warning

Security note: This serializer is intended for use within the `BaseCheckpointSaver`
class and called within the Pregel loop. It should not be used on untrusted
python objects. If an attacker can write directly to your checkpoint database,
they may be able to trigger code execution when data is deserialized.

## encrypted [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted "Copy anchor link to this section for reference")

### EncryptedSerializer [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer "Copy anchor link to this section for reference")

Bases: `SerializerProtocol`

Serializer that encrypts and decrypts data using an encryption protocol.

| METHOD | DESCRIPTION |
| --- | --- |
| `dumps_typed` | Serialize an object to a tuple `(type, bytes)` and encrypt the bytes. |
| `from_pycryptodome_aes` | Create an `EncryptedSerializer` using AES encryption. |

#### dumps\_typed [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer.dumps_typed "Copy anchor link to this section for reference")

```
dumps_typed(obj: Any) -> tuple[str, bytes]
```

Serialize an object to a tuple `(type, bytes)` and encrypt the bytes.

#### from\_pycryptodome\_aes `classmethod` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.serde.encrypted.EncryptedSerializer.from_pycryptodome_aes "Copy anchor link to this section for reference")

```
from_pycryptodome_aes(
    serde: SerializerProtocol = JsonPlusSerializer(), **kwargs: Any
) -> EncryptedSerializer
```

Create an `EncryptedSerializer` using AES encryption.

## memory [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory "Copy anchor link to this section for reference")

### InMemorySaver [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver "Copy anchor link to this section for reference")

Bases: `BaseCheckpointSaver[str]`, `AbstractContextManager`, `AbstractAsyncContextManager`

An in-memory checkpoint saver.

This checkpoint saver stores checkpoints in memory using a `defaultdict`.

Note

Only use `InMemorySaver` for debugging or testing purposes.
For production use cases we recommend installing [langgraph-checkpoint-postgres](https://pypi.org/project/langgraph-checkpoint-postgres/) and using `PostgresSaver` / `AsyncPostgresSaver`.

If you are using LangSmith Deployment, no checkpointer needs to be specified. The correct managed checkpointer will be used automatically.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `serde` | The serializer to use for serializing and deserializing checkpoints.  **TYPE:** `SerializerProtocol | None`  **DEFAULT:** `None` |

Example

```
import asyncio

from langgraph.checkpoint.memory import InMemorySaver
from langgraph.graph import StateGraph

builder = StateGraph(int)
builder.add_node("add_one", lambda x: x + 1)
builder.set_entry_point("add_one")
builder.set_finish_point("add_one")

memory = InMemorySaver()
graph = builder.compile(checkpointer=memory)
coro = graph.ainvoke(1, {"configurable": {"thread_id": "thread-1"}})
asyncio.run(coro)  # Output: 2
```

| METHOD | DESCRIPTION |
| --- | --- |
| `get_tuple` | Get a checkpoint tuple from the in-memory storage. |
| `list` | List checkpoints from the in-memory storage. |
| `put` | Save a checkpoint to the in-memory storage. |
| `put_writes` | Save a list of writes to the in-memory storage. |
| `delete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `aget_tuple` | Asynchronous version of `get_tuple`. |
| `alist` | Asynchronous version of `list`. |
| `aput` | Asynchronous version of `put`. |
| `aput_writes` | Asynchronous version of `put_writes`. |
| `adelete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `get_next_version` | Generate the next version ID for a channel. |
| `get` | Fetch a checkpoint using the given configuration. |
| `aget` | Asynchronously fetch a checkpoint using the given configuration. |

#### config\_specs `property` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.config_specs "Copy anchor link to this section for reference")

```
config_specs: list
```

Define the configuration options for the checkpoint saver.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list` | List of configuration field specs.  **TYPE:** `list` |

#### get\_tuple [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get_tuple "Copy anchor link to this section for reference")

```
get_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the in-memory storage.

This method retrieves a checkpoint tuple from the in-memory storage based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and timestamp is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

#### list [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.list "Copy anchor link to this section for reference")

```
list(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[CheckpointTuple]
```

List checkpoints from the in-memory storage.

This method retrieves a list of checkpoint tuples from the in-memory storage based
on the provided criteria.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | List checkpoints created before this configuration.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple` | An iterator of matching checkpoint tuples. |

#### put [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.put "Copy anchor link to this section for reference")

```
put(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the in-memory storage.

This method saves a checkpoint to the in-memory storage. The checkpoint is associated
with the provided config.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New versions as of this write  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | The updated config containing the saved checkpoint's timestamp.  **TYPE:** `RunnableConfig` |

#### put\_writes [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.put_writes "Copy anchor link to this section for reference")

```
put_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Save a list of writes to the in-memory storage.

This method saves a list of writes to the in-memory storage. The writes are associated
with the provided config.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the writes.  **TYPE:** `RunnableConfig` |
| `writes` | The writes to save.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | The updated config containing the saved writes' timestamp.  **TYPE:** `None` |

#### delete\_thread [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.delete_thread "Copy anchor link to this section for reference")

```
delete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### aget\_tuple `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aget_tuple "Copy anchor link to this section for reference")

```
aget_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Asynchronous version of `get_tuple`.

This method is an asynchronous wrapper around `get_tuple` that runs the synchronous
method in a separate thread using asyncio.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

#### alist `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.alist "Copy anchor link to this section for reference")

```
alist(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[CheckpointTuple]
```

Asynchronous version of `list`.

This method is an asynchronous wrapper around `list` that runs the synchronous
method in a separate thread using asyncio.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for listing the checkpoints.  **TYPE:** `RunnableConfig | None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[CheckpointTuple]` | An asynchronous iterator of checkpoint tuples. |

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aput "Copy anchor link to this section for reference")

```
aput(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Asynchronous version of `put`.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New versions as of this write  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | The updated config containing the saved checkpoint's timestamp.  **TYPE:** `RunnableConfig` |

#### aput\_writes `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aput_writes "Copy anchor link to this section for reference")

```
aput_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Asynchronous version of `put_writes`.

This method is an asynchronous wrapper around `put_writes` that runs the synchronous
method in a separate thread using asyncio.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the writes.  **TYPE:** `RunnableConfig` |
| `writes` | The writes to save, each as a (channel, value) pair.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### adelete\_thread `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.adelete_thread "Copy anchor link to this section for reference")

```
adelete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### get\_next\_version [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get_next_version "Copy anchor link to this section for reference")

```
get_next_version(current: str | None, channel: None) -> str
```

Generate the next version ID for a channel.

Default is to use integer versions, incrementing by `1`.

If you override, you can use `str`/`int`/`float` versions, as long as they are monotonically increasing.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `current` | The current version identifier (`int`, `float`, or `str`).  **TYPE:** `V | None` |
| `channel` | Deprecated argument, kept for backwards compatibility.  **TYPE:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `V` | The next version identifier, which must be increasing.  **TYPE:** `V` |

#### get [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.get "Copy anchor link to this section for reference")

```
get(config: RunnableConfig) -> Checkpoint | None
```

Fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.InMemorySaver.aget "Copy anchor link to this section for reference")

```
aget(config: RunnableConfig) -> Checkpoint | None
```

Asynchronously fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

### PersistentDict [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.PersistentDict "Copy anchor link to this section for reference")

Bases: `defaultdict`

Persistent dictionary with an API compatible with shelve and anydbm.

The dict is kept in memory, so the dictionary operations run as fast as
a regular dictionary.

Write to disk is delayed until close or sync (similar to gdbm's fast mode).

Input file format is automatically discovered.
Output file format is selectable between pickle, json, and csv.
All three serialization formats are backed by fast C implementations.

Adapted from <https://code.activestate.com/recipes/576642-persistent-dict-with-multiple-standard-file-format/>

| METHOD | DESCRIPTION |
| --- | --- |
| `sync` | Write dict to disk |

#### sync [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.memory.PersistentDict.sync "Copy anchor link to this section for reference")

```
sync() -> None
```

Write dict to disk

## sqlite [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite "Copy anchor link to this section for reference")

### SqliteSaver [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver "Copy anchor link to this section for reference")

Bases: `BaseCheckpointSaver[str]`

A checkpoint saver that stores checkpoints in a SQLite database.

Note

This class is meant for lightweight, synchronous use cases
(demos and small projects) and does not
scale to multiple threads.
For a similar sqlite saver with `async` support,
consider using [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">AsyncSqliteSaver</span>").

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn` | The SQLite database connection.  **TYPE:** `Connection` |
| `serde` | The serializer to use for serializing and deserializing checkpoints. Defaults to JsonPlusSerializerCompat.  **TYPE:** `Optional[SerializerProtocol]`  **DEFAULT:** `None` |

Examples:

```
>>> import sqlite3
>>> from langgraph.checkpoint.sqlite import SqliteSaver
>>> from langgraph.graph import StateGraph
>>>
>>> builder = StateGraph(int)
>>> builder.add_node("add_one", lambda x: x + 1)
>>> builder.set_entry_point("add_one")
>>> builder.set_finish_point("add_one")
>>> # Create a new SqliteSaver instance
>>> # Note: check_same_thread=False is OK as the implementation uses a lock
>>> # to ensure thread safety.
>>> conn = sqlite3.connect("checkpoints.sqlite", check_same_thread=False)
>>> memory = SqliteSaver(conn)
>>> graph = builder.compile(checkpointer=memory)
>>> config = {"configurable": {"thread_id": "1"}}
>>> graph.get_state(config)
>>> result = graph.invoke(3, config)
>>> graph.get_state(config)
StateSnapshot(values=4, next=(), config={'configurable': {'thread_id': '1', 'checkpoint_ns': '', 'checkpoint_id': '0c62ca34-ac19-445d-bbb0-5b4984975b2a'}}, parent_config=None)
```

| METHOD | DESCRIPTION |
| --- | --- |
| `from_conn_string` | Create a new SqliteSaver instance from a connection string. |
| `setup` | Set up the checkpoint database. |
| `cursor` | Get a cursor for the SQLite database. |
| `get_tuple` | Get a checkpoint tuple from the database. |
| `list` | List checkpoints from the database. |
| `put` | Save a checkpoint to the database. |
| `put_writes` | Store intermediate writes linked to a checkpoint. |
| `delete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `aget_tuple` | Get a checkpoint tuple from the database asynchronously. |
| `alist` | List checkpoints from the database asynchronously. |
| `aput` | Save a checkpoint to the database asynchronously. |
| `get_next_version` | Generate the next version ID for a channel. |
| `get` | Fetch a checkpoint using the given configuration. |
| `aget` | Asynchronously fetch a checkpoint using the given configuration. |
| `aput_writes` | Asynchronously store intermediate writes linked to a checkpoint. |
| `adelete_thread` | Delete all checkpoints and writes associated with a specific thread ID. |

#### config\_specs `property` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.config_specs "Copy anchor link to this section for reference")

```
config_specs: list
```

Define the configuration options for the checkpoint saver.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list` | List of configuration field specs.  **TYPE:** `list` |

#### from\_conn\_string `classmethod` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.from_conn_string "Copy anchor link to this section for reference")

```
from_conn_string(conn_string: str) -> Iterator[SqliteSaver]
```

Create a new SqliteSaver instance from a connection string.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn_string` | The SQLite connection string.  **TYPE:** `str` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `SqliteSaver` | A new SqliteSaver instance.  **TYPE::** `SqliteSaver` |

Examples:

```
In memory:

    with SqliteSaver.from_conn_string(":memory:") as memory:
        ...

To disk:

    with SqliteSaver.from_conn_string("checkpoints.sqlite") as memory:
        ...
```

#### setup [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.setup "Copy anchor link to this section for reference")

```
setup() -> None
```

Set up the checkpoint database.

This method creates the necessary tables in the SQLite database if they don't
already exist. It is called automatically when needed and should not be called
directly by the user.

#### cursor [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.cursor "Copy anchor link to this section for reference")

```
cursor(transaction: bool = True) -> Iterator[Cursor]
```

Get a cursor for the SQLite database.

This method returns a cursor for the SQLite database. It is used internally
by the SqliteSaver and should not be called directly by the user.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `transaction` | Whether to commit the transaction when the cursor is closed. Defaults to True.  **TYPE:** `bool`  **DEFAULT:** `True` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `Cursor` | sqlite3.Cursor: A cursor for the SQLite database. |

#### get\_tuple [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get_tuple "Copy anchor link to this section for reference")

```
get_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database.

This method retrieves a checkpoint tuple from the SQLite database based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and checkpoint ID is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

Examples:

```
Basic:
>>> config = {"configurable": {"thread_id": "1"}}
>>> checkpoint_tuple = memory.get_tuple(config)
>>> print(checkpoint_tuple)
CheckpointTuple(...)

With checkpoint ID:

>>> config = {
...    "configurable": {
...        "thread_id": "1",
...        "checkpoint_ns": "",
...        "checkpoint_id": "1ef4f797-8335-6428-8001-8a1503f9b875",
...    }
... }
>>> checkpoint_tuple = memory.get_tuple(config)
>>> print(checkpoint_tuple)
CheckpointTuple(...)
```

#### list [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.list "Copy anchor link to this section for reference")

```
list(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[CheckpointTuple]
```

List checkpoints from the database.

This method retrieves a list of checkpoint tuples from the SQLite database based
on the provided config. The checkpoints are ordered by checkpoint ID in descending order (newest first).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for listing the checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | If provided, only checkpoints before the specified checkpoint ID are returned.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | The maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple` | An iterator of checkpoint tuples. |

Examples:

```
>>> from langgraph.checkpoint.sqlite import SqliteSaver
>>> with SqliteSaver.from_conn_string(":memory:") as memory:
... # Run a graph, then list the checkpoints
>>>     config = {"configurable": {"thread_id": "1"}}
>>>     checkpoints = list(memory.list(config, limit=2))
>>> print(checkpoints)
[CheckpointTuple(...), CheckpointTuple(...)]
```

```
>>> config = {"configurable": {"thread_id": "1"}}
>>> before = {"configurable": {"checkpoint_id": "1ef4f797-8335-6428-8001-8a1503f9b875"}}
>>> with SqliteSaver.from_conn_string(":memory:") as memory:
... # Run a graph, then list the checkpoints
>>>     checkpoints = list(memory.list(config, before=before))
>>> print(checkpoints)
[CheckpointTuple(...), ...]
```

#### put [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.put "Copy anchor link to this section for reference")

```
put(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database.

This method saves a checkpoint to the SQLite database. The checkpoint is associated
with the provided config and its parent config (if any).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

Examples:

```
>>> from langgraph.checkpoint.sqlite import SqliteSaver
>>> with SqliteSaver.from_conn_string(":memory:") as memory:
>>>     config = {"configurable": {"thread_id": "1", "checkpoint_ns": ""}}
>>>     checkpoint = {"ts": "2024-05-04T06:32:42.235444+00:00", "id": "1ef4f797-8335-6428-8001-8a1503f9b875", "channel_values": {"key": "value"}}
>>>     saved_config = memory.put(config, checkpoint, {"source": "input", "step": 1, "writes": {"key": "value"}}, {})
>>> print(saved_config)
{'configurable': {'thread_id': '1', 'checkpoint_ns': '', 'checkpoint_id': '1ef4f797-8335-6428-8001-8a1503f9b875'}}
```

#### put\_writes [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.put_writes "Copy anchor link to this section for reference")

```
put_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint.

This method saves intermediate writes associated with a checkpoint to the SQLite database.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store, each as (channel, value) pair.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

#### delete\_thread [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.delete_thread "Copy anchor link to this section for reference")

```
delete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### aget\_tuple `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aget_tuple "Copy anchor link to this section for reference")

```
aget_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database asynchronously.

Note

This async method is not supported by the SqliteSaver class.
Use get\_tuple() instead, or consider using [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">AsyncSqliteSaver</span>").

#### alist `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.alist "Copy anchor link to this section for reference")

```
alist(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[CheckpointTuple]
```

List checkpoints from the database asynchronously.

Note

This async method is not supported by the SqliteSaver class.
Use list() instead, or consider using [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">AsyncSqliteSaver</span>").

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aput "Copy anchor link to this section for reference")

```
aput(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database asynchronously.

Note

This async method is not supported by the SqliteSaver class.
Use put() instead, or consider using [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver "<code class=\"doc-symbol doc-symbol-heading doc-symbol-class\"></code>            <span class=\"doc doc-object-name doc-class-name\">AsyncSqliteSaver</span>").

#### get\_next\_version [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get_next_version "Copy anchor link to this section for reference")

```
get_next_version(current: str | None, channel: None) -> str
```

Generate the next version ID for a channel.

This method creates a new version identifier for a channel based on its current version.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `current` | The current version identifier of the channel.  **TYPE:** `Optional[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The next version identifier, which is guaranteed to be monotonically increasing.  **TYPE:** `str` |

#### get [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.get "Copy anchor link to this section for reference")

```
get(config: RunnableConfig) -> Checkpoint | None
```

Fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aget "Copy anchor link to this section for reference")

```
aget(config: RunnableConfig) -> Checkpoint | None
```

Asynchronously fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aput\_writes `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.aput_writes "Copy anchor link to this section for reference")

```
aput_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Asynchronously store intermediate writes linked to a checkpoint.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### adelete\_thread `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.SqliteSaver.adelete_thread "Copy anchor link to this section for reference")

```
adelete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a specific thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID whose checkpoints should be deleted.  **TYPE:** `str` |

## aio [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio "Copy anchor link to this section for reference")

### AsyncSqliteSaver [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver "Copy anchor link to this section for reference")

Bases: `BaseCheckpointSaver[str]`

An asynchronous checkpoint saver that stores checkpoints in a SQLite database.

This class provides an asynchronous interface for saving and retrieving checkpoints
using a SQLite database. It's designed for use in asynchronous environments and
offers better performance for I/O-bound operations compared to synchronous alternatives.

| ATTRIBUTE | DESCRIPTION |
| --- | --- |
| `conn` | The asynchronous SQLite database connection.  **TYPE:** `Connection` |
| `serde` | The serializer used for encoding/decoding checkpoints.  **TYPE:** `SerializerProtocol` |

Tip

Requires the [aiosqlite](https://pypi.org/project/aiosqlite/) package.
Install it with `pip install aiosqlite`.


Warning

While this class supports asynchronous checkpointing, it is not recommended
for production workloads due to limitations in SQLite's write performance.
For production use, consider a more robust database like PostgreSQL.


Tip

Remember to **close the database connection** after executing your code,
otherwise, you may see the graph "hang" after execution (since the program
will not exit until the connection is closed).

The easiest way is to use the `async with` statement as shown in the examples.

```
async with AsyncSqliteSaver.from_conn_string("checkpoints.sqlite") as saver:
    # Your code here
    graph = builder.compile(checkpointer=saver)
    config = {"configurable": {"thread_id": "thread-1"}}
    async for event in graph.astream_events(..., config, version="v1"):
        print(event)
```

Examples:

Usage within StateGraph:

```
>>> import asyncio
>>>
>>> from langgraph.checkpoint.sqlite.aio import AsyncSqliteSaver
>>> from langgraph.graph import StateGraph
>>>
>>> async def main():
>>>     builder = StateGraph(int)
>>>     builder.add_node("add_one", lambda x: x + 1)
>>>     builder.set_entry_point("add_one")
>>>     builder.set_finish_point("add_one")
>>>     async with AsyncSqliteSaver.from_conn_string("checkpoints.db") as memory:
>>>         graph = builder.compile(checkpointer=memory)
>>>         coro = graph.ainvoke(1, {"configurable": {"thread_id": "thread-1"}})
>>>         print(await asyncio.gather(coro))
>>>
>>> asyncio.run(main())
Output: [2]
```

Raw usage:

```
>>> import asyncio
>>> import aiosqlite
>>> from langgraph.checkpoint.sqlite.aio import AsyncSqliteSaver
>>>
>>> async def main():
>>>     async with aiosqlite.connect("checkpoints.db") as conn:
...         saver = AsyncSqliteSaver(conn)
...         config = {"configurable": {"thread_id": "1", "checkpoint_ns": ""}}
...         checkpoint = {"ts": "2023-05-03T10:00:00Z", "data": {"key": "value"}, "id": "0c62ca34-ac19-445d-bbb0-5b4984975b2a"}
...         saved_config = await saver.aput(config, checkpoint, {}, {})
...         print(saved_config)
>>> asyncio.run(main())
{'configurable': {'thread_id': '1', 'checkpoint_ns': '', 'checkpoint_id': '0c62ca34-ac19-445d-bbb0-5b4984975b2a'}}
```

| METHOD | DESCRIPTION |
| --- | --- |
| `from_conn_string` | Create a new AsyncSqliteSaver instance from a connection string. |
| `get_tuple` | Get a checkpoint tuple from the database. |
| `list` | List checkpoints from the database asynchronously. |
| `put` | Save a checkpoint to the database. |
| `put_writes` | Store intermediate writes linked to a checkpoint. |
| `delete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `setup` | Set up the checkpoint database asynchronously. |
| `aget_tuple` | Get a checkpoint tuple from the database asynchronously. |
| `alist` | List checkpoints from the database asynchronously. |
| `aput` | Save a checkpoint to the database asynchronously. |
| `aput_writes` | Store intermediate writes linked to a checkpoint asynchronously. |
| `adelete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `get_next_version` | Generate the next version ID for a channel. |
| `get` | Fetch a checkpoint using the given configuration. |
| `aget` | Asynchronously fetch a checkpoint using the given configuration. |

#### config\_specs `property` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.config_specs "Copy anchor link to this section for reference")

```
config_specs: list
```

Define the configuration options for the checkpoint saver.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list` | List of configuration field specs.  **TYPE:** `list` |

#### from\_conn\_string `async` `classmethod` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.from_conn_string "Copy anchor link to this section for reference")

```
from_conn_string(conn_string: str) -> AsyncIterator[AsyncSqliteSaver]
```

Create a new AsyncSqliteSaver instance from a connection string.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn_string` | The SQLite connection string.  **TYPE:** `str` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncSqliteSaver` | A new AsyncSqliteSaver instance.  **TYPE::** `AsyncIterator[AsyncSqliteSaver]` |

#### get\_tuple [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get_tuple "Copy anchor link to this section for reference")

```
get_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database.

This method retrieves a checkpoint tuple from the SQLite database based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and checkpoint ID is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

#### list [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.list "Copy anchor link to this section for reference")

```
list(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[CheckpointTuple]
```

List checkpoints from the database asynchronously.

This method retrieves a list of checkpoint tuples from the SQLite database based
on the provided config. The checkpoints are ordered by checkpoint ID in descending order (newest first).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | If provided, only checkpoints before the specified checkpoint ID are returned.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple` | An iterator of matching checkpoint tuples. |

#### put [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.put "Copy anchor link to this section for reference")

```
put(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database.

This method saves a checkpoint to the SQLite database. The checkpoint is associated
with the provided config and its parent config (if any).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

#### put\_writes [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.put_writes "Copy anchor link to this section for reference")

```
put_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### delete\_thread [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.delete_thread "Copy anchor link to this section for reference")

```
delete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### setup `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.setup "Copy anchor link to this section for reference")

```
setup() -> None
```

Set up the checkpoint database asynchronously.

This method creates the necessary tables in the SQLite database if they don't
already exist. It is called automatically when needed and should not be called
directly by the user.

#### aget\_tuple `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aget_tuple "Copy anchor link to this section for reference")

```
aget_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database asynchronously.

This method retrieves a checkpoint tuple from the SQLite database based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and checkpoint ID is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

#### alist `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.alist "Copy anchor link to this section for reference")

```
alist(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[CheckpointTuple]
```

List checkpoints from the database asynchronously.

This method retrieves a list of checkpoint tuples from the SQLite database based
on the provided config. The checkpoints are ordered by checkpoint ID in descending order (newest first).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | If provided, only checkpoints before the specified checkpoint ID are returned.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[CheckpointTuple]` | An asynchronous iterator of matching checkpoint tuples. |

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aput "Copy anchor link to this section for reference")

```
aput(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database asynchronously.

This method saves a checkpoint to the SQLite database. The checkpoint is associated
with the provided config and its parent config (if any).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

#### aput\_writes `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aput_writes "Copy anchor link to this section for reference")

```
aput_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint asynchronously.

This method saves intermediate writes associated with a checkpoint to the database.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store, each as (channel, value) pair.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

#### adelete\_thread `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.adelete_thread "Copy anchor link to this section for reference")

```
adelete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### get\_next\_version [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get_next_version "Copy anchor link to this section for reference")

```
get_next_version(current: str | None, channel: None) -> str
```

Generate the next version ID for a channel.

This method creates a new version identifier for a channel based on its current version.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `current` | The current version identifier of the channel.  **TYPE:** `Optional[str]` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `str` | The next version identifier, which is guaranteed to be monotonically increasing.  **TYPE:** `str` |

#### get [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.get "Copy anchor link to this section for reference")

```
get(config: RunnableConfig) -> Checkpoint | None
```

Fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.sqlite.aio.AsyncSqliteSaver.aget "Copy anchor link to this section for reference")

```
aget(config: RunnableConfig) -> Checkpoint | None
```

Asynchronously fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

## postgres [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres "Copy anchor link to this section for reference")

### PostgresSaver [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver "Copy anchor link to this section for reference")

Bases: `BasePostgresSaver`

Checkpointer that stores checkpoints in a Postgres database.

| METHOD | DESCRIPTION |
| --- | --- |
| `from_conn_string` | Create a new PostgresSaver instance from a connection string. |
| `setup` | Set up the checkpoint database asynchronously. |
| `list` | List checkpoints from the database. |
| `get_tuple` | Get a checkpoint tuple from the database. |
| `put` | Save a checkpoint to the database. |
| `put_writes` | Store intermediate writes linked to a checkpoint. |
| `delete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `get` | Fetch a checkpoint using the given configuration. |
| `aget` | Asynchronously fetch a checkpoint using the given configuration. |
| `aget_tuple` | Asynchronously fetch a checkpoint tuple using the given configuration. |
| `alist` | Asynchronously list checkpoints that match the given criteria. |
| `aput` | Asynchronously store a checkpoint with its configuration and metadata. |
| `aput_writes` | Asynchronously store intermediate writes linked to a checkpoint. |
| `adelete_thread` | Delete all checkpoints and writes associated with a specific thread ID. |
| `get_next_version` | Generate the next version ID for a channel. |

#### config\_specs `property` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.config_specs "Copy anchor link to this section for reference")

```
config_specs: list
```

Define the configuration options for the checkpoint saver.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list` | List of configuration field specs.  **TYPE:** `list` |

#### from\_conn\_string `classmethod` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.from_conn_string "Copy anchor link to this section for reference")

```
from_conn_string(
    conn_string: str, *, pipeline: bool = False
) -> Iterator[PostgresSaver]
```

Create a new PostgresSaver instance from a connection string.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn_string` | The Postgres connection info string.  **TYPE:** `str` |
| `pipeline` | whether to use Pipeline  **TYPE:** `bool`  **DEFAULT:** `False` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `PostgresSaver` | A new PostgresSaver instance.  **TYPE:** `Iterator[PostgresSaver]` |

#### setup [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.setup "Copy anchor link to this section for reference")

```
setup() -> None
```

Set up the checkpoint database asynchronously.

This method creates the necessary tables in the Postgres database if they don't
already exist and runs database migrations. It MUST be called directly by the user
the first time checkpointer is used.

#### list [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.list "Copy anchor link to this section for reference")

```
list(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[CheckpointTuple]
```

List checkpoints from the database.

This method retrieves a list of checkpoint tuples from the Postgres database based
on the provided config. The checkpoints are ordered by checkpoint ID in descending order (newest first).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for listing the checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | If provided, only checkpoints before the specified checkpoint ID are returned.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | The maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple` | An iterator of checkpoint tuples. |

Examples:

```
>>> from langgraph.checkpoint.postgres import PostgresSaver
>>> DB_URI = "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable"
>>> with PostgresSaver.from_conn_string(DB_URI) as memory:
... # Run a graph, then list the checkpoints
>>>     config = {"configurable": {"thread_id": "1"}}
>>>     checkpoints = list(memory.list(config, limit=2))
>>> print(checkpoints)
[CheckpointTuple(...), CheckpointTuple(...)]
```

```
>>> config = {"configurable": {"thread_id": "1"}}
>>> before = {"configurable": {"checkpoint_id": "1ef4f797-8335-6428-8001-8a1503f9b875"}}
>>> with PostgresSaver.from_conn_string(DB_URI) as memory:
... # Run a graph, then list the checkpoints
>>>     checkpoints = list(memory.list(config, before=before))
>>> print(checkpoints)
[CheckpointTuple(...), ...]
```

#### get\_tuple [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get_tuple "Copy anchor link to this section for reference")

```
get_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database.

This method retrieves a checkpoint tuple from the Postgres database based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and timestamp is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

Examples:

```
Basic:
>>> config = {"configurable": {"thread_id": "1"}}
>>> checkpoint_tuple = memory.get_tuple(config)
>>> print(checkpoint_tuple)
CheckpointTuple(...)

With timestamp:

>>> config = {
...    "configurable": {
...        "thread_id": "1",
...        "checkpoint_ns": "",
...        "checkpoint_id": "1ef4f797-8335-6428-8001-8a1503f9b875",
...    }
... }
>>> checkpoint_tuple = memory.get_tuple(config)
>>> print(checkpoint_tuple)
CheckpointTuple(...)
```

#### put [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.put "Copy anchor link to this section for reference")

```
put(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database.

This method saves a checkpoint to the Postgres database. The checkpoint is associated
with the provided config and its parent config (if any).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

Examples:

```
>>> from langgraph.checkpoint.postgres import PostgresSaver
>>> DB_URI = "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable"
>>> with PostgresSaver.from_conn_string(DB_URI) as memory:
>>>     config = {"configurable": {"thread_id": "1", "checkpoint_ns": ""}}
>>>     checkpoint = {"ts": "2024-05-04T06:32:42.235444+00:00", "id": "1ef4f797-8335-6428-8001-8a1503f9b875", "channel_values": {"key": "value"}}
>>>     saved_config = memory.put(config, checkpoint, {"source": "input", "step": 1, "writes": {"key": "value"}}, {})
>>> print(saved_config)
{'configurable': {'thread_id': '1', 'checkpoint_ns': '', 'checkpoint_id': '1ef4f797-8335-6428-8001-8a1503f9b875'}}
```

#### put\_writes [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.put_writes "Copy anchor link to this section for reference")

```
put_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint.

This method saves intermediate writes associated with a checkpoint to the Postgres database.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |

#### delete\_thread [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.delete_thread "Copy anchor link to this section for reference")

```
delete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### get [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get "Copy anchor link to this section for reference")

```
get(config: RunnableConfig) -> Checkpoint | None
```

Fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aget "Copy anchor link to this section for reference")

```
aget(config: RunnableConfig) -> Checkpoint | None
```

Asynchronously fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget\_tuple `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aget_tuple "Copy anchor link to this section for reference")

```
aget_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Asynchronously fetch a checkpoint tuple using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The requested checkpoint tuple, or `None` if not found. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### alist `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.alist "Copy anchor link to this section for reference")

```
alist(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[CheckpointTuple]
```

Asynchronously list checkpoints that match the given criteria.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | List checkpoints created before this configuration.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[CheckpointTuple]` | Async iterator of matching checkpoint tuples. |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aput "Copy anchor link to this section for reference")

```
aput(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Asynchronously store a checkpoint with its configuration and metadata.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration for the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to store.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata for the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### aput\_writes `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.aput_writes "Copy anchor link to this section for reference")

```
aput_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Asynchronously store intermediate writes linked to a checkpoint.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

| RAISES | DESCRIPTION |
| --- | --- |
| `NotImplementedError` | Implement this method in your custom checkpoint saver. |

#### adelete\_thread `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.adelete_thread "Copy anchor link to this section for reference")

```
adelete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a specific thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID whose checkpoints should be deleted.  **TYPE:** `str` |

#### get\_next\_version [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.PostgresSaver.get_next_version "Copy anchor link to this section for reference")

```
get_next_version(current: str | None, channel: None) -> str
```

Generate the next version ID for a channel.

Default is to use integer versions, incrementing by `1`.

If you override, you can use `str`/`int`/`float` versions, as long as they are monotonically increasing.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `current` | The current version identifier (`int`, `float`, or `str`).  **TYPE:** `V | None` |
| `channel` | Deprecated argument, kept for backwards compatibility.  **TYPE:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `V` | The next version identifier, which must be increasing.  **TYPE:** `V` |

## aio [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio "Copy anchor link to this section for reference")

### AsyncPostgresSaver [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver "Copy anchor link to this section for reference")

Bases: `BasePostgresSaver`

Asynchronous checkpointer that stores checkpoints in a Postgres database.

| METHOD | DESCRIPTION |
| --- | --- |
| `from_conn_string` | Create a new AsyncPostgresSaver instance from a connection string. |
| `setup` | Set up the checkpoint database asynchronously. |
| `alist` | List checkpoints from the database asynchronously. |
| `aget_tuple` | Get a checkpoint tuple from the database asynchronously. |
| `aput` | Save a checkpoint to the database asynchronously. |
| `aput_writes` | Store intermediate writes linked to a checkpoint asynchronously. |
| `adelete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `list` | List checkpoints from the database. |
| `get_tuple` | Get a checkpoint tuple from the database. |
| `put` | Save a checkpoint to the database. |
| `put_writes` | Store intermediate writes linked to a checkpoint. |
| `delete_thread` | Delete all checkpoints and writes associated with a thread ID. |
| `get` | Fetch a checkpoint using the given configuration. |
| `aget` | Asynchronously fetch a checkpoint using the given configuration. |
| `get_next_version` | Generate the next version ID for a channel. |

#### config\_specs `property` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.config_specs "Copy anchor link to this section for reference")

```
config_specs: list
```

Define the configuration options for the checkpoint saver.

| RETURNS | DESCRIPTION |
| --- | --- |
| `list` | List of configuration field specs.  **TYPE:** `list` |

#### from\_conn\_string `async` `classmethod` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.from_conn_string "Copy anchor link to this section for reference")

```
from_conn_string(
    conn_string: str, *, pipeline: bool = False, serde: SerializerProtocol | None = None
) -> AsyncIterator[AsyncPostgresSaver]
```

Create a new AsyncPostgresSaver instance from a connection string.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `conn_string` | The Postgres connection info string.  **TYPE:** `str` |
| `pipeline` | whether to use AsyncPipeline  **TYPE:** `bool`  **DEFAULT:** `False` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `AsyncPostgresSaver` | A new AsyncPostgresSaver instance.  **TYPE:** `AsyncIterator[AsyncPostgresSaver]` |

#### setup `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.setup "Copy anchor link to this section for reference")

```
setup() -> None
```

Set up the checkpoint database asynchronously.

This method creates the necessary tables in the Postgres database if they don't
already exist and runs database migrations. It MUST be called directly by the user
the first time checkpointer is used.

#### alist `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.alist "Copy anchor link to this section for reference")

```
alist(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> AsyncIterator[CheckpointTuple]
```

List checkpoints from the database asynchronously.

This method retrieves a list of checkpoint tuples from the Postgres database based
on the provided config. The checkpoints are ordered by checkpoint ID in descending order (newest first).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | If provided, only checkpoints before the specified checkpoint ID are returned.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `AsyncIterator[CheckpointTuple]` | An asynchronous iterator of matching checkpoint tuples. |

#### aget\_tuple `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aget_tuple "Copy anchor link to this section for reference")

```
aget_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database asynchronously.

This method retrieves a checkpoint tuple from the Postgres database based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and "checkpoint\_id" is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

#### aput `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aput "Copy anchor link to this section for reference")

```
aput(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database asynchronously.

This method saves a checkpoint to the Postgres database. The checkpoint is associated
with the provided config and its parent config (if any).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

#### aput\_writes `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aput_writes "Copy anchor link to this section for reference")

```
aput_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint asynchronously.

This method saves intermediate writes associated with a checkpoint to the database.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store, each as (channel, value) pair.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |

#### adelete\_thread `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.adelete_thread "Copy anchor link to this section for reference")

```
adelete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### list [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.list "Copy anchor link to this section for reference")

```
list(
    config: RunnableConfig | None,
    *,
    filter: dict[str, Any] | None = None,
    before: RunnableConfig | None = None,
    limit: int | None = None,
) -> Iterator[CheckpointTuple]
```

List checkpoints from the database.

This method retrieves a list of checkpoint tuples from the Postgres database based
on the provided config. The checkpoints are ordered by checkpoint ID in descending order (newest first).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Base configuration for filtering checkpoints.  **TYPE:** `RunnableConfig | None` |
| `filter` | Additional filtering criteria for metadata.  **TYPE:** `dict[str, Any] | None`  **DEFAULT:** `None` |
| `before` | If provided, only checkpoints before the specified checkpoint ID are returned.  **TYPE:** `RunnableConfig | None`  **DEFAULT:** `None` |
| `limit` | Maximum number of checkpoints to return.  **TYPE:** `int | None`  **DEFAULT:** `None` |

| YIELDS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple` | An iterator of matching checkpoint tuples. |

#### get\_tuple [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get_tuple "Copy anchor link to this section for reference")

```
get_tuple(config: RunnableConfig) -> CheckpointTuple | None
```

Get a checkpoint tuple from the database.

This method retrieves a checkpoint tuple from the Postgres database based on the
provided config. If the config contains a `checkpoint_id` key, the checkpoint with
the matching thread ID and "checkpoint\_id" is retrieved. Otherwise, the latest checkpoint
for the given thread ID is retrieved.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to use for retrieving the checkpoint.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `CheckpointTuple | None` | The retrieved checkpoint tuple, or None if no matching checkpoint was found. |

#### put [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.put "Copy anchor link to this section for reference")

```
put(
    config: RunnableConfig,
    checkpoint: Checkpoint,
    metadata: CheckpointMetadata,
    new_versions: ChannelVersions,
) -> RunnableConfig
```

Save a checkpoint to the database.

This method saves a checkpoint to the Postgres database. The checkpoint is associated
with the provided config and its parent config (if any).

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | The config to associate with the checkpoint.  **TYPE:** `RunnableConfig` |
| `checkpoint` | The checkpoint to save.  **TYPE:** `Checkpoint` |
| `metadata` | Additional metadata to save with the checkpoint.  **TYPE:** `CheckpointMetadata` |
| `new_versions` | New channel versions as of this write.  **TYPE:** `ChannelVersions` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `RunnableConfig` | Updated configuration after storing the checkpoint.  **TYPE:** `RunnableConfig` |

#### put\_writes [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.put_writes "Copy anchor link to this section for reference")

```
put_writes(
    config: RunnableConfig,
    writes: Sequence[tuple[str, Any]],
    task_id: str,
    task_path: str = "",
) -> None
```

Store intermediate writes linked to a checkpoint.

This method saves intermediate writes associated with a checkpoint to the database.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration of the related checkpoint.  **TYPE:** `RunnableConfig` |
| `writes` | List of writes to store, each as (channel, value) pair.  **TYPE:** `Sequence[tuple[str, Any]]` |
| `task_id` | Identifier for the task creating the writes.  **TYPE:** `str` |
| `task_path` | Path of the task creating the writes.  **TYPE:** `str`  **DEFAULT:** `''` |

#### delete\_thread [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.delete_thread "Copy anchor link to this section for reference")

```
delete_thread(thread_id: str) -> None
```

Delete all checkpoints and writes associated with a thread ID.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `thread_id` | The thread ID to delete.  **TYPE:** `str` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `None` | None |

#### get [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get "Copy anchor link to this section for reference")

```
get(config: RunnableConfig) -> Checkpoint | None
```

Fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### aget `async` [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.aget "Copy anchor link to this section for reference")

```
aget(config: RunnableConfig) -> Checkpoint | None
```

Asynchronously fetch a checkpoint using the given configuration.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `config` | Configuration specifying which checkpoint to retrieve.  **TYPE:** `RunnableConfig` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `Checkpoint | None` | The requested checkpoint, or `None` if not found. |

#### get\_next\_version [¶](https://reference.langchain.com/python/langgraph/checkpoints/#langgraph.checkpoint.postgres.aio.AsyncPostgresSaver.get_next_version "Copy anchor link to this section for reference")

```
get_next_version(current: str | None, channel: None) -> str
```

Generate the next version ID for a channel.

Default is to use integer versions, incrementing by `1`.

If you override, you can use `str`/`int`/`float` versions, as long as they are monotonically increasing.

| PARAMETER | DESCRIPTION |
| --- | --- |
| `current` | The current version identifier (`int`, `float`, or `str`).  **TYPE:** `V | None` |
| `channel` | Deprecated argument, kept for backwards compatibility.  **TYPE:** `None` |

| RETURNS | DESCRIPTION |
| --- | --- |
| `V` | The next version identifier, which must be increasing.  **TYPE:** `V` |

Back to top