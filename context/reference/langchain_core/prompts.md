# Prompts

## Classes

Class

### [PromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/prompt/PromptTemplate)

Prompt template for a language model.

A prompt template consists of a string template. It accepts a set of parameters
from the user that can be used to generate a prompt for a language model.

The te

Class

### [ChatPromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/ChatPromptTemplate)

Prompt template for chat models.

Use to create flexible templated prompts for chat models.

```
from langchain_core.prompts import ChatPromptTemplate

template = ChatPr

<!--/ADMON-->
```

Class

### [MessagesPlaceholder](https://reference.langchain.com/python/langchain-core/prompts/chat/MessagesPlaceholder)

Prompt template that assumes variable is already list of messages.

A placeholder which can be used to pass in a list of messages.

```
from langchain_core.pr

<!--/ADMON-->
```

Class

### [HumanMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/HumanMessagePromptTemplate)

Human message prompt template.

This is a message sent from the user.

Class

### [AIMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/AIMessagePromptTemplate)

AI message prompt template.

This is a message sent from the AI.

Class

### [SystemMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/SystemMessagePromptTemplate)

System message prompt template.

This is a message that is not sent to the user.

Class

### [ChatMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/ChatMessagePromptTemplate)

Chat message prompt template.

Class

### [FewShotPromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/few_shot/FewShotPromptTemplate)

Prompt template that contains few shot examples.

Class

### [FewShotChatMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/few_shot/FewShotChatMessagePromptTemplate)

Chat prompt template that supports few-shot examples.

The high level structure of produced by this prompt template is a list of messages
consisting of prefix message(s), example message(s), and suffi

Class

### [FewShotPromptWithTemplates](https://reference.langchain.com/python/langchain-core/prompts/few_shot_with_templates/FewShotPromptWithTemplates)

Prompt template that contains few shot examples.

Class

### [StructuredPrompt](https://reference.langchain.com/python/langchain-core/prompts/structured/StructuredPrompt)

Structured prompt template for a language model.

Class

### [DictPromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/dict/DictPromptTemplate)

Template represented by a dictionary.

Recognizes variables in f-string or mustache formatted string dict values.

Does NOT recognize variables in dict keys. Applies recursively.

Class

### [BaseChatPromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/BaseChatPromptTemplate)

Base class for chat prompt templates.

Class

### [BaseStringMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/chat/BaseStringMessagePromptTemplate)

Base class for message prompt templates that use a string prompt template.

Class

### [BaseMessagePromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/message/BaseMessagePromptTemplate)

Base class for message prompt templates.

Class

### [StringPromptTemplate](https://reference.langchain.com/python/langchain-core/prompts/string/StringPromptTemplate)

String prompt that exposes the format method, returning a prompt.
