Python[langgraph](/python/langgraph)[graph](/python/langgraph/graph)[message](/python/langgraph/graph/message)add\_messages

Functionv1.2.0 (latest)●Since v0.1

# add\_messages

Merges two lists of messages, updating existing messages by ID.

By default, this ensures the state is "append-only", unless the
new message has the same ID as an existing message.

Copy

```
add_messages(
  left: Messages,
  right: Messages,
  *,
  format: Literal['langchain-openai'] | None = None
) -> Messages
```

**Basic usage:**

```
from langchain_core.messages import AIMessage, HumanMessage

msgs1 = [HumanMessage(content="Hello", id="1")]
msgs2 = [AIMessage(content="Hi there!", id="2")]
add_messages(msgs1, msgs2)
# [HumanMessage(content='Hello', id='1'), AIMessage(content='Hi there!', id='2')]
```

Copy

**Overwrite existing message:**

```
msgs1 = [HumanMessage(content="Hello", id="1")]
msgs2 = [HumanMessage(content="Hello again", id="1")]
add_messages(msgs1, msgs2)
# [HumanMessage(content='Hello again', id='1')]
```

Copy

**Use in a StateGraph:**

```
from typing import Annotated
from typing_extensions import TypedDict
from langgraph.graph import StateGraph

class State(TypedDict):
    messages: Annotated[list, add_messages]

builder = StateGraph(State)
builder.add_node("chatbot", lambda state: {"messages": [("assistant", "Hello")]})
builder.set_entry_point("chatbot")
builder.set_finish_point("chatbot")
graph = builder.compile()
graph.invoke({})
# {'messages': [AIMessage(content='Hello', id=...)]}
```

Copy

**Use OpenAI message format:**

```
from typing import Annotated
from typing_extensions import TypedDict
from langgraph.graph import StateGraph, add_messages

class State(TypedDict):
    messages: Annotated[list, add_messages(format="langchain-openai")]

def chatbot_node(state: State) -> list:
    return {
        "messages": [
            {
                "role": "user",
                "content": [
                    {
                        "type": "text",
                        "text": "Here's an image:",
                        "cache_control": {"type": "ephemeral"},
                    },
                    {
                        "type": "image",
                        "source": {
                            "type": "base64",
                            "media_type": "image/jpeg",
                            "data": "1234",
                        },
                    },
                ],
            },
        ]
    }

builder = StateGraph(State)
builder.add_node("chatbot", chatbot_node)
builder.set_entry_point("chatbot")
builder.set_finish_point("chatbot")
graph = builder.compile()
graph.invoke({"messages": []})
# {
#     'messages': [
#         HumanMessage(
#             content=[
#                 {"type": "text", "text": "Here's an image:"},
#                 {
#                     "type": "image_url",
#                     "image_url": {"url": "data:image/jpeg;base64,1234"},
#                 },
#             ],
#         ),
#     ]
# }
```

Copy

## Used in Docs

* [Evaluate a complex agent](https://docs.langchain.com/langsmith/evaluate-complex-agent)
* [Graph API overview](https://docs.langchain.com/oss/python/langgraph/graph-api)
* [How to evaluate a graph](https://docs.langchain.com/langsmith/evaluate-graph)
* [Quickstart](https://docs.langchain.com/oss/python/langgraph/quickstart)
* [Use the functional API](https://docs.langchain.com/oss/python/langgraph/use-functional-api)

+4 more

## Parameters

| Name | Type | Description |
| --- | --- | --- |
| `left`\* | `Messages` | The base list of `Messages`. |
| `right`\* | `Messages` | The list of `Messages` (or single `Message`) to merge into the base list. |
| `format` | `Literal['langchain-openai'] | None` | Default:`None`  The format to return messages in. If `None` then `Messages` will be returned as is. If `langchain-openai` then `Messages` will be returned as `BaseMessage` objects with their contents formatted to match OpenAI message format, meaning contents can be string, `'text'` blocks, or `'image_url'` blocks and tool responses are returned as their own `ToolMessage` objects.  Requirement  Must have `langchain-core>=0.3.11` installed to use this feature. |

[View source on GitHub](https://github.com/langchain-ai/langgraph/blob/076e2a3627206f5a1aef573aaca4a01e5af897ca/libs/langgraph/langgraph/graph/message.py#L60)

Version History

Copy page

### On This Page

Related Documentation◇Parameters