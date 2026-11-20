Python[langchain-core](/python/langchain-core)Prompts

# Prompts

## Classes

[Class

### PromptTemplate

Prompt template for a language model.

A prompt template consists of a string template. It accepts a set of parameters
from the user that can be used to generate a prompt for a language model.

The te](/python/langchain-core/prompts/prompt/PromptTemplate)[Class

### ChatPromptTemplate

Prompt template for chat models.

Use to create flexible templated prompts for chat models.

```
from langchain_core.prompts import ChatPromptTemplate

template = ChatPr

<!--/ADMON-->
```](/python/langchain-core/prompts/chat/ChatPromptTemplate)[Class

### MessagesPlaceholder

Prompt template that assumes variable is already list of messages.

A placeholder which can be used to pass in a list of messages.

```
from langchain_core.pr

<!--/ADMON-->
```](/python/langchain-core/prompts/chat/MessagesPlaceholder)[Class

### HumanMessagePromptTemplate

Human message prompt template.

This is a message sent from the user.](/python/langchain-core/prompts/chat/HumanMessagePromptTemplate)[Class

### AIMessagePromptTemplate

AI message prompt template.

This is a message sent from the AI.](/python/langchain-core/prompts/chat/AIMessagePromptTemplate)[Class

### SystemMessagePromptTemplate

System message prompt template.

This is a message that is not sent to the user.](/python/langchain-core/prompts/chat/SystemMessagePromptTemplate)[Class

### ChatMessagePromptTemplate

Chat message prompt template.](/python/langchain-core/prompts/chat/ChatMessagePromptTemplate)[Class

### FewShotPromptTemplate

Prompt template that contains few shot examples.](/python/langchain-core/prompts/few_shot/FewShotPromptTemplate)[Class

### FewShotChatMessagePromptTemplate

Chat prompt template that supports few-shot examples.

The high level structure of produced by this prompt template is a list of messages
consisting of prefix message(s), example message(s), and suffi](/python/langchain-core/prompts/few_shot/FewShotChatMessagePromptTemplate)[Class

### FewShotPromptWithTemplates

Prompt template that contains few shot examples.](/python/langchain-core/prompts/few_shot_with_templates/FewShotPromptWithTemplates)[Class

### StructuredPrompt

Structured prompt template for a language model.](/python/langchain-core/prompts/structured/StructuredPrompt)[Class

### DictPromptTemplate

Template represented by a dictionary.

Recognizes variables in f-string or mustache formatted string dict values.

Does NOT recognize variables in dict keys. Applies recursively.](/python/langchain-core/prompts/dict/DictPromptTemplate)[Class

### BaseChatPromptTemplate

Base class for chat prompt templates.](/python/langchain-core/prompts/chat/BaseChatPromptTemplate)[Class

### BaseStringMessagePromptTemplate

Base class for message prompt templates that use a string prompt template.](/python/langchain-core/prompts/chat/BaseStringMessagePromptTemplate)[Class

### BaseMessagePromptTemplate

Base class for message prompt templates.](/python/langchain-core/prompts/message/BaseMessagePromptTemplate)[Class

### StringPromptTemplate

String prompt that exposes the format method, returning a prompt.](/python/langchain-core/prompts/string/StringPromptTemplate)

Copy page

### On This Page

Classes16