Python[langgraph](/python/langgraph)Checkpointing

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

[Class

### CheckpointMetadata

Metadata associated with a checkpoint.](/python/langgraph.checkpoint/base/CheckpointMetadata)[Class

### BaseCheckpointSaver

Base class for creating a graph checkpointer.](/python/langgraph.checkpoint/base/BaseCheckpointSaver)[Class

### SerializerProtocol

Protocol for serialization and deserialization of objects.](/python/langgraph.checkpoint/serde/base/SerializerProtocol)[Class

### CipherProtocol

Protocol for encryption and decryption of data.](/python/langgraph.checkpoint/serde/base/CipherProtocol)[Class

### JsonPlusSerializer

Serializer that uses ormsgpack, with optional fallbacks.](/python/langgraph.checkpoint/serde/jsonplus/JsonPlusSerializer)[Class

### EncryptedSerializer

Serializer that encrypts and decrypts data using an encryption protocol.](/python/langgraph.checkpoint/serde/encrypted/EncryptedSerializer)[Class

### InMemorySaver

An in-memory checkpoint saver.](/python/langgraph.checkpoint/memory/InMemorySaver)[Class

### PersistentDict

Persistent dictionary with an API compatible with shelve and anydbm.](/python/langgraph.checkpoint/memory/PersistentDict)[Class

### SqliteSaver

A checkpoint saver that stores checkpoints in a SQLite database.](/python/langgraph.checkpoint.sqlite/SqliteSaver)[Class

### AsyncSqliteSaver

An asynchronous checkpoint saver that stores checkpoints in a SQLite database.](/python/langgraph.checkpoint.sqlite/aio/AsyncSqliteSaver)[Class

### PostgresSaver

Checkpointer that stores checkpoints in a Postgres database.](/python/langgraph.checkpoint.postgres/PostgresSaver)[Class

### AsyncPostgresSaver

Asynchronous checkpointer that stores checkpoints in a Postgres database.](/python/langgraph.checkpoint.postgres/aio/AsyncPostgresSaver)

## Functions

[Function

### create\_checkpoint

Build a new Checkpoint from the previous one and live channel state.](/python/langgraph/pregel/_checkpoint/create_checkpoint)

## Modules

[Module

### aio](/python/langgraph.checkpoint.sqlite/aio)[Module

### utils](/python/langgraph.checkpoint.sqlite/utils)

## Constants

[Attribute

### Checkpoint](/python/langgraph/channels/base/Checkpoint)[Attribute

### logger](/python/langgraph.checkpoint/memory/logger)[Attribute

### MemorySaver](/python/langgraph.checkpoint/memory/MemorySaver)[Attribute

### T](/python/langgraph.checkpoint.sqlite/aio/T)

Copy page

### On This Page

OverviewClasses12Functions1Modules2Constants4