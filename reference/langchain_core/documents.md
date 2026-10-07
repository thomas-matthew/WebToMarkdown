Python[langchain-core](/python/langchain-core)Documents

# Documents

## Classes

[Class

### Document

Class for storing a piece of text and associated metadata.

Note

`Document` is for **retrieval workflows**, not chat I/O. For sending text
to an LLM in a conversation, use message types f](/python/langchain-core/documents/base/Document)[Class

### Blob

Raw data abstraction for document loading and file processing.

Represents raw bytes or text, either in-memory or by file reference. Used
primarily by document loaders to decouple data loading from pa](/python/langchain-core/documents/base/Blob)[Class

### BaseMedia

Base class for content used in retrieval and data processing workflows.

Provides common fields for content that needs to be stored, indexed, or searched.

Note

For multimodal content in \*\*ch](/python/langchain-core/documents/base/BaseMedia)

## Modules

[Module

### transformers

Document transformers.](/python/langchain-core/documents/transformers)[Module

### compressor

Document compressor.](/python/langchain-core/documents/compressor)[Module

### base

Base classes for media and documents.

This module contains core abstractions for **data retrieval and processing workflows**:

* `BaseMedia`: Base class providing `id` and `metadata` fields
* `Blob`:](/python/langchain-core/documents/base)

Copy page

### On This Page

Classes3Modules3