Python[langgraph.store.postgres](/python/langgraph.store.postgres)[aio](/python/langgraph.store.postgres/aio)AsyncPostgresStore

Classv3.1.0 (latest)●Since v1.0

# AsyncPostgresStore

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

Copy

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

Copy

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

Copy

Copy

```
AsyncPostgresStore(
  self,
  conn: _ainternal.Conn,
  *,
  pipe: AsyncPipeline | None = None,
  deserializer: Callable[[bytes | orjson.Fragment], dict[str, Any]] | None = None,
  index: PostgresIndexConfig | None = None,
  ttl: TTLConfig | None = None
)
```

## Bases

`AsyncBatchedBaseStore``BasePostgresStore[_ainternal.Conn]`

**Warning:**

Make sure to:

1. Call `setup()` before first use to create necessary tables and indexes
2. Have the pgvector extension available to use vector search
3. Use Python 3.10+ for async functionality

**Note:**

Semantic search is disabled by default. You can enable it by providing an `index` configuration
when creating the store. Without this configuration, all `index` arguments passed to
`put` or `aput` will have no effect.

**Note:**

If you provide a TTL configuration, you must explicitly call `start_ttl_sweeper()` to begin
the background task that removes expired items. Call `stop_ttl_sweeper()` to properly
clean up resources when you're done with the store.

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| conn | \_ainternal.[Conn](/python/langgraph.checkpoint.postgres/Conn) |
| pipe | AsyncPipeline | None |
| deserializer | [Callable](https://docs.python.org/3/library/typing.html#typing.Callable)[[[bytes](https://docs.python.org/3/library/stdtypes.html#bytes) | orjson.Fragment], [dict](https://docs.python.org/3/library/stdtypes.html#dict)[[str](https://docs.python.org/3/library/stdtypes.html#str), [Any](https://docs.python.org/3/library/typing.html#typing.Any)]] | None |
| index | [PostgresIndexConfig](/python/langgraph.store.postgres/base/PostgresIndexConfig) | None |
| ttl | [TTLConfig](/python/langgraph.store/base/TTLConfig) | None |

## Attributes

[attribute

supports\_ttl: bool](/python/langgraph.store.postgres/aio/AsyncPostgresStore/supports_ttl)[attribute

conn: conn](/python/langgraph.store.postgres/aio/AsyncPostgresStore/conn)[attribute

pipe: pipe](/python/langgraph.store.postgres/aio/AsyncPostgresStore/pipe)[attribute

lock](/python/langgraph.store.postgres/aio/AsyncPostgresStore/lock)[attribute

loop](/python/langgraph.store.postgres/aio/AsyncPostgresStore/loop)[attribute

supports\_pipeline](/python/langgraph.store.postgres/aio/AsyncPostgresStore/supports_pipeline)[attribute

index\_config: index](/python/langgraph.store.postgres/aio/AsyncPostgresStore/index_config)[attribute

embeddings: None](/python/langgraph.store.postgres/aio/AsyncPostgresStore/embeddings)[attribute

ttl\_config: ttl](/python/langgraph.store.postgres/aio/AsyncPostgresStore/ttl_config)

## Methods

[method

abatch](/python/langgraph.store.postgres/aio/AsyncPostgresStore/abatch)[method

from\_conn\_string

Create a new AsyncPostgresStore instance from a connection string.](/python/langgraph.store.postgres/aio/AsyncPostgresStore/from_conn_string)[method

setup

Set up the store database asynchronously.

This method creates the necessary tables in the Postgres database if they don't
already exist and runs database migrations. It MUST be called directly by the user
the first time the store is used.](/python/langgraph.store.postgres/aio/AsyncPostgresStore/setup)[method

sweep\_ttl

Delete expired store items based on TTL.](/python/langgraph.store.postgres/aio/AsyncPostgresStore/sweep_ttl)[method

start\_ttl\_sweeper

Periodically delete expired store items based on TTL.](/python/langgraph.store.postgres/aio/AsyncPostgresStore/start_ttl_sweeper)[method

stop\_ttl\_sweeper

Stop the TTL sweeper task if it's running.](/python/langgraph.store.postgres/aio/AsyncPostgresStore/stop_ttl_sweeper)

## Inherited from[BasePostgresStore](/python/langgraph.store.postgres/base/BasePostgresStore)

### Attributes

[AMIGRATIONS: MIGRATIONS](/python/langgraph.store.postgres/base/BasePostgresStore/MIGRATIONS)[AVECTOR\_MIGRATIONS: VECTOR\_MIGRATIONS](/python/langgraph.store.postgres/base/BasePostgresStore/VECTOR_MIGRATIONS)

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/5931a5f0b313feff24e2516a586c55601b868ac1/libs/checkpoint-postgres/langgraph/store/postgres/aio.py#L42)

Version History

Copy page

### On This Page

Constructors

C\_\_init\_\_

Attributes

Asupports\_ttlAconnApipeAlockAloopAsupports\_pipelineAindex\_configAembeddingsAttl\_config

Methods

MabatchMfrom\_conn\_stringMsetupMsweep\_ttlMstart\_ttl\_sweeperMstop\_ttl\_sweeper

from BasePostgresStore

AAttributes

AMIGRATIONSAVECTOR\_MIGRATIONS