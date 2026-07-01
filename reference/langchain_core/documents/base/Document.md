Python[langchain-core](/python/langchain-core)[documents](/python/langchain-core/documents)[base](/python/langchain-core/documents/base)Document

Classv1.4.8 (latest)●Since v0.1

# Document

Class for storing a piece of text and associated metadata.

Note

`Document` is for **retrieval workflows**, not chat I/O. For sending text
to an LLM in a conversation, use message types from `langchain.messages`.

Copy

```
Document(
    self,
    page_content: str,
    **kwargs: Any = {},
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
* [(MODULE\_NAME) integration](https://docs.langchain.com/oss/python/integrations/vectorstores/TEMPLATE)
* [AI21SemanticTextSplitter integration](https://docs.langchain.com/oss/python/integrations/document_transformers/ai21_semantic_text_splitter)
* [Alibaba cloud mysql integration](https://docs.langchain.com/oss/python/integrations/vectorstores/alibabacloud_mysql)
* [Apify dataset integration](https://docs.langchain.com/oss/python/integrations/document_loaders/apify_dataset)

+15 more(61 more not shown)

## Constructors

constructor

\_\_init\_\_

| Name | Type |
| --- | --- |
| page\_content | [str](https://docs.python.org/3/library/stdtypes.html#str) |

## Attributes

[attribute

page\_content: str

String text.](/python/langchain-core/documents/base/Document/page_content)[attribute

type: Literal['Document']](/python/langchain-core/documents/base/Document/type)

## Methods

[method

is\_lc\_serializable

Return `True` as this class is serializable.](/python/langchain-core/documents/base/Document/is_lc_serializable)[method

get\_lc\_namespace

Get the namespace of the LangChain object.](/python/langchain-core/documents/base/Document/get_lc_namespace)

## Inherited from[BaseMedia](/python/langchain-core/documents/base/BaseMedia)

### Attributes

[Aid: str | None

—

An optional identifier for the document.](/python/langchain-core/documents/base/BaseMedia/id)[Ametadata: dict[Any, Any]

—

Arbitrary metadata associated with the content.](/python/langchain-core/documents/base/BaseMedia/metadata)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)

### Attributes

[Alc\_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.](/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc\_attributes: dict[str, Any]

—

List of attribute names that should be included in the serialized kwargs.](/python/langchain-core/load/serializable/Serializable/lc_attributes)[Amodel\_config](/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

[Mlc\_id

—

Return a unique identifier for this class for serialization purposes.](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json

—

Serialize the object to JSON.](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented

—

Serialize a "not implemented" object.](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/8a2f1a9445ed1b467cdeb0fcb89dba2c67bd2bb3/libs/core/langchain_core/documents/base.py#L288)

Version History

Copy page

### On This Page

Related Documentation

Constructors

C\_\_init\_\_

Attributes

Apage\_contentAtype

Methods

Mis\_lc\_serializableMget\_lc\_namespace

from BaseMedia

AAttributes

AidAmetadata

from Serializable

AAttributes

Alc\_secretsAlc\_attributesAmodel\_config

MMethods

Mlc\_idMto\_jsonMto\_json\_not\_implemented