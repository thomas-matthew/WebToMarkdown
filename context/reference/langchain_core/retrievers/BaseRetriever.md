Classv1.8.4 (latest)●Since v0.1

# BaseRetriever

Abstract base class for a document retrieval system.

A retrieval system is defined as something that can take string queries and return
the most 'relevant' documents from some source.

Usage:

A retriever follows the standard `Runnable` interface, and should be used via the
standard `Runnable` methods of `invoke`, `ainvoke`, `batch`, `abatch`.

Implementation:

When implementing a custom retriever, the class should implement the
`_get_relevant_documents` method to define the logic for retrieving documents.

Optionally, an async native implementations can be provided by overriding the
`_aget_relevant_documents` method.

Retriever that returns the first 5 documents from a list of documents

```
from langchain_core.documents import Document
from langchain_core.retrievers import BaseRetriever

class SimpleRetriever(BaseRetriever):
    docs: list[Document]
    k: int = 5

    def _get_relevant_documents(self, query: str) -> list[Document]:
        """Return the first k documents from the list of documents"""
        return self.docs[:self.k]

    async def _aget_relevant_documents(self, query: str) -> list[Document]:
        """(Optional) async native implementation."""
        return self.docs[:self.k]
```

Copy

Simple retriever based on a scikit-learn vectorizer

```
from sklearn.metrics.pairwise import cosine_similarity

class TFIDFRetriever(BaseRetriever, BaseModel):
    vectorizer: Any
    docs: list[Document]
    tfidf_array: Any
    k: int = 4

    class Config:
        arbitrary_types_allowed = True

    def _get_relevant_documents(self, query: str) -> list[Document]:
        # Ip -- (n_docs,x), Op -- (n_docs,n_Feats)
        query_vec = self.vectorizer.transform([query])
        # Op -- (n_docs,1) -- Cosine Sim with each doc
        results = cosine_similarity(self.tfidf_array, query_vec).reshape((-1,))
        return [self.docs[i] for i in results.argsort()[-self.k :][::-1]]
```

Copy

```
BaseRetriever(
    self,
    args: Any = (),
    kwargs: Any = {},
)
```

## Bases

`RunnableSerializable[RetrieverInput, RetrieverOutput]``ABC`

## Used in Docs

* [BigTableByteStore integration](https://docs.langchain.com/oss/python/integrations/stores/bigtable)

## Attributes

attribute

model_config

attribute

tags: list[str] | None

Optional list of tags associated with the retriever.

These tags will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

attribute

metadata: dict[str, Any] | None

Optional metadata associated with the retriever.

This metadata will be associated with each call to this retriever,
and passed as arguments to the handlers defined in `callbacks`.

You can use these to eg identify a specific instance of a retriever with its
use case.

## Methods

method

invoke

Invoke the retriever to get relevant documents.

Main entry point for synchronous retriever invocations.

method

ainvoke

Asynchronously invoke the retriever to get relevant documents.

Main entry point for asynchronous retriever invocations.

## Inherited from[RunnableSerializable](https://reference.langchain.com/python/langchain-core/runnables/base/RunnableSerializable)

### Attributes

Aname: str | None

—

The name of the `Runnable`.

### Methods

Mto_json

—

Serialize the `Runnable` to JSON.

Mconfigurable_fields

—

Configure particular `Runnable` fields at runtime.

Mconfigurable_alternatives

—

Configure alternatives for `Runnable` objects that can be set at runtime.

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)

### Attributes

Alc_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.

Alc_attributes: dict[str, Any]

—

List of attribute names that should be included in the serialized kwargs.

### Methods

Mis_lc_serializable

—

Is this class serializable?

Mget_lc_namespace

—

Get the namespace of the LangChain object.

Mlc_id

—

Return a unique identifier for this class for serialization purposes.

Mto_json

—

Serialize the object to JSON.

Mto_json_not_implemented

—

Serialize a "not implemented" object.

## Inherited from[Runnable](https://reference.langchain.com/python/langchain-core/runnables/base/Runnable)

### Attributes

Aname: str | None

—

The name of the `Runnable`. Used for debugging and tracing.

AInputType: type[Input]

—

Input type.

AOutputType: type[Output]

—

Output Type.

Ainput_schema: TypeBaseModel

—

The type of input this `Runnable` accepts specified as a Pydantic model.

Aoutput_schema: TypeBaseModel

—

Output schema.

Aconfig_specs: list[ConfigurableFieldSpec]

—

List configurable fields for this `Runnable`.

### Methods

Mget_name

—

Get the name of the `Runnable`.

Mget_input_schema

—

Get a Pydantic model that can be used to validate input to the `Runnable`.

Mget_input_jsonschema

—

Get a JSON schema that represents the input to the `Runnable`.

Mget_output_schema

—

Get a Pydantic model that can be used to validate output to the `Runnable`.

Mget_output_jsonschema

—

Get a JSON schema that represents the output of the `Runnable`.

Mconfig_schema

—

The type of config this `Runnable` accepts specified as a Pydantic model.

Mget_config_jsonschema

—

Get a JSON schema that represents the config of the `Runnable`.

Mget_graph

—

Return a graph representation of this `Runnable`.

Mget_prompts

—

Return a list of prompts used by this `Runnable`.

Mpipe

—

Pipe `Runnable` objects.

Mpick

—

Pick keys from the output `dict` of this `Runnable`.

Massign

—

Assigns new fields to the `dict` output of this `Runnable`.

Mbatch

—

Default implementation runs invoke in parallel using a thread pool executor.

Mbatch_as_completed

—

Run `invoke` in parallel on a list of inputs.

Mabatch

—

Default implementation runs `ainvoke` in parallel using `asyncio.gather`.

Mabatch_as_completed

—

Run `ainvoke` in parallel on a list of inputs.

Mstream

—

Default implementation of `stream`, which calls `invoke`.

Mastream

—

Default implementation of `astream`, which calls `ainvoke`.

Mastream_log

—

Stream all output from a `Runnable`, as reported to the callback system.

Mastream_events

—

Generate a stream of events.

Mstream_events

—

Generate a stream of events synchronously.

Mtransform

—

Transform inputs to outputs.

Matransform

—

Transform inputs to outputs.

Mbind

—

Bind arguments to a `Runnable`, returning a new `Runnable`.

Mwith_config

—

Bind config to a `Runnable`, returning a new `Runnable`.

Mwith_listeners

—

Bind lifecycle listeners to a `Runnable`, returning a new `Runnable`.

Mwith_alisteners

—

Bind async lifecycle listeners to a `Runnable`.

Mwith_types

—

Bind input and output types to a `Runnable`, returning a new `Runnable`.

Mwith_retry

—

Create a new `Runnable` that retries the original `Runnable` on exceptions.

Mmap

—

Return a new `Runnable` that maps a list of inputs to a list of outputs.

Mwith_fallbacks

—

Add fallbacks to a `Runnable`, returning a new `Runnable`.

Mas_tool

—

Create a `BaseTool` from a `Runnable`.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/retrievers.py#L55)

Version History
