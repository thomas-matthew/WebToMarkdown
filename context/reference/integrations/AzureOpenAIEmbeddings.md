Classv1.8.5 (latest)●Since v1.3

# AzureOpenAIEmbeddings

AzureOpenAI embedding model integration.

```
AzureOpenAIEmbeddings()
```

## Bases

`OpenAIEmbeddings`

**Setup:**

To access AzureOpenAI embedding models you'll need to create an Azure account,
get an API key, and install the `langchain-openai` integration package.

You'll need to have an Azure OpenAI instance deployed.
You can deploy a version on Azure Portal following this
[guide](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/create-resource?pivots=web-portal).

Once you have your instance running, make sure you have the name of your
instance and key. You can find the key in the Azure Portal,
under the “Keys and Endpoint” section of your instance.

```
pip install -U langchain_openai

# Set up your environment variables (or pass them directly to the model)
export AZURE_OPENAI_API_KEY="your-api-key"
export AZURE_OPENAI_ENDPOINT="https://<your-endpoint>.openai.azure.com/"
export AZURE_OPENAI_API_VERSION="2024-02-01"
```

Copy

Key init args — completion params:
model:
Name of `AzureOpenAI` model to use.
dimensions:
Number of dimensions for the embeddings. Can be specified only if the
underlying model supports it.

See full list of supported init args and their descriptions in the params section.

**Instantiate:**

```
from langchain_openai import AzureOpenAIEmbeddings

embeddings = AzureOpenAIEmbeddings(
    model="text-embedding-3-large"
    # dimensions: int | None = None, # Can specify dimensions with new text-embedding-3 models
    # azure_endpoint="https://<your-endpoint>.openai.azure.com/", If not provided, will read env variable AZURE_OPENAI_ENDPOINT
    # api_key=... # Can provide an API key directly. If missing read env variable AZURE_OPENAI_API_KEY
    # openai_api_version=..., # If not provided, will read env variable AZURE_OPENAI_API_VERSION
)
```

Copy

**Embed single text:**

```
input_text = "The meaning of life is 42"
vector = embed.embed_query(input_text)
print(vector[:3])
```

Copy

```
[-0.024603435769677162, -0.007543657906353474, 0.0039630369283258915]
```

Copy

**Embed multiple texts:**

```
input_texts = ["Document 1...", "Document 2..."]
vectors = embed.embed_documents(input_texts)
print(len(vectors))
# The first 3 coordinates for the first vector
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
vector = await embed.aembed_query(input_text)
print(vector[:3])

# multiple:
# await embed.aembed_documents(input_texts)
```

Copy

```
[-0.009100092574954033, 0.005071679595857859, -0.0029193938244134188]
```

Copy

## Used in Docs

* [Azure AI Search integration](https://docs.langchain.com/oss/python/integrations/retrievers/azure_ai_search)
* [Azure AI Search integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azuresearch)
* [Azure Cosmos DB mongo vcore integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azure_cosmos_db_mongo_vcore)
* [Azure Cosmos DB NoSQL integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azure_cosmos_db_no_sql)
* [Azure database for postgresql - flexible server integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azure_db_for_postgresql)

+1 more

## Attributes

attribute

azure_endpoint: str | None

Your Azure endpoint, including the resource.

Automatically inferred from env var `AZURE_OPENAI_ENDPOINT` if not provided.

Example: `https://example-resource.azure.openai.com/`

attribute

deployment: str | None

A model deployment.

If given sets the base client URL to include `/deployments/{azure_deployment}`.

Note

This means you won't be able to use non-deployment endpoints.

attribute

openai_api_key: SecretStr | None

Automatically inferred from env var `AZURE_OPENAI_API_KEY` if not provided.

attribute

openai_api_version: str | None

Automatically inferred from env var `OPENAI_API_VERSION` if not provided.

Set to `'2023-05-15'` by default if env variable `OPENAI_API_VERSION` is not
set.

attribute

azure_ad_token: SecretStr | None

Your Azure Active Directory token.

Automatically inferred from env var `AZURE_OPENAI_AD_TOKEN` if not provided.

[For more, see this page.](https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id)

attribute

azure_ad_token_provider: Callable[[], str] | None

A function that returns an Azure Active Directory token.

Will be invoked on every sync request. For async requests,
will be invoked if `azure_ad_async_token_provider` is not provided.

attribute

azure_ad_async_token_provider: Callable[[], Awaitable[str]] | None

A function that returns an Azure Active Directory token.

Will be invoked on every async request.

attribute

openai_api_type: str | None

attribute

validate_base_url: bool

attribute

chunk_size: int

Maximum number of texts to embed in each batch

## Methods

method

validate_environment

Validate that api key and python package exists in environment.

## Inherited from[OpenAIEmbeddings](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings)

### Attributes

[Aclient: Any](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/client)[Aasync_client: Any](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/async_client)[Amodel: str](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/model)

Adimensions: int | None

—

The number of dimensions the resulting output embeddings should have.

Aopenai_api_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or

[Aopenai_proxy: str | None](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/openai_proxy)

Aembedding_ctx_length: int

—

The maximum number of tokens to embed at once.

Aopenai_organization: str | None

—

OpenAI organization ID to use for API calls.

[Aallowed_special: Literal['all'] | set[str] | None](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/allowed_special)[Adisallowed_special: Literal['all'] | set[str] | Sequence[str] | None](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/disallowed_special)

Amax_retries: int

—

Maximum number of retries to make when generating.

Arequest_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API.

[Aheaders: Any](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/headers)

Atiktoken_enabled: bool

—

Set this to False to use HuggingFace `transformers` tokenization.

Atiktoken_model_name: str | None

—

The model name to pass to tiktoken when using this class.

Ashow_progress_bar: bool

—

Whether to show a progress bar when embedding.

Amodel_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.

Askip_empty: bool

—

Whether to skip empty strings when embedding or raise an error.

[Adefault_headers: Mapping[str, str] | None](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/default_headers)[Adefault_query: Mapping[str, object] | None](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/default_query)

Aretry_min_seconds: int

—

Min number of seconds to wait between retries

Aretry_max_seconds: int

—

Max number of seconds to wait between retries

Ahttp_client: Any | None

—

Optional `httpx.Client`.

Ahttp_async_client: Any | None

—

Optional `httpx.AsyncClient`.

Acheck_embedding_ctx_length: bool

—

Whether to check the token length of inputs and automatically split inputs

[Amodel_config](https://reference.langchain.com/python/langchain-openai/embeddings/base/OpenAIEmbeddings/model_config)

### Methods

Mbuild_extra

—

Build extra kwargs from additional params that were passed in.

Membed_documents

—

Call OpenAI's embedding endpoint to embed search docs.

Maembed_documents

—

Asynchronously call OpenAI's embedding endpoint to embed search docs.

Membed_query

—

Call out to OpenAI's embedding endpoint for embedding query text.

Maembed_query

—

Call out to OpenAI's embedding endpoint async for embedding query text.

## Inherited from[Embeddings](https://reference.langchain.com/python/langchain-core/embeddings/embeddings/Embeddings)(langchain_core)

### Methods

[Membed_documents](https://reference.langchain.com/python/langchain-core/embeddings/embeddings/Embeddings/embed_documents)[Membed_query](https://reference.langchain.com/python/langchain-core/embeddings/embeddings/Embeddings/embed_query)[Maembed_documents](https://reference.langchain.com/python/langchain-core/embeddings/embeddings/Embeddings/aembed_documents)[Maembed_query](https://reference.langchain.com/python/langchain-core/embeddings/embeddings/Embeddings/aembed_query)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/71c30f2212abbf140b4b97d9c41184682db3696b/libs/partners/openai/langchain_openai/embeddings/azure.py#L15)

Version History
