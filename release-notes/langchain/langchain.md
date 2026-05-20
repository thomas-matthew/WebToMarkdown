# langchain release notes

Feature-focused release notes — new features and breaking changes only.
Source: https://github.com/langchain-ai/langchain/releases

## 1.3.1 — 2026-05-15

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.3.1)

_Maintenance / bug-fix release — no feature changes._

## 1.3.0 — 2026-05-12

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.3.0)

_Maintenance / bug-fix release — no feature changes._

## 1.2.18 — 2026-05-08

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.18)

_Maintenance / bug-fix release — no feature changes._

## 1.2.17 — 2026-04-30

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.17)

- feat(langchain): add `respond` decision to HITL middleware (#37095)

## 1.2.16 — 2026-04-29

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.16)

- feat(core): add content-block-centric streaming (v2) (#36834)
- feat(langchain): `ls_agent_type` tag on `create_agent` calls (#36774)

## 1.2.15 — 2026-04-03

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.15)

_Maintenance / bug-fix release — no feature changes._

## 1.2.14 — 2026-03-31

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.14)

_Maintenance / bug-fix release — no feature changes._

## 1.2.13 — 2026-03-19

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.13)

- feat: Add LangSmith integration metadata to create_agent and init_chat_model (#35810)

## 1.2.12 — 2026-03-11

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.12)

- feat: tracing for wrap model + tool call (#35765)

## 1.2.11 — 2026-03-10

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.11)

- feat(openai): support automatic server-side compaction (#35212)
- feat(openrouter): add `langchain-openrouter` provider package (#35211)

## 1.2.10 — 2026-02-10

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.10)

_Maintenance / bug-fix release — no feature changes._

## 1.2.9 — 2026-02-06

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.9)

- feat: support state updates from `wrap_model_call` with command(s) (#35033)
- feat: threading context through `create_agent` flows + middleware (#34978)

## 1.2.8 — 2026-02-02

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.8)

- feat(langchain): add `ToolCallRequest` to middleware exports (#34894)

## 1.2.7 — 2026-01-23

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.7)

- feat: dynamic tool registration via middleware (#34842)

## 1.2.6 — 2026-01-16

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.6)

_Maintenance / bug-fix release — no feature changes._

## 1.2.5 — 2026-01-16

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.5)

- feat(langchain): update summarization prompt (#34754)

## 1.2.4 — 2026-01-14

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.4)

- feat(langchain): add `state` to `_ModelRequestOverrides` (#34692)

## 1.2.3 — 2026-01-08

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.3)

_Maintenance / bug-fix release — no feature changes._

## 1.2.2 — 2026-01-07

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.2)

_Maintenance / bug-fix release — no feature changes._

## 1.2.1 — 2026-01-07

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.1)

- feat(langchain): enhance `init_chat_model` with improved validation (#34226)
- feat(langchain): Add support to `google_genai` provider in `init_embeddings` (#34388)
- feat(infra): add CI check for out of date lockfiles (#34397)

## 1.2.0 — 2025-12-15

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.2.0)

- feat(langchain,openai): add strict flag to ProviderStrategy structured output (#34149)
- feat(core,anthropic): `extras` on `BaseTool` (#34120)

## 1.1.3 — 2025-12-08

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.1.3)

- feat: add agent name to `AIMessage` (#34254)
- feat(anthropic): add `effort` support (#34116)
- feat(langchain): add support for Upstage (Solar) in `init_chat_model` (#34220)

## 1.1.2 — 2025-12-04

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.1.2)

_Maintenance / bug-fix release — no feature changes._

## 1.1.1 — 2025-12-04

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.1.1)

- feat: Use uuid7 for run ids (#34172)

## 1.1.0 — 2025-11-24

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.1.0)

- feat(langchain): support `SystemMessage` in `create_agent`'s `system_prompt` (#34055)
- feat(model-profiles): distribute data across packages (#34024)
- feat: `ModelRetryMiddleware` (#34027)
- feat(langchain): reference model profiles for provider strategy (#33974)
- feat: refactor tests coverage (#33927)
- feat(langchain): support async summarization in SummarizationMiddleware (#33918)
- feat(langchain): (SummarizationMiddleware) support use of model context windows when triggering summarization (#33825)

## 1.0.8 — 2025-11-19

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.8)

_Maintenance / bug-fix release — no feature changes._

## 1.0.7 — 2025-11-14

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.7)

_Maintenance / bug-fix release — no feature changes._

## 1.0.6 — 2025-11-14

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.6)

_Maintenance / bug-fix release — no feature changes._

## 1.0.5 — 2025-11-07

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.5)

_Maintenance / bug-fix release — no feature changes._

## 1.0.4 — 2025-11-06

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.4)

- feat(langchain): add `model-profiles` as optional dependency (#33794)

## 1.0.3 — 2025-10-29

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.3)

- feat: support structured output retry middleware (#33663)
- feat(langchain): export `UsageMetadata` (#33692)

## 1.0.2 — 2025-10-21

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.2)

_Maintenance / bug-fix release — no feature changes._

## 1.0.1 — 2025-10-20

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.1)

_Maintenance / bug-fix release — no feature changes._

## 1.0.0 — 2025-10-17

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain%3D%3D1.0.0)

- feat(langchain_v1): Python 3.14 support (#33560)
- feat(langchain_v1): Add ShellToolMiddleware and ClaudeBashToolMiddleware (#33527)
- feat(langchain): file-search middleware (#33551)
- feat(langchain_v1): tool retry middleware (#33503)
- feat(langchain_v1): injected runtime (#33500)
- feat(langchain_v1): add async implementations to wrap_model_call (#33467)
- feat(langchain_v1): add override to model request and tool call request (#33465)
- feat(langchain_v1): add async implementation for wrap_tool_call (#33420)
- feat(langchain_v1): expand message exports (#33419)
- feat(langchain_v1): tool emulator (#33357)
- feat(langchain_v1): refactoring HITL API (#33397)
- feat(langchain_v1): add on_tool_call middleware hook (#33329)
- feat(langchain_v1): on_model_call middleware (#33328)
- feat(langchain_v1): simplify to use ONE agent (#33302)
- feat(langchain_v1): `before_agent` and `after_agent` hooks (#33279)
- feat(langchain_v1): Implement Context Editing Middleware  (#33267)
- feat(openai): enable stream_usage when using default base URL and client (#33205)
- feat(langchain_v1): Add retry_model_request middleware hook, add ModelFallbackMiddleware (#33275)
- feat(langchain_v1): add llm selection middleware (#33272)
- feat(langchain_v1): represent server side tools in modifyModelRequest and update tool handling (#33274)
- feat(langchain_v1): Implement PIIMiddleware (#33271)
- feat(langchain_v1): Add ToolCallLimitMiddleware (#33269)
- feat(langchain_v1): implement nicer devx for dynamic prompt (#33264)
- feat(langchain_v1): description generator for HITL middleware (#33195)
- **[breaking]** chore(core,langchain,langchain_v1)!: remove globals from langchain-v1, update globals in langchain-classic, langchain-core (#33251)
- **[breaking]** chore(langchain_v1)!: Remove ToolNode from agents (#33250)
- feat(langchain): model call limits (#33178)
- feat(langchain_v1): update messages namespace (#33207)
- feat(langchain): use decorators for jumps instead (#33179)
- feat(langchain_v1): add `async` support for `create_agent` (#33175)
- feat(langchain): Using Structured Response as Key in Output Schema for Middleware Agent (#33159)
- feat(langchain): todo middleware (#33152)
- feat(langchain): improvements to anthropic prompt caching (#33058)
- feat(langchain): new decorator pattern for dynamically generated middleware (#33053)
- feat(langchain): dynamic system prompt middleware (#33006)
- feat(langchain): improved HITL patterns (#32996)
- feat(langchain): support PEP604 ( `|` union) in tool node error handlers (#32861)
- feat(langchain): middleware support in `create_agent` (#32828)
- feat(langchain): revamped `create_react_agent` (#32705)
- feat(openai): `minimal` and `verbosity` (#32455)
- feat(langchain): add stuff and map reduce chains (#32333)
- feat(docs): improve devx, fix `Makefile` targets (#32237)
