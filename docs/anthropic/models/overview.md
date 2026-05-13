Models & pricing/Models

# Models overview

Copy page

Claude is a family of state-of-the-art large language models developed by Anthropic. This guide introduces the available models and compares their performance.

Copy page

## Choosing a model

If you're unsure which model to use, consider starting with **Claude Opus 4.7** for the most complex tasks. It is our most capable generally available model, with a step-change improvement in agentic coding over Claude Opus 4.6.

All current Claude models support text and image input, text output, multilingual capabilities, and vision. Models are available through the Claude API, [Claude Platform on AWS](/docs/en/build-with-claude/claude-platform-on-aws), [Amazon Bedrock](/docs/en/build-with-claude/claude-in-amazon-bedrock), [Vertex AI](/docs/en/build-with-claude/claude-on-vertex-ai), and [Microsoft Foundry](/docs/en/build-with-claude/claude-in-microsoft-foundry).

Once you've picked a model, [learn how to make your first API call](/docs/en/get-started).

### Latest models comparison

| Feature | Claude Opus 4.7 | Claude Sonnet 4.6 | Claude Haiku 4.5 |
| --- | --- | --- | --- |
| **Description** | Our most capable generally available model for complex reasoning and agentic coding | The best combination of speed and intelligence | The fastest model with near-frontier intelligence |
| **Claude API ID** | claude-opus-4-7 | claude-sonnet-4-6 | claude-haiku-4-5-20251001 |
| **Claude API alias** | claude-opus-4-7 | claude-sonnet-4-6 | claude-haiku-4-5 |
| **AWS Bedrock ID** | anthropic.claude-opus-4-73 | anthropic.claude-sonnet-4-6 | anthropic.claude-haiku-4-5-20251001-v1:0 |
| **Vertex AI ID** | claude-opus-4-7 | claude-sonnet-4-6 | claude-haiku-4-5@20251001 |
| **Pricing**1 | $5 / input MTok $25 / output MTok | $3 / input MTok $15 / output MTok | $1 / input MTok $5 / output MTok |
| **[Extended thinking](/docs/en/build-with-claude/extended-thinking)** | No | Yes | Yes |
| **[Adaptive thinking](/docs/en/build-with-claude/adaptive-thinking)** | Yes | Yes | No |
| **[Priority Tier](/docs/en/api/service-tiers)** | Yes | Yes | Yes |
| **Comparative latency** | Moderate | Fast | Fastest |
| **Context window** | 1M tokens | 1M tokens | 200k tokens |
| **Max output** | 128k tokens | 64k tokens | 64k tokens |
| **Reliable knowledge cutoff** | Jan 20262 | Aug 20252 | Feb 2025 |
| **Training data cutoff** | Jan 2026 | Jan 2026 | Jul 2025 |

*1 - See [Pricing](/docs/en/about-claude/pricing) for complete pricing information including Batch API discounts and prompt caching rates.*

*2 - **Reliable knowledge cutoff** indicates the date through which a model's knowledge is most extensive and reliable. **Training data cutoff** is the broader date range of training data used. For more information, see [Anthropic's Transparency Hub](https://www.anthropic.com/transparency).*

*3 - Claude Opus 4.7 is available on Bedrock through [Claude in Amazon Bedrock](/docs/en/build-with-claude/claude-in-amazon-bedrock) (the Messages-API Bedrock endpoint).*

[Claude Mythos Preview](https://anthropic.com/glasswing) is offered separately as a research preview model for defensive cybersecurity workflows as part of [Project Glasswing](https://anthropic.com/glasswing). Access is invitation-only and there is no self-serve sign-up.

Every Claude model ID is a pinned snapshot. Models with a date in the ID (for example, `20250929`) are fixed to that specific release. Starting with the Claude 4.6 generation, model IDs use a dateless format that is also a pinned snapshot, not an evergreen pointer. For models before the 4.6 generation, entries in the Claude API alias column are convenience pointers that resolve to a dated model ID. For details on the naming convention and how versioning works, see [Model IDs and versioning](/docs/en/about-claude/models/model-ids-and-versions).

Starting with **Claude Sonnet 4.5 and all subsequent models** (including Claude Sonnet 4.6), Bedrock offers two endpoint types: **global endpoints** (dynamic routing for maximum availability) and **regional endpoints** (guaranteed data routing through specific geographic regions). Vertex AI offers three endpoint types: global endpoints, **multi-region endpoints** (dynamic routing within a geographic area), and regional endpoints. For more information, see [Cloud platform pricing](/docs/en/about-claude/pricing#cloud-platform-pricing).

**Claude Platform on AWS** uses the same model IDs as the Claude API (for example, `claude-opus-4-6`), not Bedrock-style IDs. Model lifecycle on Claude Platform on AWS follows Anthropic's first-party [Model deprecations](/docs/en/about-claude/model-deprecations), not Bedrock's. See [Available models](/docs/en/build-with-claude/claude-platform-on-aws#available-models) for the model list.

You can query model capabilities and token limits programmatically with the [Models API](/docs/en/api/models/list). The response includes `max_input_tokens`, `max_tokens`, and a `capabilities` object for every available model.

The Max output values above apply to the synchronous Messages API. On the [Message Batches API](/docs/en/build-with-claude/batch-processing#extended-output-beta), Opus 4.7, Opus 4.6, and Sonnet 4.6 support up to 300k output tokens by using the `output-300k-2026-03-24` beta header.

### Legacy models

## Prompt and output performance

Claude 4 models excel in:

* **Performance**: Top-tier results in reasoning, coding, multilingual tasks, long-context handling, honesty, and image processing. See the [Claude 4 blog post](http://www.anthropic.com/news/claude-4) for more information.
* **Engaging responses**: Claude models are ideal for applications that require rich, human-like interactions.

  + If you prefer more concise responses, you can adjust your prompts to guide the model toward the desired output length. Refer to the [prompt engineering guides](/docs/en/build-with-claude/prompt-engineering) for details.
  + For prompting best practices, see [Prompting best practices](/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices).
* **Output quality**: When migrating from previous model generations to Claude 4, you may notice larger improvements in overall performance.

## Migrating to Claude Opus 4.7

If you're currently using Claude Opus 4.6 or older Claude models, consider migrating to Claude Opus 4.7 to take advantage of improved intelligence and a step-change jump in agentic coding. For detailed migration instructions, see [Migrating to Claude Opus 4.7](/docs/en/about-claude/models/migration-guide).

## Get started with Claude

If you're ready to start exploring what Claude can do for you, dive in! Whether you're a developer looking to integrate Claude into your applications or a user wanting to experience the power of AI firsthand, the following resources can help.

Looking to chat with Claude? Visit [claude.ai](http://www.claude.ai)!

[Intro to Claude

Explore Claude's capabilities and development flow.](/docs/en/intro)[Quickstart

Learn how to make your first API call in minutes.](/docs/en/get-started)[Claude Console

Craft and test powerful prompts directly in your browser.](/)

If you have any questions or need assistance, don't hesitate to reach out to the [support team](https://support.claude.com/) or consult the [Discord community](https://www.anthropic.com/discord).

Was this page helpful?

* [Choosing a model](#choosing-a-model)
* [Latest models comparison](#latest-models-comparison)
* [Prompt and output performance](#prompt-and-output-performance)
* [Migrating to Claude Opus 4.7](#migrating-to-claude-opus-4-7)
* [Get started with Claude](#get-started-with-claude)

### Solutions

* [AI agents](https://claude.com/solutions/agents)
* [Code modernization](https://claude.com/solutions/code-modernization)
* [Coding](https://claude.com/solutions/coding)
* [Customer support](https://claude.com/solutions/customer-support)
* [Education](https://claude.com/solutions/education)
* [Financial services](https://claude.com/solutions/financial-services)
* [Government](https://claude.com/solutions/government)
* [Life sciences](https://claude.com/solutions/life-sciences)

### Partners

* [Amazon Bedrock](https://claude.com/partners/amazon-bedrock)
* [Google Cloud's Vertex AI](https://claude.com/partners/google-cloud-vertex-ai)

### Learn

* [Blog](https://claude.com/blog)
* [Courses](https://www.anthropic.com/learn)
* [Use cases](https://claude.com/resources/use-cases)
* [Connectors](https://claude.com/partners/mcp)
* [Customer stories](https://claude.com/customers)
* [Engineering at Anthropic](https://www.anthropic.com/engineering)
* [Events](https://www.anthropic.com/events)
* [Powered by Claude](https://claude.com/partners/powered-by-claude)
* [Service partners](https://claude.com/partners/services)
* [Startups program](https://claude.com/programs/startups)

### Company

* [Anthropic](https://www.anthropic.com/company)
* [Careers](https://www.anthropic.com/careers)
* [Economic Futures](https://www.anthropic.com/economic-futures)
* [Research](https://www.anthropic.com/research)
* [News](https://www.anthropic.com/news)
* [Responsible Scaling Policy](https://www.anthropic.com/news/announcing-our-updated-responsible-scaling-policy)
* [Security and compliance](https://trust.anthropic.com)
* [Transparency](https://www.anthropic.com/transparency)

### Learn

* [Blog](https://claude.com/blog)
* [Courses](https://www.anthropic.com/learn)
* [Use cases](https://claude.com/resources/use-cases)
* [Connectors](https://claude.com/partners/mcp)
* [Customer stories](https://claude.com/customers)
* [Engineering at Anthropic](https://www.anthropic.com/engineering)
* [Events](https://www.anthropic.com/events)
* [Powered by Claude](https://claude.com/partners/powered-by-claude)
* [Service partners](https://claude.com/partners/services)
* [Startups program](https://claude.com/programs/startups)

### Help and security

* [Availability](https://www.anthropic.com/supported-countries)
* [Status](https://status.claude.com/)
* [Support](https://support.claude.com/)
* [Discord](https://www.anthropic.com/discord)

### Terms and policies

* [Privacy policy](https://www.anthropic.com/legal/privacy)
* [Responsible disclosure policy](https://www.anthropic.com/responsible-disclosure-policy)
* [Terms of service: Commercial](https://www.anthropic.com/legal/commercial-terms)
* [Terms of service: Consumer](https://www.anthropic.com/legal/consumer-terms)
* [Usage policy](https://www.anthropic.com/legal/aup)