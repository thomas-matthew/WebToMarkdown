1. [Overview](/en/guides "Overview")
2. [Snowflake Horizon Catalog](/en/user-guide/snowflake-horizon "Snowflake Horizon Catalog")
4. [Applications and tools for connecting to Snowflake](/en/guides-overview-connecting "Applications and tools for connecting to Snowflake")
6. [Virtual warehouses](/en/user-guide/warehouses "Virtual warehouses")
7. [Databases, Tables, & Views](/en/guides-overview-db "Databases, Tables, & Views")
8. [Data types](/en/data-types "Data types")
10. Data Integration

    - [Snowflake Openflow](/en/user-guide/data-integration/openflow/about "Snowflake Openflow")
    - Apache Iceberg™

      - [Apache Iceberg™ Tables](/en/user-guide/tables-iceberg "Apache Iceberg™ Tables")
      - [Snowflake Open Catalog](/en/user-guide/opencatalog/overview "Snowflake Open Catalog")
    - Zero-Copy Connectors

      - [About SAP® and Snowflake](/en/user-guide/data-integration/zero-copy/about-sap-snowflake "About SAP® and Snowflake")
11. Data engineering

    - [Data loading](/en/guides-overview-loading-data "Data loading")
    - [Dynamic tables](/en/user-guide/dynamic-tables/overview "Dynamic tables")
    - [Streams and tasks](/en/user-guide/data-pipelines-intro "Streams and tasks")
    - [Row timestamps](/en/user-guide/data-engineering/row-timestamps "Row timestamps")
    - [DCM Projects](/en/user-guide/dcm-projects/dcm-projects-overview "DCM Projects")
    - [dbt Projects on Snowflake](/en/user-guide/data-engineering/dbt-projects-on-snowflake "dbt Projects on Snowflake")
    - [Data Unloading](/en/guides-overview-unloading-data "Data Unloading")
12. [Storage lifecycle policies](/en/user-guide/storage-management/storage-lifecycle-policies "Storage lifecycle policies")
13. [Migrations](/en/migrations/migrations "Migrations")
15. [Queries](/en/guides-overview-queries "Queries")
16. [Listings](/en/collaboration/collaboration-listings-about "Listings")
17. [Collaboration](/en/guides-overview-sharing "Collaboration")
19. [Snowflake AI & ML](/en/guides-overview-ai-features "Snowflake AI & ML")

    * [Governance and availability](/en/user-guide/snowflake-cortex/governance-and-availability "Governance and availability")
    * [Snowflake CoWork](/en/user-guide/snowflake-cortex/snowflake-cowork "Snowflake CoWork")
    * [Cortex Code](/en/user-guide/cortex-code/cortex-code "Cortex Code")
    * [Cortex AI Functions](/en/user-guide/snowflake-cortex/aisql "Cortex AI Functions")

      + [Privileges and model access](/en/user-guide/snowflake-cortex/aisql-privileges-and-access "Privileges and model access")
      + [Models and regional availability](/en/user-guide/snowflake-cortex/aisql-regional-availability "Models and regional availability")
      + [Cost considerations](/en/user-guide/snowflake-cortex/aisql-cost "Cost considerations")
      + [Programmatic use (Python and CLI)](/en/user-guide/snowflake-cortex/aisql-programmatic-use "Programmatic use (Python and CLI)")
      + [Cortex AI Function Studio](/en/user-guide/snowflake-cortex/ai-function-studio "Cortex AI Function Studio")
      + [Cortex AI Documents](/en/user-guide/snowflake-cortex/ai-documents "Cortex AI Documents")
      + [Cortex AI Multimodal](/en/user-guide/snowflake-cortex/ai-multimodal "Cortex AI Multimodal")
      + [Cortex Playground](/en/user-guide/snowflake-cortex/cortex-playground "Cortex Playground")
      + [AI\_COMPLETE Structured Outputs](/en/user-guide/snowflake-cortex/complete-structured-outputs "AI_COMPLETE Structured Outputs")
      + [Vector Embeddings](/en/user-guide/snowflake-cortex/vector-embeddings "Vector Embeddings")
      + [Sentiment extraction](/en/user-guide/snowflake-cortex/ai-sentiment "Sentiment extraction")
      + [Detect and redact PII](/en/user-guide/snowflake-cortex/redact-pii "Detect and redact PII")
      + [Managing AI Function costs with Account Usage](/en/user-guide/snowflake-cortex/ai-func-cost-management "Managing AI Function costs with Account Usage")
      + [Fine-tuning](/en/user-guide/snowflake-cortex/cortex-finetuning "Fine-tuning")
    * [Cortex Agents](/en/user-guide/snowflake-cortex/cortex-agents "Cortex Agents")
    * [Snowflake-managed MCP server](/en/user-guide/snowflake-cortex/cortex-agents-mcp "Snowflake-managed MCP server")
    * [Cortex Analyst](/en/user-guide/snowflake-cortex/cortex-analyst "Cortex Analyst")
    * [Cortex Search](/en/user-guide/snowflake-cortex/cortex-search/cortex-search-overview "Cortex Search")
    * [Cortex Knowledge Extensions](/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-overview "Cortex Knowledge Extensions")
    * [Cortex Inference](/en/user-guide/snowflake-cortex/cortex-rest-api "Cortex Inference")
    * [Cortex AI Guardrails](/en/user-guide/snowflake-cortex/cortex-ai-guardrails "Cortex AI Guardrails")
    * [AI Observability](/en/user-guide/snowflake-cortex/ai-observability "AI Observability")
    * [ML Functions](/en/guides-overview-ml-functions "ML Functions")
    * [Provisioned Throughput](/en/user-guide/snowflake-cortex/provisioned-throughput "Provisioned Throughput")
    * [ML Development and ML Ops](/en//developer-guide/snowpark-ml/overview "ML Development and ML Ops")
    * [Pricing](/en/user-guide/snowflake-cortex/pricing "Pricing")
21. [Snowflake Postgres](/en/user-guide/snowflake-postgres/about "Snowflake Postgres")
23. [Alerts & Notifications](/en/guides-overview-alerts "Alerts & Notifications")
25. [Security](/en/guides-overview-secure "Security")
27. [Organizations & Accounts](/en/guides-overview-manage "Organizations & Accounts")
28. [Business continuity & data recovery](/en/user-guide/replication-intro "Business continuity & data recovery")
30. [Performance optimization](/en/guides-overview-performance "Performance optimization")
31. [Cost & Billing](/en/guides-overview-cost "Cost & Billing")

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)Cortex AI Functions

# Snowflake Cortex AI Functions (including LLM functions)[¶](#snowflake-cortex-ai-functions-including-llm-functions)

Regional Availability

Available to accounts in [select regions](/user-guide/snowflake-cortex/aisql-regional-availability).

Some individual Cortex AI Functions are [Preview Features](/release-notes/preview-features). Check
the status of each function before using it in production. Functions not marked as preview features are generally
available (GA) and can be used in production.

Use Cortex AI Functions in Snowflake to run unstructured analytics on text and images with industry-leading LLMs from OpenAI, Anthropic, Meta, Mistral AI, and DeepSeek.
AI Functions support use cases such as:

* Extracting entities to enrich metadata and streamline validation
* Aggregating insights across customer tickets
* Filtering and classifying content by natural language
* Sentiment and aspect-based analysis for service improvement
* Translating and localizing multilingual content
* Parsing documents for analytics and RAG pipelines

All the LLMs that Snowflake provides access to via our Snowflake AI Features are deployed within the Snowflake Service perimeter.

## Available functions[¶](#available-functions)

Snowflake Cortex features are provided as SQL functions and are also available [in Python](/user-guide/snowflake-cortex/aisql-programmatic-use).
To call any of these functions, your role needs the USE AI FUNCTIONS account-level privilege and one of the
CORTEX\_USER or AI\_FUNCTIONS\_USER database roles. For details, see
[Privileges and model access for Cortex AI Functions](/user-guide/snowflake-cortex/aisql-privileges-and-access).

Cortex AI Functions can be grouped into the following categories:

* [Cortex AI functions](#label-cortex-llm-ai-function)
* [Helper functions](#label-cortex-llm-helper-functions)

### Cortex AI functions[¶](#cortex-ai-functions)

These task-specific functions are purpose-built managed functions that automate routine tasks, like simple summaries and
quick translations, that don’t require any customization.

* [AI\_COMPLETE](/sql-reference/functions/ai_complete): Generates a completion for a given text string or image using a selected LLM. Use this function for most generative AI tasks.
* [AI\_CLASSIFY](/sql-reference/functions/ai_classify): Classifies text or images into user-defined categories.
* [AI\_FILTER](/sql-reference/functions/ai_filter): Returns True or False for a given text or image input, allowing you to filter results in *SELECT*, *WHERE*, or *JOIN … ON* clauses.
* [AI\_AGG](/sql-reference/functions/ai_agg): Aggregates a text column and returns insights across multiple rows based on a user-defined prompt. This function isn’t subject to context window limitations.
* [AI\_EMBED](/sql-reference/functions/ai_embed): Generates an embedding vector for a text or image input, which can be used for similarity search, clustering, and classification tasks.
* [AI\_EXTRACT](/sql-reference/functions/ai_extract): Extracts information from an input string or file, for example, text, images, and documents. Supports multiple languages.
* [AI\_SENTIMENT](/sql-reference/functions/ai_sentiment): Extracts sentiment from text.
* [AI\_SUMMARIZE\_AGG](/sql-reference/functions/ai_summarize_agg): Aggregates a text column and returns a summary across multiple rows. This function isn’t subject to context window limitations.
* [AI\_SIMILARITY](/sql-reference/functions/ai_similarity): Calculates the embedding similarity between two inputs.
* [AI\_TRANSCRIBE](/sql-reference/functions/ai_transcribe): Transcribes audio and video files stored in a stage, extracting text, timestamps, and speaker information.
* [AI\_PARSE\_DOCUMENT](/sql-reference/functions/ai_parse_document): Extracts text (using OCR mode) or text with layout information
  (using LAYOUT mode) from documents in an internal or external stage. Can also extract images found in a document.
* [AI\_REDACT](/sql-reference/functions/ai_redact): Redact personally identifiable information (PII) from text.
* [AI\_TRANSLATE](/sql-reference/functions/ai_translate): Translates text between supported languages.
* [SUMMARIZE (SNOWFLAKE.CORTEX)](/sql-reference/functions/summarize-snowflake-cortex): Returns a summary of the text that you’ve specified.

### Helper functions[¶](#helper-functions)

Helper functions are purpose-built managed functions that reduce cases of failures when running other Cortex AI Functions, for example by
getting the count of tokens in an input prompt to ensure the call doesn’t exceed a model limit.

* [TO\_FILE](/sql-reference/functions/to_file): Creates a reference to a file in an internal or external stage for use with
  AI\_COMPLETE and other functions that accept files.
* [AI\_COUNT\_TOKENS](/sql-reference/functions/ai_count_tokens): Given an input text, returns the token count based on the model or Cortex
  function specified.
* [PROMPT](/sql-reference/functions/prompt): Helps you build prompt objects for use with AI\_COMPLETE and other functions.

## Performance considerations[¶](#performance-considerations)

Cortex AI Functions are optimized for throughput. We recommend using these functions to process numerous inputs such as text from large SQL tables. Batch processing is typically better suited for AI Functions. For more interactive use cases where latency is important, use the REST API. These are available for simple inference (Complete API), embedding (Embed API) and agentic applications (Agents API).

## Legal notices[¶](#legal-notices)




The data classification of inputs and outputs are as set forth in the following table.

| Input data classification | Output data classification | Designation |
| --- | --- | --- |
| Usage Data | Customer Data | Generally available functions are Covered AI Features. Preview functions are Preview AI Features.  [[1]](#footnote-1) |

Expand

Show lessSee more

[1]
Represents the defined term used in the AI Terms and Acceptable Use Policy.

For additional information, refer to [Snowflake AI and ML](/guides-overview-ai-features).

Was this page helpful?

YesNo

[Visit Snowflake](https://www.snowflake.com)

[Join the conversation](https://community.snowflake.com/s/)

[Develop with Snowflake](https://developers.snowflake.com)

[Share your feedback](/feedback)

[Read the latest on our blog](https://www.snowflake.com/blog/)

[Get your own certification](https://learn.snowflake.com)

[Privacy Notice](https://www.snowflake.com/privacy-policy/)[Site Terms](https://www.snowflake.com/legal/snowflake-site-terms/)Cookies Settings© 2026 Snowflake, Inc. All Rights Reserved.

On this page

1. [Available functions](#available-functions)
2. [Cortex AI functions](#cortex-ai-functions)
3. [Helper functions](#helper-functions)
4. [Performance considerations](#performance-considerations)
5. [Legal notices](#legal-notices)