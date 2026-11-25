Classv1.8.4 (latest)●Since v0.2

# BaseMedia

Base class for content used in retrieval and data processing workflows.

Provides common fields for content that needs to be stored, indexed, or searched.

Note

For multimodal content in **chat messages** (images, audio sent to/from LLMs),
use `langchain.messages` content blocks instead.

```
BaseMedia(
    self,
    args: Any = (),
    kwargs: Any = {},
)
```

## Bases

`Serializable`

## Attributes

attribute

id: str | None

An optional identifier for the document.

Ideally this should be unique across the document collection and formatted
as a UUID, but this will not be enforced.

attribute

metadata: dict[Any, Any]

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/documents/base.py#L34)

Version History
