Python[langgraph](/python/langgraph)Caching

# Caching

## Classes

[Class

### BaseChannel

Base class for all channels.](/python/langgraph/channels/base/BaseChannel)[Class

### InMemorySaver

An in-memory checkpoint saver.

This checkpoint saver stores checkpoints in memory using a `defaultdict`.](/python/langgraph.checkpoint/memory/InMemorySaver)[Class

### PersistentDict

Persistent dictionary with an API compatible with shelve and anydbm.

The dict is kept in memory, so the dictionary operations run as fast as
a regular dictionary.

Write to disk is delayed until clos](/python/langgraph.checkpoint/memory/PersistentDict)[Class

### SqliteSaver

A checkpoint saver that stores checkpoints in a SQLite database.](/python/langgraph.checkpoint.sqlite/SqliteSaver)

## Modules

[Module

### utils](/python/langgraph.checkpoint.sqlite/utils)[Module

### aio](/python/langgraph.checkpoint.sqlite/aio)

## Constants

[Attribute

### Value](/python/langgraph/channels/base/Value)[Attribute

### Update](/python/langgraph/channels/base/Update)[Attribute

### Checkpoint](/python/langgraph/channels/base/Checkpoint)[Attribute

### logger](/python/langgraph.checkpoint/memory/logger)[Attribute

### MemorySaver](/python/langgraph.checkpoint/memory/MemorySaver)

Copy page

### On This Page

Classes4Modules2Constants5