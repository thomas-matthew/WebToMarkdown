# langchain-anthropic release notes

Feature-focused release notes — new features and breaking changes only.
Source: https://github.com/langchain-ai/langchain/releases

## 1.4.3 — 2026-05-03

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.4.3)

_Maintenance / bug-fix release — no feature changes._

## 1.4.2 — 2026-04-28

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.4.2)

- feat(core): add content-block-centric streaming (v2) (#36834)

## 1.4.1 — 2026-04-17

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.4.1)

- feat(anthropic): support opus 4.7 features (#36847)
- feat(anthropic): support adaptive thinking mode (#36293)

## 1.4.0 — 2026-03-17

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.4.0)

- feat(anthropic): AnthropicPromptCachingMiddleware: apply explicit caching to system message and tool definitions (#35969)
- feat(anthropic): delegate cache_control kwarg to anthropic top-level param (#35967)

## 1.3.5 — 2026-03-14

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.3.5)

- feat(model-profiles): new fields + `Makefile` target (#35788)

## 1.3.4 — 2026-02-24

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.3.4)

- feat(anthropic): add ChatAnthropicBedrock wrapper (#35091)
- feat(anthropic): add User-Agent header for Anthropic API calls (#35268)

## 1.3.3 — 2026-02-15

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.3.3)

- feat(core): add ContextOverflowError, raise in anthropic and openai (#35099)
- feat(model-profiles): add text_inputs and text_outputs (#35084)

## 1.3.2 — 2026-02-15

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.3.2)

_Maintenance / bug-fix release — no feature changes._

## 1.3.1 — 2026-01-05

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.3.1)

_Maintenance / bug-fix release — no feature changes._

## 1.3.0 — 2025-12-12

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.3.0)

- feat(anthropic): accept `TypedDict` for built-in tool types (#34279)
- feat(anthropic): auto-apply mcp beta header (#34301)
- feat(anthropic): support mcp_toolset in bind_tools (#34284)
- feat(core,anthropic): `extras` on `BaseTool` (#34120)
- feat(anthropic): document and test fine grained tool streaming (#34118)
- feat(anthropic): use model profile for max output tokens (#34163)
- feat(anthropic): auto append relevant beta headers for computer use (#34117)
- feat(anthropic): tool search support  (#34119)
- feat(anthropic): add `effort` support (#34116)
- feat(anthropic): auto append relevant beta headers (#34113)
- feat(langchain): support `SystemMessage` in `create_agent`'s `system_prompt` (#34055)

## 1.2.0 — 2025-11-24

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.2.0)

- feat(model-profiles): distribute data across packages (#34024)

## 1.1.0 — 2025-11-17

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.1.0)

- feat(anthropic): support native structured output feature and strict tool calling (#33980)

## 1.0.4 — 2025-11-14

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.0.4)

_Maintenance / bug-fix release — no feature changes._

## 1.0.3 — 2025-11-12

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.0.3)

- feat(anthropic): support code_execution_20250825 (#33925)

## 1.0.2 — 2025-11-07

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.0.2)

_Maintenance / bug-fix release — no feature changes._

## 1.0.1 — 2025-10-30

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.0.1)

_Maintenance / bug-fix release — no feature changes._

## 1.0.0 — 2025-10-17

[Release on GitHub](https://github.com/langchain-ai/langchain/releases/tag/langchain-anthropic%3D%3D1.0.0)

- feat(langchain_v1): Add ShellToolMiddleware and ClaudeBashToolMiddleware (#33527)
- feat(anthropic): add more anthropic middleware (#33510)
- feat(anthropic): add async implementation to middleware (#33506)
