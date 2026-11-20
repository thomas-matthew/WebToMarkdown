# Documents

## Classes

Class

### [Document](https://reference.langchain.com/python/langchain-core/documents/base/Document)

Class for storing a piece of text and associated metadata.

Note

`Document` is for **retrieval workflows**, not chat I/O. For sending text
to an LLM in a conversation, use message types f

Class

### [Blob](https://reference.langchain.com/python/langchain-core/documents/base/Blob)

Raw data abstraction for document loading and file processing.

Represents raw bytes or text, either in-memory or by file reference. Used
primarily by document loaders to decouple data loading from pa

Class

### [BaseMedia](https://reference.langchain.com/python/langchain-core/documents/base/BaseMedia)

Base class for content used in retrieval and data processing workflows.

Provides common fields for content that needs to be stored, indexed, or searched.

Note

For multimodal content in \*\*ch

## Modules

Module

### [transformers](https://reference.langchain.com/python/langchain-core/documents/transformers)

Document transformers.

Module

### [base](https://reference.langchain.com/python/langchain-core/documents/base)

Base classes for media and documents.

This module contains core abstractions for **data retrieval and processing workflows**:

* `BaseMedia`: Base class providing `id` and `metadata` fields
* `Blob`:

Module

### [compressor](https://reference.langchain.com/python/langchain-core/documents/compressor)

Document compressor.
