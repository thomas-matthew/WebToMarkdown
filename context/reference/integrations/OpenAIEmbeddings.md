Classv1.8.3 (latest)●Since v1.3

# OpenAIEmbeddings

OpenAI embedding model integration.

```
OpenAIEmbeddings()
```

## Bases

`BaseModel``Embeddings`

**Setup:**

Install `langchain_openai` and set environment variable `OPENAI_API_KEY`.

```
pip install -U langchain_openai
export OPENAI_API_KEY="your-api-key"
```

Copy

Key init args — embedding params:
model:
Name of OpenAI model to use.
dimensions:
The number of dimensions the resulting output embeddings should have.
Only supported in `'text-embedding-3'` and later models.

Key init args — client params:
api\_key:
OpenAI API key.
organization:
OpenAI organization ID. If not passed in will be read
from env var `OPENAI_ORG_ID`.
max\_retries:
Maximum number of retries to make when generating.
request\_timeout:
Timeout for requests to OpenAI completion API

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

```
from langchain_openai import OpenAIEmbeddings

embed = OpenAIEmbeddings(
    model="text-embedding-3-large"
    # With the `text-embedding-3` class
    # of models, you can specify the size
    # of the embeddings you want returned.
    # dimensions=1024
)
```

Copy

**Embed single text:**

```
input_text = "The meaning of life is 42"
vector = embeddings.embed_query("hello")
print(vector[:3])
```

Copy

```
[-0.024603435769677162, -0.007543657906353474, 0.0039630369283258915]
```

Copy

**Embed multiple texts:**

```
vectors = embeddings.embed_documents(["hello", "goodbye"])
# Showing only the first 3 coordinates
print(len(vectors))
print(vectors[0][:3])
```

Copy

```
2
[-0.024603435769677162, -0.007543657906353474, 0.0039630369283258915]
```

Copy

**Async:**

```
await embed.aembed_query(input_text)
print(vector[:3])

# multiple:
# await embed.aembed_documents(input_texts)
```

Copy

```
[-0.009100092574954033, 0.005071679595857859, -0.0029193938244134188]
```

Copy

When using a non-OpenAI provider, set
`check_embedding_ctx_length=False` to send raw text instead of tokens
(which many providers don't support), and optionally set
`encoding_format` to `'float'` to avoid base64 encoding issues:

```
from langchain_openai import OpenAIEmbeddings

embeddings = OpenAIEmbeddings(
    model="...",
    base_url="...",
    check_embedding_ctx_length=False,
)
```

Copy

## Used in Docs

* [Custom workflow](https://docs.langchain.com/oss/python/langchain/multi-agent/custom-workflow)
* [Astra DB integration](https://docs.langchain.com/oss/python/integrations/vectorstores/astradb)
* [Azure AI Search integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azuresearch)
* [Chroma integration](https://docs.langchain.com/oss/python/integrations/vectorstores/chroma)
* [CockroachDB integrations](https://docs.langchain.com/oss/python/integrations/providers/cockroachdb)

+15 more(2 more not shown)

## Attributes

attribute

client: Any

attribute

async\_client: Any

attribute

model: str

attribute

dimensions: int | None

The number of dimensions the resulting output embeddings should have.

Only supported in `'text-embedding-3'` and later models.

attribute

deployment: str | None

attribute

openai\_api\_version: str | None

Version of the OpenAI API to use.

Automatically inferred from env var `OPENAI_API_VERSION` if not provided.

attribute

openai\_api\_base: str | None

Base URL path for API requests, leave blank if not using a proxy or
service emulator.

Resolution order (first match wins):

1. Explicit `base_url` (or `openai_api_base`) kwarg.
2. Env var `OPENAI_API_BASE` (read by LangChain at init).
3. Env var `OPENAI_BASE_URL` (read by the underlying `openai` SDK client).

attribute

openai\_api\_type: str | None

attribute

openai\_proxy: str | None

attribute

embedding\_ctx\_length: int

The maximum number of tokens to embed at once.

attribute

openai\_api\_key: SecretStr | Callable[[], str] | Callable[[], Awaitable[str]] | None

API key to use for API calls.

Automatically inferred from env var `OPENAI_API_KEY` if not provided.

attribute

openai\_organization: str | None

OpenAI organization ID to use for API calls.

Automatically inferred from env var `OPENAI_ORG_ID` if not provided.

attribute

allowed\_special: Literal['all'] | set[str] | None

attribute

disallowed\_special: Literal['all'] | set[str] | Sequence[str] | None

attribute

chunk\_size: int

Maximum number of texts to embed in each batch

attribute

max\_retries: int

Maximum number of retries to make when generating.

attribute

request\_timeout: float | tuple[float, float] | Any | None

Timeout for requests to OpenAI completion API.

Can be float, `httpx.Timeout` or `None`.

attribute

headers: Any

attribute

tiktoken\_enabled: bool

Set this to False to use HuggingFace `transformers` tokenization.

For non-OpenAI providers (OpenRouter, Ollama, vLLM, etc.), consider setting
`check_embedding_ctx_length=False` instead, as it bypasses tokenization
entirely.

attribute

tiktoken\_model\_name: str | None

The model name to pass to tiktoken when using this class.

Tiktoken is used to count the number of tokens in documents to constrain
them to be under a certain limit.

By default, when set to `None`, this will be the same as the embedding model
name. However, there are some cases where you may want to use this
`Embedding` class with a model name not supported by tiktoken. This can
include when using Azure embeddings or when using one of the many model
providers that expose an OpenAI-like API but with different models. In those
cases, in order to avoid erroring when tiktoken is called, you can specify a
model name to use here.

attribute

show\_progress\_bar: bool

Whether to show a progress bar when embedding.

attribute

model\_kwargs: dict[str, Any]

Holds any model parameters valid for `create` call not explicitly specified.

attribute

skip\_empty: bool

Whether to skip empty strings when embedding or raise an error.

attribute

default\_headers: Mapping[str, str] | None

attribute

default\_query: Mapping[str, object] | None

attribute

retry\_min\_seconds: int

Min number of seconds to wait between retries

attribute

retry\_max\_seconds: int

Max number of seconds to wait between retries

attribute

http\_client: Any | None

Optional `httpx.Client`.

Only used for sync invocations. Must specify `http_async_client` as well if
you'd like a custom client for async invocations.

attribute

http\_async\_client: Any | None

Optional `httpx.AsyncClient`.

Only used for async invocations. Must specify `http_client` as well if you'd
like a custom client for sync invocations.

attribute

check\_embedding\_ctx\_length: bool

Whether to check the token length of inputs and automatically split inputs
longer than `embedding_ctx_length`.

Set to `False` to send raw text strings directly to the API instead of
tokenizing. Useful for many non-OpenAI providers (e.g. OpenRouter, Ollama,
vLLM).

attribute

model\_config

## Methods

method

build\_extra

Build extra kwargs from additional params that were passed in.

method

validate\_environment

Validate that api key and python package exists in environment.

method

embed\_documents

Call OpenAI's embedding endpoint to embed search docs.

method

aembed\_documents

Asynchronously call OpenAI's embedding endpoint to embed search docs.

method

embed\_query

Call out to OpenAI's embedding endpoint for embedding query text.

method

aembed\_query

Call out to OpenAI's embedding endpoint async for embedding query text.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/embeddings/base.py#L85)

Version History
