Python[langchain-openai](/python/langchain-openai)[embeddings](/python/langchain-openai/embeddings)[azure](/python/langchain-openai/embeddings/azure)AzureOpenAIEmbeddings

Classv1.2.1 (latest)●Since v0.1

# AzureOpenAIEmbeddings

AzureOpenAI embedding model integration.

Copy

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

* [Azure AI search integration](https://docs.langchain.com/oss/python/integrations/retrievers/azure_ai_search)
* [Azure AI search integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azuresearch)
* [Azure Cosmos DB mongo vcore integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azure_cosmos_db_mongo_vcore)
* [Azure Cosmos DB NoSQL integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azure_cosmos_db_no_sql)
* [Azure database for postgresql - flexible server integration](https://docs.langchain.com/oss/python/integrations/vectorstores/azure_db_for_postgresql)

+3 more

## Attributes

[attribute

azure\_endpoint: str | None

Your Azure endpoint, including the resource.

Automatically inferred from env var `AZURE_OPENAI_ENDPOINT` if not provided.

Example: `https://example-resource.azure.openai.com/`](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/azure_endpoint)[attribute

deployment: str | None

A model deployment.

If given sets the base client URL to include `/deployments/{azure_deployment}`.

Note

This means you won't be able to use non-deployment endpoints.](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/deployment)[attribute

openai\_api\_key: SecretStr | None

Automatically inferred from env var `AZURE_OPENAI_API_KEY` if not provided.](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/openai_api_key)[attribute

openai\_api\_version: str | None

Automatically inferred from env var `OPENAI_API_VERSION` if not provided.

Set to `'2023-05-15'` by default if env variable `OPENAI_API_VERSION` is not
set.](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/openai_api_version)[attribute

azure\_ad\_token: SecretStr | None

Your Azure Active Directory token.

Automatically inferred from env var `AZURE_OPENAI_AD_TOKEN` if not provided.

[For more, see this page.](https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id)](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/azure_ad_token)[attribute

azure\_ad\_token\_provider: Callable[[], str] | None

A function that returns an Azure Active Directory token.

Will be invoked on every sync request. For async requests,
will be invoked if `azure_ad_async_token_provider` is not provided.](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/azure_ad_token_provider)[attribute

azure\_ad\_async\_token\_provider: Callable[[], Awaitable[str]] | None

A function that returns an Azure Active Directory token.

Will be invoked on every async request.](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/azure_ad_async_token_provider)[attribute

openai\_api\_type: str | None](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/openai_api_type)[attribute

validate\_base\_url: bool](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/validate_base_url)[attribute

chunk\_size: int

Maximum number of texts to embed in each batch](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/chunk_size)

## Methods

[method

validate\_environment

Validate that api key and python package exists in environment.](/python/langchain-openai/embeddings/azure/AzureOpenAIEmbeddings/validate_environment)

## Inherited from[OpenAIEmbeddings](/python/langchain-openai/embeddings/base/OpenAIEmbeddings)

### Attributes

[Aclient: Any](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/client)[Aasync\_client: Any](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/async_client)[Amodel: str](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/model)[Adimensions: int | None

—

The number of dimensions the resulting output embeddings should have.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/dimensions)[Aopenai\_api\_base: str | None

—

Base URL path for API requests, leave blank if not using a proxy or](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/openai_api_base)[Aopenai\_proxy: str | None](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/openai_proxy)[Aembedding\_ctx\_length: int

—

The maximum number of tokens to embed at once.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/embedding_ctx_length)[Aopenai\_organization: str | None

—

OpenAI organization ID to use for API calls.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/openai_organization)[Aallowed\_special: Literal['all'] | set[str] | None](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/allowed_special)[Adisallowed\_special: Literal['all'] | set[str] | Sequence[str] | None](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/disallowed_special)[Amax\_retries: int

—

Maximum number of retries to make when generating.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/max_retries)[Arequest\_timeout: float | tuple[float, float] | Any | None

—

Timeout for requests to OpenAI completion API.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/request_timeout)[Aheaders: Any](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/headers)[Atiktoken\_enabled: bool

—

Set this to False to use HuggingFace `transformers` tokenization.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/tiktoken_enabled)[Atiktoken\_model\_name: str | None

—

The model name to pass to tiktoken when using this class.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/tiktoken_model_name)[Ashow\_progress\_bar: bool

—

Whether to show a progress bar when embedding.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/show_progress_bar)[Amodel\_kwargs: dict[str, Any]

—

Holds any model parameters valid for `create` call not explicitly specified.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/model_kwargs)[Askip\_empty: bool

—

Whether to skip empty strings when embedding or raise an error.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/skip_empty)[Adefault\_headers: Mapping[str, str] | None](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/default_headers)[Adefault\_query: Mapping[str, object] | None](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/default_query)[Aretry\_min\_seconds: int

—

Min number of seconds to wait between retries](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/retry_min_seconds)[Aretry\_max\_seconds: int

—

Max number of seconds to wait between retries](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/retry_max_seconds)[Ahttp\_client: Any | None

—

Optional `httpx.Client`.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/http_client)[Ahttp\_async\_client: Any | None

—

Optional `httpx.AsyncClient`.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/http_async_client)[Acheck\_embedding\_ctx\_length: bool

—

Whether to check the token length of inputs and automatically split inputs](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/check_embedding_ctx_length)[Amodel\_config](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/model_config)

### Methods

[Mbuild\_extra

—

Build extra kwargs from additional params that were passed in.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/build_extra)[Membed\_documents

—

Call OpenAI's embedding endpoint to embed search docs.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/embed_documents)[Maembed\_documents

—

Asynchronously call OpenAI's embedding endpoint to embed search docs.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/aembed_documents)[Membed\_query

—

Call out to OpenAI's embedding endpoint for embedding query text.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/embed_query)[Maembed\_query

—

Call out to OpenAI's embedding endpoint async for embedding query text.](/python/langchain-openai/embeddings/base/OpenAIEmbeddings/aembed_query)

## Inherited from[Embeddings](/python/langchain-core/embeddings/embeddings/Embeddings)(langchain\_core)

### Methods

[Membed\_documents](/python/langchain-core/embeddings/embeddings/Embeddings/embed_documents)[Membed\_query](/python/langchain-core/embeddings/embeddings/Embeddings/embed_query)[Maembed\_documents](/python/langchain-core/embeddings/embeddings/Embeddings/aembed_documents)[Maembed\_query](/python/langchain-core/embeddings/embeddings/Embeddings/aembed_query)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/c4c91d9cd34ac53c7c73162671f98b7769a40123/libs/partners/openai/langchain_openai/embeddings/azure.py#L16)

Version History

Copy page

### On This Page

Related Documentation

Attributes

Aazure\_endpointAdeploymentAopenai\_api\_keyAopenai\_api\_versionAazure\_ad\_tokenAazure\_ad\_token\_providerAazure\_ad\_async\_token\_providerAopenai\_api\_typeAvalidate\_base\_urlAchunk\_size

Methods

Mvalidate\_environment

from OpenAIEmbeddings

AAttributes

AclientAasync\_clientAmodelAdimensionsAopenai\_api\_baseAopenai\_proxyAembedding\_ctx\_lengthAopenai\_organizationAallowed\_specialAdisallowed\_specialAmax\_retriesArequest\_timeoutAheadersAtiktoken\_enabledAtiktoken\_model\_nameAshow\_progress\_barAmodel\_kwargsAskip\_emptyAdefault\_headersAdefault\_queryAretry\_min\_secondsAretry\_max\_secondsAhttp\_clientAhttp\_async\_clientAcheck\_embedding\_ctx\_lengthAmodel\_config

MMethods

Mbuild\_extraMembed\_documentsMaembed\_documentsMembed\_queryMaembed\_query

from Embeddings

MMethods

Membed\_documentsMembed\_queryMaembed\_documentsMaembed\_query