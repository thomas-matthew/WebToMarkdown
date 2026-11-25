# Checkpointing

Checkpoints allow LangGraph agents to persist their state within and across multiple interactions. A checkpoint is a snapshot of the graph state at a given point in time, identified by a unique, monotonically increasing ID.

> **Learn more:** For conceptual guides and tutorials on persistence, see the [Persistence documentation](https://langchain-ai.github.io/langgraph/concepts/persistence/).

## Core Concepts

| Concept | Description |
| --- | --- |
| **Checkpoint** | Snapshot of graph state at a point in time, including channel values, channel versions, and version tracking per node |
| **Thread** | A sequence of checkpoints identified by a unique `thread_id`; optionally narrow to a specific checkpoint with `checkpoint_id` |
| **Serde** | Serialization protocol used to encode/decode checkpoint data; defaults to `JsonPlusSerializer` |
| **Pending writes** | Writes from successful nodes preserved when other nodes fail, enabling resumption without re-running completed work |

## Checkpoint Savers

LangGraph provides several checkpoint saver implementations:

| Saver | Package | Async Support | Use Case |
| --- | --- | --- | --- |
| `InMemorySaver` | `langgraph-checkpoint` | Yes | Debugging and testing only |
| `SqliteSaver` | `langgraph-checkpoint-sqlite` | No | Lightweight demos and small projects |
| `AsyncSqliteSaver` | `langgraph-checkpoint-sqlite` | Yes | Async SQLite; not recommended for production |
| `PostgresSaver` | `langgraph-checkpoint-postgres` | No | Production workloads with full checkpoint history |
| `AsyncPostgresSaver` | `langgraph-checkpoint-postgres` | Yes | Async production workloads with full checkpoint history |

## Quick Examples

### In-Memory (Testing)

```
from langgraph.checkpoint.memory import MemorySaver

checkpointer = MemorySaver()
graph = builder.compile(checkpointer=checkpointer)
```

Copy

### PostgreSQL (Production)

```
from langgraph.checkpoint.postgres import PostgresSaver

with PostgresSaver.from_conn_string("postgresql://user:pass@localhost/db") as checkpointer:
    checkpointer.setup()
    graph = builder.compile(checkpointer=checkpointer)
```

Copy

### Async PostgreSQL

```
from langgraph.checkpoint.postgres.aio import AsyncPostgresSaver

async with AsyncPostgresSaver.from_conn_string("postgresql://user:pass@localhost/db") as checkpointer:
    await checkpointer.setup()
    graph = builder.compile(checkpointer=checkpointer)
```

Copy

## Serialization

All checkpoint savers use a serialization protocol to encode and decode checkpoint data. The default serializer is `JsonPlusSerializer`, which uses `ormsgpack` with a fallback to an extended JSON format that handles LangChain/LangGraph types, datetimes, enums, and more.

For sensitive data, wrap any serializer with `EncryptedSerializer` to encrypt checkpoint contents at rest:

```
from langgraph.checkpoint.serde.encrypted import EncryptedSerializer
from langgraph.checkpoint.postgres import PostgresSaver

encrypted_serde = EncryptedSerializer.from_pycryptodome_aes(encryption_key)
checkpointer = PostgresSaver(conn, serde=encrypted_serde)
```

Copy

## Custom Checkpoint Savers

Subclass `BaseCheckpointSaver` and implement the following methods:

* `get_tuple` — Retrieve a specific checkpoint
* `list` — List checkpoints, optionally filtered
* `put` — Store a checkpoint
* `put_writes` — Store pending writes
* `delete_thread` — Delete all checkpoints for a thread

For async usage, implement the corresponding async variants (`aget_tuple`, `alist`, `aput`, `aput_writes`, `adelete_thread`).

## API Reference

## Classes

Class

### [CheckpointMetadata](https://reference.langchain.com/python/langgraph.checkpoint/base/CheckpointMetadata)

Metadata associated with a checkpoint.

Class

### [BaseCheckpointSaver](https://reference.langchain.com/python/langgraph.checkpoint/base/BaseCheckpointSaver)

Base class for creating a graph checkpointer.

Checkpointers allow LangGraph agents to persist their state
within and across multiple interactions.

When a checkpointer is configured, you should pass

Class

### [SerializerProtocol](https://reference.langchain.com/python/langgraph.checkpoint/serde/base/SerializerProtocol)

Protocol for serialization and deserialization of objects.

* `dumps_typed`: Serialize an object to a tuple `(type, bytes)`.
* `loads_typed`: Deserialize an object from a tuple `(type, bytes)`.

Valid

Class

### [CipherProtocol](https://reference.langchain.com/python/langgraph.checkpoint/serde/base/CipherProtocol)

Protocol for encryption and decryption of data.

* `encrypt`: Encrypt plaintext.
* `decrypt`: Decrypt ciphertext.

Class

### [JsonPlusSerializer](https://reference.langchain.com/python/langgraph.checkpoint/serde/jsonplus/JsonPlusSerializer)

Serializer that uses ormsgpack, with optional fallbacks.

Warning

Security note: This serializer is intended for use within the `BaseCheckpointSaver`
class and called within the Pregel lo

Class

### [EncryptedSerializer](https://reference.langchain.com/python/langgraph.checkpoint/serde/encrypted/EncryptedSerializer)

Serializer that encrypts and decrypts data using an encryption protocol.

Class

### [InMemorySaver](https://reference.langchain.com/python/langgraph.checkpoint/memory/InMemorySaver)

An in-memory checkpoint saver.

This checkpoint saver stores checkpoints in memory using a `defaultdict`.

Class

### [PersistentDict](https://reference.langchain.com/python/langgraph.checkpoint/memory/PersistentDict)

Persistent dictionary with an API compatible with shelve and anydbm.

The dict is kept in memory, so the dictionary operations run as fast as
a regular dictionary.

Write to disk is delayed until clos

Class

### [SqliteSaver](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/SqliteSaver)

A checkpoint saver that stores checkpoints in a SQLite database.

Class

### [AsyncSqliteSaver](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/aio/AsyncSqliteSaver)

An asynchronous checkpoint saver that stores checkpoints in a SQLite database.

This class provides an asynchronous interface for saving and retrieving checkpoints
using a SQLite database. It's design

Class

### [PostgresSaver](https://reference.langchain.com/python/langgraph.checkpoint.postgres/PostgresSaver)

Checkpointer that stores checkpoints in a Postgres database.

Class

### [AsyncPostgresSaver](https://reference.langchain.com/python/langgraph.checkpoint.postgres/aio/AsyncPostgresSaver)

Asynchronous checkpointer that stores checkpoints in a Postgres database.

## Functions

Function

### [create_checkpoint](https://reference.langchain.com/python/langgraph/pregel/_checkpoint/create_checkpoint)

Build a new Checkpoint from the previous one and live channel state.

For each name in `channels_to_snapshot`, a `_DeltaSnapshot(value)` blob
is written into `channel_values[k]`. Other delta channels

## Modules

Module

### [utils](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/utils)

Module

### [aio](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/aio)

## Constants

Attribute

### [Checkpoint](https://reference.langchain.com/python/langgraph/channels/base/Checkpoint)

Attribute

### [logger](https://reference.langchain.com/python/langgraph.checkpoint/memory/logger)

Attribute

### [MemorySaver](https://reference.langchain.com/python/langgraph.checkpoint/memory/MemorySaver)

Attribute

### [T](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/aio/T)
