Python[langchain-core](/python/langchain-core)[documents](/python/langchain-core/documents)[base](/python/langchain-core/documents/base)Blob

Classv1.4.8 (latest)●Since v0.2

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

Copy

```
Blob(
    self,
    *args: Any = (),
    **kwargs: Any = {},
)
```

## Bases

`BaseMedia`

## Used in Docs

* [Google cloud document AI integration](https://docs.langchain.com/oss/python/integrations/document_transformers/google_docai)
* [Writer PDF parser parsers integration](https://docs.langchain.com/oss/python/integrations/document_loaders/parsers/writer_pdf_parser)

## Attributes

[attribute

data: bytes | str | None

Raw data associated with the `Blob`.](/python/langchain-core/documents/base/Blob/data)[attribute

mimetype: str | None

MIME type, not to be confused with a file extension.](/python/langchain-core/documents/base/Blob/mimetype)[attribute

encoding: str

Encoding to use if decoding the bytes into a string.

Uses `utf-8` as default encoding if decoding to string.](/python/langchain-core/documents/base/Blob/encoding)[attribute

path: PathLike | None

Location where the original content was found.](/python/langchain-core/documents/base/Blob/path)[attribute

model\_config](/python/langchain-core/documents/base/Blob/model_config)[attribute

source: str | None

The source location of the blob as string if known otherwise none.

If a path is associated with the `Blob`, it will default to the path location.

Unless explicitly set via a metadata field called `'source'`, in which
case that value will be used instead.](/python/langchain-core/documents/base/Blob/source)

## Methods

[method

check\_blob\_is\_valid

Verify that either data or path is provided.](/python/langchain-core/documents/base/Blob/check_blob_is_valid)[method

as\_string

Read data as a string.](/python/langchain-core/documents/base/Blob/as_string)[method

as\_bytes

Read data as bytes.](/python/langchain-core/documents/base/Blob/as_bytes)[method

as\_bytes\_io

Read data as a byte stream.](/python/langchain-core/documents/base/Blob/as_bytes_io)[method

from\_path

Load the blob from a path like object.](/python/langchain-core/documents/base/Blob/from_path)[method

from\_data

Initialize the `Blob` from in-memory data.](/python/langchain-core/documents/base/Blob/from_data)

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

List of attribute names that should be included in the serialized kwargs.](/python/langchain-core/load/serializable/Serializable/lc_attributes)

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

[View source on GitHub](https://github.com/langchain-ai/langchain/blob/8a2f1a9445ed1b467cdeb0fcb89dba2c67bd2bb3/libs/core/langchain_core/documents/base.py#L59)

Version History

Copy page

### On This Page

Related Documentation

Attributes

AdataAmimetypeAencodingApathAmodel\_configAsource

Methods

Mcheck\_blob\_is\_validMas\_stringMas\_bytesMas\_bytes\_ioMfrom\_pathMfrom\_data

from BaseMedia

AAttributes

AidAmetadata

from Serializable

AAttributes

Alc\_secretsAlc\_attributes

MMethods

Mis\_lc\_serializableMget\_lc\_namespaceMlc\_idMto\_jsonMto\_json\_not\_implemented