# Caching

## Classes

Class

### [ManagedValue](https://reference.langchain.com/python/langgraph/managed/base/ManagedValue)

Class

### [InMemorySaver](https://reference.langchain.com/python/langgraph.checkpoint/memory/InMemorySaver)

An in-memory checkpoint saver.

This checkpoint saver stores checkpoints in memory using a `defaultdict`.

Class

### [PersistentDict](https://reference.langchain.com/python/langgraph.checkpoint/memory/PersistentDict)

Persistent dictionary with an API compatible with shelve and anydbm.

The dict is kept in memory, so the dictionary operations run as fast as
a regular dictionary.

Write to disk is delayed until clos

Class

### [SqliteSaver](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/SqliteSaver)

A checkpoint saver that stores checkpoints in a SQLite database.

## Functions

Function

### [is\_managed\_value](https://reference.langchain.com/python/langgraph/managed/base/is_managed_value)

## Modules

Module

### [utils](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/utils)

Module

### [aio](https://reference.langchain.com/python/langgraph.checkpoint.sqlite/aio)

## Constants

Attribute

### [V](https://reference.langchain.com/python/langgraph/managed/base/V)

Attribute

### [U](https://reference.langchain.com/python/langgraph/managed/base/U)

Attribute

### [ManagedValueSpec](https://reference.langchain.com/python/langgraph/managed/base/ManagedValueSpec)

Attribute

### [ManagedValueMapping](https://reference.langchain.com/python/langgraph/managed/base/ManagedValueMapping)

Attribute

### [logger](https://reference.langchain.com/python/langgraph.checkpoint/memory/logger)

Attribute

### [MemorySaver](https://reference.langchain.com/python/langgraph.checkpoint/memory/MemorySaver)
