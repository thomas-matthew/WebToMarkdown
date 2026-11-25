Classv1.8.4 (latest)●Since v0.1

# Document

Class for storing a piece of text and associated metadata.

Note

`Document` is for **retrieval workflows**, not chat I/O. For sending text
to an LLM in a conversation, use message types from `langchain.messages`.

```
Document(
    self,
    page_content: str,
    kwargs: Any = {},
)
```

## Bases

`BaseMedia`

**Example:**

```
from langchain_core.documents import Document

document = Document(
    page_content="Hello, world!", metadata={"source": "https://example.com"}
)
```

Copy

## Used in Docs

* [Build a semantic search engine with LangChain](https://docs.langchain.com/oss/python/langchain/knowledge-base)
* [(MODULE_NAME) integration](https://docs.langchain.com/oss/python/integrations/vectorstores/TEMPLATE)
* [AI21SemanticTextSplitter integration](https://docs.langchain.com/oss/python/integrations/document_transformers/ai21_semantic_text_splitter)
* [Amazon S3 Vectors integration](https://docs.langchain.com/oss/python/integrations/vectorstores/s3_vectors)
* [Astra DB integration](https://docs.langchain.com/oss/python/integrations/vectorstores/astradb)

+15 more(25 more not shown)

## Constructors

constructor

__init__

| Name | Type |
| --- | --- |
| page_content | [str](https://docs.python.org/3/library/stdtypes.html#str) |
| kwargs | [Any](https://docs.python.org/3/library/typing.html#typing.Any) |

## Attributes

attribute

page_content: str

String text.

attribute

type: Literal['Document']

## Methods

method

is_lc_serializable

Return `True` as this class is serializable.

method

get_lc_namespace

Get the namespace of the LangChain object.

## Inherited from[BaseMedia](https://reference.langchain.com/python/langchain-core/documents/base/BaseMedia)

### Attributes

Aid: str | None

—

An optional identifier for the document.

Ametadata: dict[Any, Any]

—

Arbitrary metadata associated with the content.

## Inherited from[Serializable](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable)

### Attributes

Alc_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.

Alc_attributes: dict[str, Any]

—

List of attribute names that should be included in the serialized kwargs.

[Amodel_config](https://reference.langchain.com/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

Mlc_id

—

Return a unique identifier for this class for serialization purposes.

Mto_json

—

Serialize the object to JSON.

Mto_json_not_implemented

—

Serialize a "not implemented" object.

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/documents/base.py#L288)

Version History
