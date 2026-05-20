# langchain-aws release notes

Feature-focused release notes — new features and breaking changes only.
Source: https://github.com/langchain-ai/langchain-aws/releases

## 1.5.0 — 2026-05-19

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.5.0)

_Maintenance / bug-fix release — no feature changes._

## 1.4.7 — 2026-05-15

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.7)

- feat: Add new method for structured output - "prompt_prefill" by @gabrielrfg in https://github.com/langchain-ai/langchain-aws/pull/1026

## 1.4.6 — 2026-05-04

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.6)

_Maintenance / bug-fix release — no feature changes._

## 1.4.5 — 2026-04-22

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.5)

_Maintenance / bug-fix release — no feature changes._

## 1.4.4 — 2026-04-15

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.4)

- feat(aws): Update ChatBedrockConverse to support `create_agent` `response_format` by @michaelnchin in https://github.com/langchain-ai/langchain-aws/pull/934
- feat(aws): isolate browser and ci sessions for parallel subagents by @sundargthb in https://github.com/langchain-ai/langchain-aws/pull/966

## 1.4.3 — 2026-04-03

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.3)

- feat(aws): impute file name for `document` content blocks by @ccurme in https://github.com/langchain-ai/langchain-aws/pull/963

## 1.4.2 — 2026-03-31

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.2)

- feat: add timeout and max_retries constructor params to ChatBedrockConverse and ChatBedrock by @baskaryan in https://github.com/langchain-ai/langchain-aws/pull/947

## 1.4.1 — 2026-03-20

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.1)

- feat(aws): add configurable code interpreter identifier to CodeInterpreter by @harrytran001 in https://github.com/langchain-ai/langchain-aws/pull/919
- feat(aws): Support Claude adaptive thinking setting by @michaelnchin in https://github.com/langchain-ai/langchain-aws/pull/928
- feat(aws): Introduce Valkey Vector Store for LangChain AWS by @Jonathan-Improving in https://github.com/langchain-ai/langchain-aws/pull/889
- feat(aws): add ChatBedrockNovaSonic using Bidirectional Streaming API  (#785) by @Keyur-S-Patel in https://github.com/langchain-ai/langchain-aws/pull/918
- feat(aws): Prompt caching middleware support for Converse API and Nova models by @michaelnchin in https://github.com/langchain-ai/langchain-aws/pull/913
- feat(aws): add proxy, extensions, and profile support to browser toolkit by @kevin-orellana in https://github.com/langchain-ai/langchain-aws/pull/897
- feat(aws): add Qwen ChatML prompt conversion support by @Keyur-S-Patel in https://github.com/langchain-ai/langchain-aws/pull/936

## 1.4.0 — 2026-03-09

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.4.0)

- feat(aws): add native structured outputs support for Bedrock Converse API by @ndgigliotti in https://github.com/langchain-ai/langchain-aws/pull/884
- feat(aws): add prompt caching middleware for Bedrock by @Haknt in https://github.com/langchain-ai/langchain-aws/pull/839

## 1.3.1 — 2026-02-27

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.3.1)

- feat(aws): Support strict parameter in ChatBedrockConverse bind_tools by @michaelnchin in https://github.com/langchain-ai/langchain-aws/pull/882

## 1.3.0 — 2026-02-23

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.3.0)

- feat(aws): add ChatAnthropicBedrock by @ccurme in https://github.com/langchain-ai/langchain-aws/pull/891

## 1.2.5 — 2026-02-11

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.2.5)

- feat(aws): infer region, allow snake case in guardrail configs by @jacoblee93 in https://github.com/langchain-ai/langchain-aws/pull/876

## 1.2.4 — 2026-02-10

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.2.4)

- feat(aws): Add API key parameter to Bedrock chat models by @michaelnchin in https://github.com/langchain-ai/langchain-aws/pull/849

## 1.2.3 — 2026-02-10

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.2.3)

- feat(aws): Support Separate Embeddings for Querying and Document Indexing for AmazonS3Vectors by @f4roukb in https://github.com/langchain-ai/langchain-aws/pull/857

## 1.2.2 — 2026-01-30

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.2.2)

- feat(aws): Be aware of "au" region prefix in Bedrock model_id by @tgargiani in https://github.com/langchain-ai/langchain-aws/pull/840

## 1.2.1 — 2026-01-15

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.2.1)

- feat(aws): add sync multimodal embedding support to BedrockEmbeddings by @johnkitaoka in https://github.com/langchain-ai/langchain-aws/pull/822
- feat(aws): Add Amazon Nova 2.0 support with system tools and reasoning configuration by @dkovvuri in https://github.com/langchain-ai/langchain-aws/pull/784
- feat(aws): Pass integration_source="langchain" to AgentCore SDK clients by @sundargthb in https://github.com/langchain-ai/langchain-aws/pull/831

## 1.2.0 — 2025-12-31

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.2.0)

_Maintenance / bug-fix release — no feature changes._

## 1.1.1 — 2025-12-24

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.1.1)

- feat(aws): Add support for AWS Bedrock serviceTier by @adamhadani in https://github.com/langchain-ai/langchain-aws/pull/795
- feat(aws): add Nova text embeddings support by @johnkitaoka in https://github.com/langchain-ai/langchain-aws/pull/791
- feat(aws): support custom headers on ChatBedrockConverse by @ccurme in https://github.com/langchain-ai/langchain-aws/pull/811
- feat(aws): add dimensions parameter to BedrockEmbeddings by @johnkitaoka in https://github.com/langchain-ai/langchain-aws/pull/805

## 1.1.0 — 2025-11-24

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.1.0)

- feat: Support Qwen3 models on ChatBedrock (+ gpt-oss streaming) by @michaelnchin in langchain-aws#679
- feat: Add property descriptions support to Neptune graph classes by @hamadsuniverse in langchain-aws#707
- feat(aws): Add optional system parameter to ChatBedrockConverse by @Steinkreis in langchain-aws#743
- feat: Add user_agent_extra to AmazonKnowledgeBasesRetriever by @maalouli in langchain-aws#750
- feat(aws): support model profiles by @ccurme in langchain-aws#768

## 1.0.0 — 2025-10-17

[Release on GitHub](https://github.com/langchain-ai/langchain-aws/releases/tag/langchain-aws%3D%3D1.0.0)

- feat(aws): (v1) support standard message content by @ccurme in https://github.com/langchain-ai/langchain-aws/pull/643
