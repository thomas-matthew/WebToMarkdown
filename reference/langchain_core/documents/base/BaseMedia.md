Python[langchain-core](/python/langchain-core)[documents](/python/langchain-core/documents)[base](/python/langchain-core/documents/base)BaseMedia

Classv1.4.0 (latest)●Since v0.2

# BaseMedia

Base class for content used in retrieval and data processing workflows.

Provides common fields for content that needs to be stored, indexed, or searched.

Note

For multimodal content in **chat messages** (images, audio sent to/from LLMs),
use `langchain.messages` content blocks instead.

Copy

```
BaseMedia(
    self,
    *args: Any = (),
    **kwargs: Any = {},
)
```

## Bases

`Serializable`

## Attributes

[attribute

id: str | None

An optional identifier for the document.

Ideally this should be unique across the document collection and formatted
as a UUID, but this will not be enforced.](/python/langchain-core/documents/base/BaseMedia/id)[attribute

metadata: dict

Arbitrary metadata associated with the content.](/python/langchain-core/documents/base/BaseMedia/metadata)

## Inherited from[Serializable](/python/langchain-core/load/serializable/Serializable)

### Attributes

[Alc\_secrets: dict[str, str]

—

A map of constructor argument names to secret ids.](/python/langchain-core/load/serializable/Serializable/lc_secrets)[Alc\_attributes: dict

—

List of attribute names that should be included in the serialized kwargs.](/python/langchain-core/load/serializable/Serializable/lc_attributes)[Amodel\_config](/python/langchain-core/load/serializable/Serializable/model_config)

### Methods

[Mis\_lc\_serializable

—

Is this class serializable?](/python/langchain-core/load/serializable/Serializable/is_lc_serializable)[Mget\_lc\_namespace

—

Get the namespace of the LangChain object.](/python/langchain-core/load/serializable/Serializable/get_lc_namespace)[Mlc\_id

—

Return a unique identifier for this class for serialization purposes.](/python/langchain-core/load/serializable/Serializable/lc_id)[Mto\_json

—

Serialize the object to JSON.](/python/langchain-core/load/serializable/Serializable/to_json)[Mto\_json\_not\_implemented

—

Serialize a "not implemented" object.](/python/langchain-core/load/serializable/Serializable/to_json_not_implemented)

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/625ed0ee8c683dd8a7d87564a14bdbd4472d2a44/libs/core/langchain_core/documents/base.py#L34)

Version History

Copy page

### On This Page

Attributes

AidAmetadata

from Serializable

AAttributes

Alc\_secretsAlc\_attributesAmodel\_config

MMethods

Mis\_lc\_serializableMget\_lc\_namespaceMlc\_idMto\_jsonMto\_json\_not\_implemented