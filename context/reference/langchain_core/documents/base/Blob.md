Classv1.8.4 (latest)●Since v0.2

# Blob

Raw data abstraction for document loading and file processing.

Represents raw bytes or text, either in-memory or by file reference. Used
primarily by document loaders to decouple data loading from parsing.

Inspired by [Mozilla's `Blob`](https://developer.mozilla.org/en-US/docs/Web/API/Blob)

Initialize a blob from in-memory data

```
from langchain_core.documents import Blob

blob = Blob.from_data("Hello, world!")

# Read the blob as a string
print(blob.as_string())

# Read the blob as bytes
print(blob.as_bytes())

# Read the blob as a byte stream
with blob.as_bytes_io() as f:
    print(f.read())
```

Copy

Load from memory and specify MIME type and metadata

```
from langchain_core.documents import Blob

blob = Blob.from_data(
    data="Hello, world!",
    mime_type="text/plain",
    metadata={"source": "https://example.com"},
)
```

Copy

Load the blob from a file

```
from langchain_core.documents import Blob

blob = Blob.from_path("path/to/file.txt")

# Read the blob as a string
print(blob.as_string())

# Read the blob as bytes
print(blob.as_bytes())

# Read the blob as a byte stream
with blob.as_bytes_io() as f:
    print(f.read())
```

Copy

```
Blob(
    self,
    args: Any = (),
    kwargs: Any = {},
)
```

## Bases

`BaseMedia`

## Used in Docs

* [Google cloud document AI integration](https://docs.langchain.com/oss/python/integrations/document_transformers/google_docai)

## Attributes

attribute

data: bytes | str | None

Raw data associated with the `Blob`.

attribute

mimetype: str | None

MIME type, not to be confused with a file extension.

attribute

encoding: str

Encoding to use if decoding the bytes into a string.

Uses `utf-8` as default encoding if decoding to string.

attribute

path: PathLike | None

Location where the original content was found.

attribute

model_config

attribute

source: str | None

The source location of the blob as string if known otherwise none.

If a path is associated with the `Blob`, it will default to the path location.

Unless explicitly set via a metadata field called `'source'`, in which
case that value will be used instead.

## Methods

method

check_blob_is_valid

Verify that either data or path is provided.

method

as_string

Read data as a string.

method

as_bytes

Read data as bytes.

method

as_bytes_io

Read data as a byte stream.

method

from_path

Load the blob from a path like object.

method

from_data

Initialize the `Blob` from in-memory data.

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/d4dafe5839c4a6b07d71cc78697df0de9e627e21/libs/core/langchain_core/documents/base.py#L59)

Version History
