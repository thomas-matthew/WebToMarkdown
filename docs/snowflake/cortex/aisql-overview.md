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
    * [Snowflake Intelligence](/en/user-guide/snowflake-cortex/snowflake-intelligence "Snowflake Intelligence")
    * [Cortex Code](/en/user-guide/cortex-code/cortex-code "Cortex Code")
    * [Cortex AI Functions](/en/user-guide/snowflake-cortex/aisql "Cortex AI Functions")

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
    * [Cortex REST API](/en/user-guide/snowflake-cortex/cortex-rest-api "Cortex REST API")
    * [Cortex AI Guardrails](/en/user-guide/snowflake-cortex/cortex-ai-guardrails "Cortex AI Guardrails")
    * [AI Observability](/en/user-guide/snowflake-cortex/ai-observability "AI Observability")
    * [ML Functions](/en/guides-overview-ml-functions "ML Functions")
    * [Provisioned Throughput](/en/user-guide/snowflake-cortex/provisioned-throughput "Provisioned Throughput")
    * [ML Development and ML Ops](/en//developer-guide/snowpark-ml/overview "ML Development and ML Ops")
21. [Snowflake Postgres](/en/user-guide/snowflake-postgres/about "Snowflake Postgres")
23. [Alerts & Notifications](/en/guides-overview-alerts "Alerts & Notifications")
25. [Security](/en/guides-overview-secure "Security")
26. [Data Governance](/en/guides-overview-govern "Data Governance")
27. [Privacy](/en/guides-overview-privacy "Privacy")
29. [Organizations & Accounts](/en/guides-overview-manage "Organizations & Accounts")
30. [Business continuity & data recovery](/en/user-guide/replication-intro "Business continuity & data recovery")
32. [Performance optimization](/en/guides-overview-performance "Performance optimization")
33. [Cost & Billing](/en/guides-overview-cost "Cost & Billing")

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)Cortex AI Functions

# Snowflake Cortex AI Functions (including LLM functions)[¶](#snowflake-cortex-ai-functions-including-llm-functions)

Regional Availability

Available to accounts in [select regions](#label-cortex-llm-availability).

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

Snowflake Cortex features are provided as SQL functions and are also available [in Python](#label-cortex-llm-model-python).
Cortex AI Functions can be grouped into the following categories:

* [Cortex AI functions](#label-cortex-llm-ai-function)
* [Helper functions](#label-cortex-llm-helper-functions)

### Cortex AI functions[¶](#cortex-ai-functions)

These task-specific functions are purpose-built managed functions that automate routine tasks, like simple summaries and
quick translations, that don’t require any customization.

* [AI\_COMPLETE](/sql-reference/functions/ai_complete): Generates a completion for a given text string or image using a selected LLM. Use this function for most generative AI tasks.

  + AI\_COMPLETE is the updated version of [COMPLETE (SNOWFLAKE.CORTEX)](/sql-reference/functions/complete-snowflake-cortex).
* [AI\_CLASSIFY](/sql-reference/functions/ai_classify): Classifies text or images into user-defined categories.

  + AI\_CLASSIFY is the updated version of [CLASSIFY\_TEXT (SNOWFLAKE.CORTEX)](/sql-reference/functions/classify_text-snowflake-cortex) with support for multi-label and image classification.
* [AI\_FILTER](/sql-reference/functions/ai_filter): Returns True or False for a given text or image input, allowing you to filter results in *SELECT*, *WHERE*, or *JOIN … ON* clauses.
* [AI\_AGG](/sql-reference/functions/ai_agg): Aggregates a text column and returns insights across multiple rows based on a user-defined prompt. This function isn’t subject to context window limitations.
* [AI\_EMBED](/sql-reference/functions/ai_embed): Generates an embedding vector for a text or image input, which can be used for similarity search, clustering, and classification tasks.

  + AI\_EMBED is the updated version of [EMBED\_TEXT\_1024 (SNOWFLAKE.CORTEX)](/sql-reference/functions/embed_text_1024-snowflake-cortex).
* [AI\_EXTRACT](/sql-reference/functions/ai_extract): Extracts information from an input string or file, for example, text, images, and documents. Supports multiple languages.

  + AI\_EXTRACT is the updated version of [EXTRACT\_ANSWER (SNOWFLAKE.CORTEX)](/sql-reference/functions/extract_answer-snowflake-cortex).
* [AI\_SENTIMENT](/sql-reference/functions/ai_sentiment): Extracts sentiment from text.

  + AI\_SENTIMENT is the updated version of [SENTIMENT (SNOWFLAKE.CORTEX)](/sql-reference/functions/sentiment-snowflake-cortex).
* [AI\_SUMMARIZE\_AGG](/sql-reference/functions/ai_summarize_agg): Aggregates a text column and returns a summary across multiple rows. This function isn’t subject to context window limitations.
* [AI\_SIMILARITY](/sql-reference/functions/ai_similarity): Calculates the embedding similarity between two inputs.
* [AI\_TRANSCRIBE](/sql-reference/functions/ai_transcribe): Transcribes audio and video files stored in a stage, extracting text, timestamps, and speaker information.
* [AI\_PARSE\_DOCUMENT](/sql-reference/functions/ai_parse_document): Extracts text (using OCR mode) or text with layout information
  (using LAYOUT mode) from documents in an internal or external stage. Can also extract images found in a document.

  + AI\_PARSE\_DOCUMENT is the updated version of [PARSE\_DOCUMENT (SNOWFLAKE.CORTEX)](/sql-reference/functions/parse_document-snowflake-cortex).
* [AI\_REDACT](/sql-reference/functions/ai_redact): Redact personally identifiable information (PII) from text.
* [AI\_TRANSLATE](/sql-reference/functions/ai_translate): Translates text between supported languages.

  + AI\_TRANSLATE is the updated version of [TRANSLATE (SNOWFLAKE.CORTEX)](/sql-reference/functions/translate-snowflake-cortex).
* [SUMMARIZE (SNOWFLAKE.CORTEX)](/sql-reference/functions/summarize-snowflake-cortex): Returns a summary of the text that you’ve specified.

### Helper functions[¶](#helper-functions)

Helper functions are purpose-built managed functions that reduce cases of failures when running other Cortex AI Functions, for example by
getting the count of tokens in an input prompt to ensure the call doesn’t exceed a model limit.

* [TO\_FILE](/sql-reference/functions/to_file): Creates a reference to a file in an internal or external stage for use with
  AI\_COMPLETE and other functions that accept files.
* [AI\_COUNT\_TOKENS](/sql-reference/functions/ai_count_tokens): Given an input text, returns the token count based on the model or Cortex
  function specified.

  + AI\_COUNT\_TOKENS is the updated version of [COUNT\_TOKENS (SNOWFLAKE.CORTEX)](/sql-reference/functions/count_tokens-snowflake-cortex).
* [PROMPT](/sql-reference/functions/prompt): Helps you build prompt objects for use with AI\_COMPLETE and other functions.
* [TRY\_COMPLETE (SNOWFLAKE.CORTEX)](/sql-reference/functions/try_complete-snowflake-cortex): Works like the COMPLETE function, but returns NULL
  when the function could not execute instead of an error code.

### Cortex Guard[¶](#cortex-guard)

Cortex Guard is an option of the AI\_COMPLETE (or SNOWFLAKE.CORTEX.COMPLETE) function designed to filter possible unsafe and harmful responses from a
language model. Cortex Guard is currently built with Meta’s Llama Guard 3. Cortex Guard works by evaluating the responses of a language
model before that output is returned to the application. Once you activate Cortex Guard, language model responses which may be associated
with violent crimes, hate, sexual content, self-harm, and more are automatically filtered. See
[COMPLETE arguments](/sql-reference/functions/complete-snowflake-cortex#label-cortex-complete-arguments) for syntax and examples.

Note

Usage of Cortex Guard incurs compute charges based on the number of [input tokens processed](#label-cortex-llm-cost-considerations),
in addition to the charges for the AI\_COMPLETE function.

## Performance considerations[¶](#performance-considerations)

Cortex AI Functions are optimized for throughput. We recommend using these functions to process numerous inputs such as text from large SQL tables. Batch processing is typically better suited for AI Functions. For more interactive use cases where latency is important, use the REST API. These are available for simple inference (Complete API), embedding (Embed API) and agentic applications (Agents API).

## Cortex LLM privileges[¶](#cortex-llm-privileges)

This section describes the privileges required for users to access Snowflake Cortex AI Functions. It covers how to control and grant access to these functions using roles and account-level privileges.

### USE AI FUNCTIONS on the account privilege[¶](#use-ai-functions-on-the-account-privilege)

Important

Your users need both the USE AI FUNCTIONS account-level privilege (or a per-function `USE AI FUNCTION <name>`
privilege) and one of the CORTEX\_USER or
[AI\_FUNCTIONS\_USER](#label-cortex-ai-functions-user-role) database roles to use Snowflake Cortex AI Functions.
Because USE AI FUNCTIONS is granted to the PUBLIC role by default, no additional action is needed for this privilege
unless it has been revoked.

The USE AI FUNCTIONS account-level privilege includes the privileges that allow your users to call Snowflake Cortex AI functions. By default, the USE AI FUNCTIONS privilege is granted to the PUBLIC role. The PUBLIC role is automatically granted to all users and roles, allowing all users in your account to use the Snowflake Cortex AI functions. If you don’t want all your users to have this privilege, you can revoke access to the PUBLIC role and grant access to other roles.

If you need finer-grained control over which AI functions individual roles can call, see
[USE AI FUNCTION <name> — per-function privileges](#label-cortex-ai-function-per-function-privileges).

This section explains how to do the following:

* Revoke the USE AI FUNCTIONS privilege from the PUBLIC role
* Grant the USE AI FUNCTIONS privilege to specific roles

Important

You must use the ACCOUNTADMIN role to manage the USE AI FUNCTIONS account-level privilege.

To revoke the USE AI FUNCTIONS account-level privilege from the PUBLIC role, run the following command:

Copy code

```
REVOKE USE AI FUNCTIONS ON ACCOUNT
FROM ROLE PUBLIC;
```

Note

Revoking the USE AI FUNCTIONS account-level privilege prevents your users from accessing most Snowflake Cortex AI Functions.
Your users need **both** the USE AI FUNCTIONS account-level privilege and one of the CORTEX\_USER or
[AI\_FUNCTIONS\_USER](#label-cortex-ai-functions-user-role) database roles to use Snowflake Cortex AI Functions. If a user has the USE AI FUNCTIONS account-level privilege but doesn’t have the CORTEX\_USER role, they can still use the AI\_AGG and AI\_SUMMARIZE\_AGG functions.

After you’ve revoked the USE AI FUNCTIONS privilege from the PUBLIC role, you can use the ACCOUNTADMIN role to grant it to other roles in your Snowflake account.

The following example:

1. Grants the USE AI FUNCTIONS privilege to `cortex_user_role`.
2. Grants the `cortex_user_role` to `example_user`.

Copy code

```
USE ROLE ACCOUNTADMIN;

CREATE ROLE cortex_user_role;

GRANT USE AI FUNCTIONS ON ACCOUNT TO ROLE cortex_user_role;

GRANT ROLE cortex_user_role TO USER example_user;
```

You can grant access to Snowflake Cortex AI Functions through roles that are commonly used by specific groups of users. For example, if you’ve created an `analyst` role that is used as a default role by analysts in your organization, you can grant these users access to Snowflake Cortex AI Functions with a single [GRANT <privileges> … TO ROLE](/sql-reference/sql/grant-privilege) statement. For more information about granting privileges to commonly used roles, see [User roles](/user-guide/admin-user-management#label-user-management-user-roles).

Copy code

```
GRANT USE AI FUNCTIONS ON ACCOUNT TO ROLE analyst;
```

Important

Currently, USE AI FUNCTIONS does not apply to AI Function queries that are run inside Snowflake native applications. A query with AI Function calls runs successfully regardless of whether the role has USE AI FUNCTIONS privilege.

### USE AI FUNCTION <name> — per-function privileges[¶](#use-ai-function-name-per-function-privileges)

In addition to the blanket USE AI FUNCTIONS privilege, you can grant per-function privileges using
`USE AI FUNCTION <name>`. This allows ACCOUNTADMIN to control access at the individual function level
instead of granting access to all AI functions at once.

The per-function privilege and the blanket USE AI FUNCTIONS privilege have an **OR** relationship:

* If a role has USE AI FUNCTIONS, it can call **all** Cortex AI functions, regardless of any per-function grants or revocations.
* If a role has only `USE AI FUNCTION AI_COMPLETE`, it can call only the AI\_COMPLETE function.
* If a role has both USE AI FUNCTIONS and a per-function grant, revoking the per-function grant does **not** affect access because the blanket privilege still applies.

Important

Per-function privileges require the same CORTEX\_USER (or AI\_FUNCTIONS\_USER) database role as the blanket
USE AI FUNCTIONS privilege.

#### Supported per-function privileges[¶](#supported-per-function-privileges)

The following table lists each Cortex AI function and its corresponding per-function privilege name for use
with `GRANT USE AI FUNCTION <name> ON ACCOUNT TO ROLE <role_name>`.

| Function | Per-function privilege name |
| --- | --- |
| [AI\_COMPLETE](/sql-reference/functions/ai_complete) | AI\_COMPLETE |
| [AI\_CLASSIFY](/sql-reference/functions/ai_classify) | AI\_CLASSIFY |
| [AI\_FILTER](/sql-reference/functions/ai_filter) | AI\_FILTER |
| [AI\_AGG](/sql-reference/functions/ai_agg) | AI\_AGG |
| [AI\_EMBED](/sql-reference/functions/ai_embed) | AI\_EMBED |
| [AI\_EXTRACT](/sql-reference/functions/ai_extract) | AI\_EXTRACT |
| [AI\_SENTIMENT](/sql-reference/functions/ai_sentiment) | AI\_SENTIMENT |
| [AI\_SUMMARIZE\_AGG](/sql-reference/functions/ai_summarize_agg) | AI\_SUMMARIZE\_AGG |
| [AI\_SIMILARITY](/sql-reference/functions/ai_similarity) | AI\_SIMILARITY |
| [AI\_TRANSCRIBE](/sql-reference/functions/ai_transcribe) | AI\_TRANSCRIBE |
| [AI\_PARSE\_DOCUMENT](/sql-reference/functions/ai_parse_document) | AI\_PARSE\_DOCUMENT |
| [AI\_REDACT](/sql-reference/functions/ai_redact) | AI\_REDACT |
| [AI\_TRANSLATE](/sql-reference/functions/ai_translate) | AI\_TRANSLATE |
| [AI\_SUMMARIZE](/sql-reference/functions/ai_summarize) | AI\_SUMMARIZE |
| [AI\_COUNT\_TOKENS](/sql-reference/functions/ai_count_tokens) | AI\_COUNT\_TOKENS |
| [SNOWFLAKE.CORTEX.COMPLETE](/sql-reference/functions/complete-snowflake-cortex) | COMPLETE |
| [SNOWFLAKE.CORTEX.CLASSIFY\_TEXT](/sql-reference/functions/classify_text-snowflake-cortex) | CLASSIFY\_TEXT |
| [SNOWFLAKE.CORTEX.COUNT\_TOKENS](/sql-reference/functions/count_tokens-snowflake-cortex) | COUNT\_TOKENS |
| [SNOWFLAKE.CORTEX.EMBED\_TEXT](/sql-reference/functions/embed_text_1024-snowflake-cortex) | EMBED\_TEXT |
| [SNOWFLAKE.CORTEX.ENTITY\_SENTIMENT](/sql-reference/functions/entity_sentiment-snowflake-cortex) | ENTITY\_SENTIMENT |
| [SNOWFLAKE.CORTEX.EXTRACT\_ANSWER](/sql-reference/functions/extract_answer-snowflake-cortex) | EXTRACT\_ANSWER |
| [SNOWFLAKE.CORTEX.PARSE\_DOCUMENT](/sql-reference/functions/parse_document-snowflake-cortex) | PARSE\_DOCUMENT |
| [SNOWFLAKE.CORTEX.SENTIMENT](/sql-reference/functions/sentiment-snowflake-cortex) | SENTIMENT |
| [SNOWFLAKE.CORTEX.SUMMARIZE](/sql-reference/functions/summarize-snowflake-cortex) | SUMMARIZE |
| [SNOWFLAKE.CORTEX.SUMMARIZE\_AGG](/sql-reference/functions/summarize_agg-snowflake-cortex) | SUMMARIZE\_AGG |
| [SNOWFLAKE.CORTEX.TRANSLATE](/sql-reference/functions/translate-snowflake-cortex) | TRANSLATE |
| [SNOWFLAKE.CORTEX.TRY\_COMPLETE](/sql-reference/functions/try_complete-snowflake-cortex) | TRY\_COMPLETE |

Expand

Show lessSee more

#### Granting per-function privileges[¶](#granting-per-function-privileges)

Use the ACCOUNTADMIN role to grant a per-function privilege. The syntax is:

Copy code

```
GRANT USE AI FUNCTION <function_name> ON ACCOUNT TO ROLE <role_name>;
```

The following example revokes the blanket privilege from PUBLIC, then grants only AI\_COMPLETE access to a
specific role:

Copy code

```
USE ROLE ACCOUNTADMIN;

-- Remove blanket access from PUBLIC
REVOKE USE AI FUNCTIONS ON ACCOUNT FROM ROLE PUBLIC;

-- Create a role with access to only AI_COMPLETE
CREATE ROLE ai_complete_user_role;
GRANT USE AI FUNCTION AI_COMPLETE ON ACCOUNT TO ROLE ai_complete_user_role;
GRANT DATABASE ROLE SNOWFLAKE.CORTEX_USER TO ROLE ai_complete_user_role;

GRANT ROLE ai_complete_user_role TO USER example_user;
```

You can grant multiple per-function privileges to the same role to build a custom set of allowed functions:

Copy code

```
USE ROLE ACCOUNTADMIN;

CREATE ROLE ai_analyst_role;

GRANT USE AI FUNCTION AI_COMPLETE ON ACCOUNT TO ROLE ai_analyst_role;
GRANT USE AI FUNCTION AI_CLASSIFY ON ACCOUNT TO ROLE ai_analyst_role;
GRANT USE AI FUNCTION AI_EXTRACT ON ACCOUNT TO ROLE ai_analyst_role;
GRANT USE AI FUNCTION AI_TRANSLATE ON ACCOUNT TO ROLE ai_analyst_role;

GRANT DATABASE ROLE SNOWFLAKE.CORTEX_USER TO ROLE ai_analyst_role;
GRANT ROLE ai_analyst_role TO USER analyst_user;
```

#### Revoking per-function privileges[¶](#revoking-per-function-privileges)

To revoke a per-function privilege:

Copy code

```
REVOKE USE AI FUNCTION <function_name> ON ACCOUNT FROM ROLE <role_name>;
```

For example:

Copy code

```
USE ROLE ACCOUNTADMIN;

REVOKE USE AI FUNCTION AI_COMPLETE ON ACCOUNT FROM ROLE ai_analyst_role;
```

After revocation, the role can no longer call AI\_COMPLETE unless it also has the blanket USE AI FUNCTIONS
privilege.

#### Viewing per-function grants[¶](#viewing-per-function-grants)

You can view per-function privilege grants using SHOW GRANTS:

Copy code

```
-- View all grants to a specific role
SHOW GRANTS TO ROLE ai_analyst_role;

-- View all grants on the account
SHOW GRANTS ON ACCOUNT;
```

Per-function grants appear with the privilege name `USE AI FUNCTION <function_name>` (for example,
`USE AI FUNCTION AI_COMPLETE`).

### Using AI Functions with Restricted Caller’s Rights[¶](#using-ai-functions-with-restricted-callers-rights)

To use AI Functions with Restricted Caller’s Rights, you must grant the USE AI FUNCTIONS privilege (or the appropriate `USE AI FUNCTION <name>` per-function privilege) to both the session role and the service or application owner role.

For example, to use AI Functions inside a Snowflake Park Container Services (SPCS) service that runs with Restricted Caller’s Rights:

1. Grant the USE AI FUNCTIONS privilege to the role used in the SPCS session (for example, `CHATBOT_USER_ROLE`):

   Copy code

   ```
   GRANT USE AI FUNCTIONS ON ACCOUNT TO ROLE CHATBOT_USER_ROLE;
   ```
2. Grant the caller version of the privilege to the service owner role:

   Copy code

   ```
   GRANT CALLER USE AI FUNCTIONS ON ACCOUNT TO ROLE <service_owner_role>;
   ```

### CORTEX\_USER database role[¶](#cortex_user-database-role)

The CORTEX\_USER database role in the SNOWFLAKE database includes the privileges that allow users to call Snowflake
Cortex AI Functions. By default, the CORTEX\_USER role is granted to the PUBLIC role. The PUBLIC role is automatically granted
to all users and roles, so this allows all users in your account to use the Snowflake Cortex AI functions.

If you don’t want all users to have this privilege, you can revoke access to the PUBLIC role and grant access to other roles.
The SNOWFLAKE.CORTEX\_USER database role cannot be granted directly to a user. For more information, see
[Using SNOWFLAKE database roles](/sql-reference/snowflake-db-roles#label-using-snowflake-db-roles).

To revoke the CORTEX\_USER database role from the PUBLIC role, run the following commands using the ACCOUNTADMIN role:

Copy code

```
REVOKE DATABASE ROLE SNOWFLAKE.CORTEX_USER
  FROM ROLE PUBLIC;

REVOKE IMPORTED PRIVILEGES ON DATABASE SNOWFLAKE
  FROM ROLE PUBLIC;
```

You can then selectively provide access to specific roles. A user with the ACCOUNTADMIN role can grant this role to a custom role in
order to allow users to access Cortex AI functions. In the following example, use the ACCOUNTADMIN role and grant the user `some_user`
the CORTEX\_USER database role via the account role `cortex_user_role`, which you create for this purpose.

Copy code

```
USE ROLE ACCOUNTADMIN;

CREATE ROLE cortex_user_role;
GRANT DATABASE ROLE SNOWFLAKE.CORTEX_USER TO ROLE cortex_user_role;

GRANT ROLE cortex_user_role TO USER some_user;
```

You can also grant access to Snowflake Cortex AI functions through existing roles commonly used by specific groups of
users. (See [User roles](/user-guide/admin-user-management#label-user-management-user-roles).) For example, if you have created an `analyst` role that is used
as a default role by analysts in your organization, you can easily grant these users access to Snowflake Cortex AI
Functions with a single GRANT statement.

Copy code

```
GRANT DATABASE ROLE SNOWFLAKE.CORTEX_USER TO ROLE analyst;
```

### AI\_FUNCTIONS\_USER database role[¶](#ai_functions_user-database-role)

The AI\_FUNCTIONS\_USER database role in the SNOWFLAKE database allows users to call Snowflake Cortex
[scalar AI functions](#label-cortex-llm-ai-function) (all Cortex AI functions except the aggregate functions
AI\_AGG and AI\_SUMMARIZE\_AGG) without granting access to Cortex services such as Cortex Agent, Cortex Analyst,
Cortex Fine-tuning, or Cortex Search.

Important

Your users need both the USE AI FUNCTIONS account-level privilege (or a per-function `USE AI FUNCTION <name>`
privilege) plus one of CORTEX\_USER and AI\_FUNCTIONS\_USER database role to call Snowflake Cortex AI functions.
Because USE AI FUNCTIONS is granted to the PUBLIC role by default, no additional action is needed for this
privilege unless it has been revoked.

AI\_FUNCTIONS\_USER role is not granted to the PUBLIC role by default. Accountadmin must
explicitly grant this role to roles that require access to AI functions. The AI\_FUNCTIONS\_USER database role
cannot be granted directly to users but must be granted to roles that users can assume. For more information, see
[Using SNOWFLAKE database roles](/sql-reference/snowflake-db-roles#label-using-snowflake-db-roles).

The following example creates a custom role, grants the AI\_FUNCTIONS\_USER database role to it, and assigns the role
to a user.

Copy code

```
USE ROLE ACCOUNTADMIN;

CREATE ROLE analyst_rl;
GRANT DATABASE ROLE SNOWFLAKE.AI_FUNCTIONS_USER TO ROLE analyst_rl;

GRANT ROLE analyst_rl TO USER some_user;
```

Alternatively, to give all users access to scalar AI function capabilities, grant the AI\_FUNCTIONS\_USER role to the
PUBLIC role.

Copy code

```
USE ROLE ACCOUNTADMIN;

GRANT DATABASE ROLE SNOWFLAKE.AI_FUNCTIONS_USER TO ROLE PUBLIC;
```

### CORTEX\_EMBED\_USER database role[¶](#cortex_embed_user-database-role)

The CORTEX\_EMBED\_USER database role in the SNOWFLAKE database includes the privileges that allow users to call the text
embedding functions AI\_EMBED, EMBED\_TEXT\_768, and EMBED\_TEXT\_1024 and to create Cortex Search Services with managed
vector embeddings. CORTEX\_EMBED\_USER allows you to grant embedding privileges separately from other Cortex AI capabilities.

Note

You can create Cortex Search Services with user-provided embeddings without the CORTEX\_EMBED\_USER role. In that
case, you must generate the embeddings yourself, outside of Snowflake, and load them into a table.

Unlike the CORTEX\_USER role, the CORTEX\_EMBED\_USER role is not granted to the PUBLIC role by default. You must
explicitly grant this role to roles that require embedding capabilities if you have revoked the CORTEX\_USER role. The
CORTEX\_EMBED\_USER database role cannot be granted directly to users but must be granted to roles that users can assume.
The following example illustrates this process.

Copy code

```
USE ROLE ACCOUNTADMIN;

CREATE ROLE cortex_embed_user_role;
GRANT DATABASE ROLE SNOWFLAKE.CORTEX_EMBED_USER TO ROLE cortex_embed_user_role;

GRANT ROLE cortex_embed_user_role TO USER some_user;
```

Alternatively, to give all users access to embedding capabilities, grant the CORTEX\_EMBED\_USER role to the PUBLIC role as follows.

Copy code

```
USE ROLE ACCOUNTADMIN;

GRANT DATABASE ROLE SNOWFLAKE.CORTEX_EMBED_USER TO ROLE PUBLIC;
```

### Using AI Functions in stored procedures with EXECUTE AS RESTRICTED CALLER[¶](#using-ai-functions-in-stored-procedures-with-execute-as-restricted-caller)

To use AI Functions inside stored procedures with `EXECUTE AS RESTRICTED CALLER`, grant the following privileges to the role that created the stored procedure:

Copy code

```
GRANT INHERITED CALLER USAGE ON ALL SCHEMAS IN DATABASE snowflake TO ROLE <role_that_created_the_stored_procedure>;
GRANT INHERITED CALLER USAGE ON ALL FUNCTIONS IN DATABASE snowflake TO ROLE <role_that_created_the_stored_procedure>;
GRANT CALLER USAGE ON DATABASE snowflake TO ROLE <role_that_created_the_stored_procedure>;
```

## Control model access[¶](#control-model-access)

Snowflake Cortex provides two independent mechanisms to enforce access to models:

* [Account-level allowlist parameter](#label-cortex-llm-allowlist) (simple, broad control)
* [Role-based access control (RBAC)](#label-cortex-llm-rbac) (fine-grained control)

You can use the account-level allowlist to control model access across your entire account, or you can use RBAC to control model access on a per-role basis.
For maximum flexibility, you can also [use both mechanisms together](#label-cortex-llm-rbac-with-account-allowlist), if you can accept additional management complexity.

### Account-level allowlist parameter[¶](#account-level-allowlist-parameter)

You can control model access across your entire account using the CORTEX\_MODELS\_ALLOWLIST parameter. [Supported features](#label-cortex-llm-model-access-supported-features) respect the value of this parameter and prevent use of models that are not in the allowlist.

The CORTEX\_MODELS\_ALLOWLIST parameter can be set to `'All'`, `'None'`, or to a comma-separated list
of model names. Model names are case-sensitive and must be specified in lowercase (for example, `'mistral-large2'`
rather than `'MISTRAL-LARGE2'`). This parameter can only be set at the account level, not at the user or session
levels. Only the ACCOUNTADMIN role can set the parameter using the [ALTER ACCOUNT](/sql-reference/sql/alter-account) command.

Examples:

* To allow access to all models:

  Copy code

  ```
  ALTER ACCOUNT SET CORTEX_MODELS_ALLOWLIST = 'All';
  ```
* To allow access to the `mistral-large2` and `llama3.1-70b` models:

  Copy code

  ```
  ALTER ACCOUNT SET CORTEX_MODELS_ALLOWLIST = 'mistral-large2,llama3.1-70b';
  ```
* To prevent access to any model:

  Copy code

  ```
  ALTER ACCOUNT SET CORTEX_MODELS_ALLOWLIST = 'None';
  ```

Use RBAC, as described in the following section, to provide specific roles with access beyond what you’ve specified in the allowlist.

### Role-based access control (RBAC)[¶](#role-based-access-control-rbac)

Although Cortex models are not themselves Snowflake objects, Snowflake lets you create model objects in the SNOWFLAKE.MODELS schema that *represent* the Cortex models. By applying RBAC to these objects, you can control access to models the same way you would any other Snowflake object. [Supported features](#label-cortex-llm-model-access-supported-features) accept the identifiers of objects in SNOWFLAKE.MODELS wherever a model can be specified.

Tip

To use RBAC exclusively, set CORTEX\_MODELS\_ALLOWLIST to `'None'`.

#### Refresh model objects and application roles[¶](#refresh-model-objects-and-application-roles)

SNOWFLAKE.MODELS is not automatically populated with the objects that represent Cortex models. You must create these
objects when you first set up model RBAC, and refresh them when you want to apply RBAC to new models.

As ACCOUNTADMIN, run the SNOWFLAKE.MODELS.CORTEX\_BASE\_MODELS\_REFRESH stored procedure to populate the SNOWFLAKE.MODELS
schema with objects representing currently available Cortex models, and to create application roles that correspond to
the models. The procedure also creates CORTEX-MODEL-ROLE-ALL, a role that covers all models.

Tip

You can safely call CORTEX\_BASE\_MODELS\_REFRESH at any time; it will not create duplicate objects or roles.

Copy code

```
CALL SNOWFLAKE.MODELS.CORTEX_BASE_MODELS_REFRESH();
```

After refreshing the model objects, you can verify that the models appear in the SNOWFLAKE.MODELS schema as follows:

Copy code

```
SHOW MODELS IN SNOWFLAKE.MODELS;
```

The returned list of models resembles the following:

| created\_on | name | model\_type | database\_name | schema\_name | owner |
| --- | --- | --- | --- | --- | --- |
| 2025-04-22 09:35:38.558 -0700 | CLAUDE-4-5-SONNET | CORTEX\_BASE | SNOWFLAKE | MODELS | SNOWFLAKE |
| 2025-04-22 09:36:16.793 -0700 | LLAMA3.1-405B | CORTEX\_BASE | SNOWFLAKE | MODELS | SNOWFLAKE |
| 2025-04-22 09:37:18.692 -0700 | OPENAI-GPT-5.2 | CORTEX\_BASE | SNOWFLAKE | MODELS | SNOWFLAKE |

Expand

Show lessSee more

To verify that you can see the application roles associated with these models, use the SHOW APPLICATION ROLES command, as in the following example:

Copy code

```
SHOW APPLICATION ROLES IN APPLICATION SNOWFLAKE;
```

The list of application roles resembles the following:

| created\_on | name | owner | comment | owner\_role\_type |
| --- | --- | --- | --- | --- |
| 2025-04-22 09:35:38.558 -0700 | CORTEX-MODEL-ROLE-ALL | SNOWFLAKE | MODELS | APPLICATION |
| 2025-04-22 09:36:16.793 -0700 | CORTEX-MODEL-ROLE-LLAMA3.1-405B | SNOWFLAKE | MODELS | APPLICATION |

Expand

Show lessSee more

#### Grant application roles to user roles[¶](#grant-application-roles-to-user-roles)

After you create the model objects and application roles, you can grant the application roles to specific user roles in your account.

* To grant a role access to a specific model:

  Copy code

  ```
  GRANT APPLICATION ROLE SNOWFLAKE."CORTEX-MODEL-ROLE-LLAMA3.1-70B" TO ROLE MY_ROLE;
  ```
* To grant a role access to all current and future models:

  Copy code

  ```
  GRANT APPLICATION ROLE SNOWFLAKE."CORTEX-MODEL-ROLE-ALL" TO ROLE MY_ROLE;
  ```

#### Use model objects with supported features[¶](#use-model-objects-with-supported-features)

To use model objects with supported Cortex features, specify the identifier of the model object in SNOWFLAKE.MODELS as the model argument.
You can use a fully-qualified identifier, a partial identifier, or a simple model name that will be automatically resolved to SNOWFLAKE.MODELS.

* Using a fully-qualified identifier:

  Copy code

  ```
  SELECT AI_COMPLETE('SNOWFLAKE.MODELS."LLAMA3.1-70B"', 'Hello');
  ```
* Using a partial identifier:

  Copy code

  ```
  USE DATABASE SNOWFLAKE;
  USE SCHEMA MODELS;
  SELECT AI_COMPLETE('LLAMA3.1-70B', 'Hello');
  ```
* Using automatic lookup with a simple model name:

  Copy code

  ```
  -- Automatically resolves to SNOWFLAKE.MODELS."LLAMA3.1-70B"
  SELECT AI_COMPLETE('llama3.1-70b', 'Hello');
  ```

#### Using RBAC on the account allowlist[¶](#using-rbac-on-the-account-allowlist)

A number of Cortex features accept a model name as a string argument, for example `AI_COMPLETE('model', 'prompt')`. When you provide a model name:

1. Cortex first attempts to locate a matching model object in SNOWFLAKE.MODELS. If you provide an unqualified name like `'x'`, it automatically looks for `SNOWFLAKE.MODELS."X"`.
2. If the model object is found, RBAC is applied to determine whether the user can use the model.
3. If no model object is found, the provided string is matched against the account-level allowlist.

The following example illustrates the use of allowlist and RBAC together. In this example, the allowlist is set to allow the `mistral-large2` model, and the user has access to the `LLAMA3.1-70B` model object through RBAC.

Copy codeExpand

```
-- set up access
USE SECONDARY ROLES NONE;
USE ROLE ACCOUNTADMIN;
ALTER ACCOUNT SET CORTEX_MODELS_ALLOWLIST = 'MISTRAL-LARGE2';
CALL SNOWFLAKE.MODELS.CORTEX_BASE_MODELS_REFRESH();
GRANT APPLICATION ROLE SNOWFLAKE."CORTEX-MODEL-ROLE-LLAMA3.1-70B" TO ROLE PUBLIC;

-- test access
USE ROLE PUBLIC;

-- this succeeds because mistral-large2 is in the allowlist
SELECT AI_COMPLETE('MISTRAL-LARGE2', 'Hello');

-- this succeeds because the role has access to the model object
SELECT AI_COMPLETE('SNOWFLAKE.MODELS."LLAMA3.1-70B"', 'Hello');

-- this fails because the first argument is
-- neither an identifier for an accessible model object
-- nor is it a model name in the allowlist
SELECT AI_COMPLETE('claude-sonnet-4-6', 'Hello');
```

Show lessSee more

Scroll to top

### Common pitfalls[¶](#common-pitfalls)

* Access to a model (whether by allowlist or RBAC) does not always mean that it can be used. It may still be subject to
  cross-region, deprecation, or other availability constraints. These restrictions can result in error messages that
  seem similar to model access errors.
* Model access controls only govern the use of a model and not the use of a feature itself. A feature can have its own access
  controls. For example, access to `AI_COMPLETE` is governed by the `CORTEX_USER` or `AI_FUNCTIONS_USER` database role and the USE AI FUNCTIONS account-level privilege. For more information, see
  [Cortex LLM privileges](#label-cortex-llm-privileges).
* Not all features support model access controls. For more information about what a feature supports, see the [supported features](#label-cortex-llm-model-access-supported-features) table.
* Secondary roles can obscure permissions. For example, if a user has ACCOUNTADMIN as a secondary role, all model objects may appear
  accessible. Disable secondary roles temporarily when verifying permissions.
* Qualified model object identifiers are quoted and therefore case-sensitive. For more information, see
  [QUOTED\_IDENTIFIERS\_IGNORE\_CASE](/sql-reference/parameters#label-quoted-identifiers-ignore-case).

### Supported features[¶](#supported-features)

Model access controls are supported by the following features:

Important

Snowflake is in the process of enforcing model RBAC for additional Cortex AI Functions. When the
[2026\_02 behavior change bundle](/release-notes/bcr-bundles/2026_02/bcr-2220) is enabled,
model access controls (both `CORTEX_MODELS_ALLOWLIST` and model RBAC) will be enforced for
additional functions including AI\_TRANSCRIBE, AI\_EXTRACT, AI\_SENTIMENT, AI\_TRANSLATE, CLASSIFY\_TEXT,
SUMMARIZE, EXTRACT\_ANSWER, AI\_PARSE\_DOCUMENT, and AI\_REDACT.

| Feature | Account-level allowlist | Role-based access control | Notes |
| --- | --- | --- | --- |
| [AI\_COMPLETE](/sql-reference/functions/ai_complete) | ✔ | ✔ |  |
| [AI\_CLASSIFY](/sql-reference/functions/ai_classify) | ✔ | ✔ | If the model powering this function is not allowed, the error message contains information about how to modify the allowlist. |
| [AI\_FILTER](/sql-reference/functions/ai_filter) | ✔ | ✔ | If the model powering this function is not allowed, the error message contains information about how to modify the allowlist. |
| [AI\_AGG](/sql-reference/functions/ai_agg) | ✔ | ✔ | If the model powering this function is not allowed, the error message contains information about how to modify the allowlist. |
| [AI\_SUMMARIZE\_AGG](/sql-reference/functions/ai_summarize_agg) | ✔ | ✔ | If the model powering this function is not allowed, the error message contains information about how to modify the allowlist. |
| [COMPLETE (SNOWFLAKE.CORTEX)](/sql-reference/functions/complete-snowflake-cortex) | ✔ | ✔ |  |
| [TRY\_COMPLETE (SNOWFLAKE.CORTEX)](/sql-reference/functions/try_complete-snowflake-cortex) | ✔ | ✔ |  |
| [Cortex REST API](/user-guide/snowflake-cortex/cortex-rest-api) | ✔ | ✔ |  |
| [Cortex Playground](/user-guide/snowflake-cortex/cortex-playground) | ✔ | ✔ |  |

Expand

Show lessSee more

## Regional availability[¶](#regional-availability)

Snowflake Cortex AI functions are available in the following regions. If your region is not listed for a particular function,
use [cross-region inference](/user-guide/snowflake-cortex/cross-region-inference#label-use-cross-region-inference).

Note

* The TRY\_COMPLETE function is available in the same regions as COMPLETE.
* The AI\_COUNT\_TOKENS function is available in all regions for any model, but the models themselves are available only in the regions specified in the tables below.

Cross-RegionNorth AmericaEuropeAsia-Pacific

The following functions and models are available in any region via [cross-region inference](/user-guide/snowflake-cortex/cross-region-inference#label-use-cross-region-inference).

| Function | Model | Cross Cloud (Any Region) | AWS US (Cross-Region) | AWS US Commercial Gov (Cross-Region) | AWS EU (Cross-Region) | AWS APJ (Cross-Region) | AWS AU (Cross-Region) | Azure US (Cross-Region) | Azure EU (Cross-Region) | Google Cloud US (Cross-Region) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| AI\_COMPLETE |  |  |  |  |  |  |  |  |  |
| `claude-opus-4-7` | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| `claude-sonnet-4-6` | ✔ | ✔ |  | ✔ | ✔ |  |  |  |  |
| `claude-opus-4-6` | ✔ | ✔ |  | ✔ |  | ✔ |  |  |  |
| `claude-sonnet-4-5` | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |  |
| `claude-opus-4-5` | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| `claude-haiku-4-5` | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |  |
| `claude-4-sonnet [legacy]` | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |  |
| `gemini-3.1-pro` | \* |  |  |  |  |  |  |  |  |
| `llama4-maverick` | ✔ | ✔ |  |  |  |  |  |  |  |
| `llama4-scout` | ✔ | ✔ |  |  |  |  |  |  |  |
| `llama3.1-8b` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |
| `llama3.1-70b` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |
| `llama3.3-70b` | ✔ | ✔ |  |  |  |  |  |  |  |
| `snowflake-llama-3.3-70b` | ✔ | ✔ |  |  |  |  |  |  |  |
| `llama3.1-405b` | ✔ | ✔ | ✔ |  |  |  | ✔ |  |  |
| `openai-gpt-5.2` | ✔ |  |  |  |  |  | ✔ |  |  |
| `openai-gpt-5.1` | ✔ |  |  |  |  |  | ✔ | ✔ |  |
| `openai-gpt-5` | ✔ |  |  |  |  |  | ✔ | ✔ |  |
| `openai-gpt-5-mini` | ✔ |  |  |  |  |  | ✔ |  |  |
| `openai-gpt-5-nano` | ✔ |  |  |  |  |  | ✔ |  |  |
| `openai-gpt-4.1` | ✔ |  |  |  |  |  | ✔ |  |  |
| `snowflake-llama-3.1-405b` | ✔ | ✔ | ✔ |  |  |  |  |  |  |
| `deepseek-r1` | ✔ | ✔ |  |  |  |  |  |  |  |
| `mistral-large2` | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| `mixtral-8x7b` | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| `mistral-7b` | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
|  |  |  |  |  |  |  |  |  |  |
| EMBED\_TEXT\_768 |  |  |  |  |  |  |  |  |  |
| `e5-base-v2` | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| `snowflake-arctic-embed-m` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |
| `snowflake-arctic-embed-m-v1.5` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| EMBED\_TEXT\_1024 |  |  |  |  |  |  |  |  |  |
| `snowflake-arctic-embed-l-v2.0` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |
| `snowflake-arctic-embed-l-v2.0-8k` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |
| `nv-embed-qa-4` | ✔ | ✔ |  |  |  |  |  |  |  |
| `multilingual-e5-large` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |
| `voyage-multilingual-2` | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
|  |  |  |  |  |  |  |  |  |  |
| AI\_CLASSIFY TEXT | ✔ | ✔ |  | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_CLASSIFY IMAGE | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_EXTRACT | ✔ | ✔ |  | ✔ | ✔ | ✔ | ✔ |  |  |
| AI\_FILTER TEXT | ✔ | ✔ |  | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_FILTER IMAGE | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_AGG |  | ✔ |  | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_REDACT | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_SENTIMENT | ✔ | ✔ |  | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_SIMILARITY TEXT | ✔ | ✔ |  | ✔ | ✔ | ✔ |  |  |  |
| AI\_SIMILARITY IMAGE | ✔ | ✔ |  | ✔ |  |  |  | ✔ |  |
| AI\_SUMMARIZE\_AGG | ✔ | ✔ |  | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_TRANSCRIBE | ✔ | ✔ |  | ✔ |  | ✔ |  |  |  |
| SENTIMENT | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| ENTITY\_SENTIMENT | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| EXTRACT\_ANSWER | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |  |  |  |
| SUMMARIZE | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| TRANSLATE | ✔ | ✔ | ✔ | ✔ | ✔ |  | ✔ | ✔ |  |
| AI\_TRANSLATE | ✔ | ✔ |  | ✔ | ✔ |  | ✔ | ✔ |  |

Expand

Show lessSee more

The following functions and models are available natively in North American regions.

| Function | Model | AWS US West 2 (Oregon) | AWS US East 1 (N. Virginia) | AWS US East (Commercial Gov - N. Virginia) | Azure East US 2 (Virginia) | Azure East US (Virginia) | Azure West US (Washington) | Azure West US 3 (Arizona) | Azure North Central US (Illinois) | Azure South Central US (Texas) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| AI\_COMPLETE |  |  |  |  |  |  |  |  |  |
| `llama4-maverick` | ✔ |  |  |  |  |  |  |  |  |
| `llama4-scout` | ✔ |  |  |  |  |  |  |  |  |
| `llama3.1-8b` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `llama3.1-70b` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `llama3.3-70b` | ✔ |  |  |  |  |  |  |  |  |
| `snowflake-llama-3.3-70b` | ✔ |  |  |  |  |  |  |  |  |
| `llama3.1-405b` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `openai-gpt-4.1` |  |  |  | ✔ |  |  |  |  |  |
| `snowflake-llama-3.1-405b` | ✔ |  |  |  |  |  |  |  |  |
| `deepseek-r1` | ✔ |  |  |  |  |  |  |  |  |
| `mistral-large2` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `mixtral-8x7b` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `mistral-7b` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| EMBED\_TEXT\_768 |  |  |  |  |  |  |  |  |  |
| `e5-base-v2` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `snowflake-arctic-embed-m` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `snowflake-arctic-embed-m-v1.5` | | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| EMBED\_TEXT\_1024 |  |  |  |  |  |  |  |  |  |
| `snowflake-arctic-embed-l-v2.0` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `snowflake-arctic-embed-l-v2.0-8k` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `nv-embed-qa-4` | ✔ |  |  |  |  |  |  |  |  |
| `multilingual-e5-large` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| `voyage-multilingual-2` | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| AI\_CLASSIFY TEXT | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_CLASSIFY IMAGE | ✔ | ✔ |  |  |  |  |  |  |  |
| AI\_EXTRACT | ✔ | ✔ |  |  | ✔ | ✔ |  |  | ✔ |
| AI\_FILTER TEXT | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_FILTER IMAGE | ✔ | ✔ |  |  |  |  |  |  |  |
| AI\_AGG | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_REDACT | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| AI\_SIMILARITY TEXT | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_SIMILARITY IMAGE | ✔ | ✔ |  |  |  |  |  |  |  |
| AI\_SUMMARIZE\_AGG | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| AI\_TRANSCRIBE | ✔ | ✔ |  | ✔ |  |  |  |  |  |
| SENTIMENT | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| ENTITY\_SENTIMENT | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| EXTRACT\_ANSWER | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| SUMMARIZE | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |
| TRANSLATE | ✔ | ✔ | ✔ | ✔ |  |  |  |  |  |

Expand

Show lessSee more

The following functions and models are available natively in European regions.

| Function |  Model | AWS Europe Central 1 (Frankfurt) | AWS Europe West 1 (Ireland) | Azure West Europe (Netherlands) |
| --- | --- | --- | --- |
| AI\_COMPLETE |  |  |  |
| |  `claude-4-sonnet [legacy]` |  |  |  |
| |  `llama4-maverick` |  |  |  |
| |  `llama4-scout` |  |  |  |
| |  `llama3.1-8b` | ✔ | ✔ | ✔ |
| |  `llama3.1-70b` | ✔ | ✔ | ✔ |
| |  `llama3.3-70b` |  |  |  |
| |  `snowflake-llama-3.3-70b` |  |  |  |
| |  `llama3.1-405b` |  |  |  |
| |  `openai-gpt-4.1` |  |  |  |
| |  `snowflake-llama-3.1-405b` |  |  |  |
| |  `deepseek-r1` |  |  |  |
| |  `mistral-large2` | ✔ | ✔ | ✔ |
| |  `mixtral-8x7b` | ✔ | ✔ | ✔ |
| |  `mistral-7b` | ✔ | ✔ | ✔ |
|  |  |  |  |
| EMBED\_TEXT\_768 |  |  |  |
| |  `e5-base-v2` | ✔ |  | ✔ |
| |  `snowflake-arctic-embed-m` | ✔ | ✔ | ✔ |
| |  `snowflake-arctic-embed-m-v1.5` | ✔ | ✔ | ✔ |
|  |  |  |  |
| EMBED\_TEXT\_1024 |  |  |  |
| |  `snowflake-arctic-embed-l-v2.0` | ✔ | ✔ | ✔ |
| |  `snowflake-arctic-embed-l-v2.0-8k` | ✔ | ✔ | ✔ |
| |  `nv-embed-qa-4` |  |  |  |
| |  `multilingual-e5-large` | ✔ | ✔ | ✔ |
| |  `voyage-multilingual-2` | ✔ | ✔ | ✔ |
|  |  |  |  |
| AI\_CLASSIFY TEXT | ✔ | ✔ | ✔ |
| AI\_CLASSIFY IMAGE | ✔ |  |  |
| AI\_EXTRACT | ✔ | ✔ | ✔ |
| AI\_FILTER TEXT | ✔ | ✔ | ✔ |
| AI\_FILTER IMAGE | ✔ |  |  |
| AI\_AGG | ✔ | ✔ | ✔ |
| AI\_REDACT | ✔ | ✔ | ✔ |
| AI\_SIMILARITY TEXT | ✔ | ✔ | ✔ |
| AI\_SIMILARITY IMAGE | ✔ |  |  |
| AI\_SUMMARIZE\_AGG | ✔ | ✔ | ✔ |
| AI\_TRANSCRIBE | ✔ |  |  |
| SENTIMENT | ✔ | ✔ | ✔ |
| ENTITY\_SENTIMENT | ✔ |  | ✔ |
| EXTRACT\_ANSWER | ✔ | ✔ | ✔ |
| SUMMARIZE | ✔ | ✔ | ✔ |
| TRANSLATE | ✔ | ✔ | ✔ |

Expand

Show lessSee more

The following functions and models are available natively in Asia-Pacific regions:

| Function | Model | AWS AP Southeast 2 (Sydney) | AWS AP Northeast 1 (Tokyo) |
| --- | --- | --- |
| AI\_COMPLETE |  |  |
| `claude-4-sonnet [legacy]` |  |  |
| `llama4-maverick` |  |  |
| `llama4-scout` |  |  |
| `llama3.1-8b` | ✔ | ✔ |
| `llama3.1-70b` | ✔ | ✔ |
| `llama3.3-70b` |  |  |
| `snowflake-llama-3.3-70b` |  |  |
| `llama3.1-405b` |  |  |
| `openai-gpt-4.1` |  |  |
| `snowflake-llama-3.1-405b` |  |  |
| `deepseek-r1` |  |  |
| `mistral-large2` | ✔ | ✔ |
| `mixtral-8x7b` | ✔ | ✔ |
| `mistral-7b` | ✔ | ✔ |
|  |  |  |
| EMBED\_TEXT\_768 |  |  |
| `e5-base-v2` | ✔ | ✔ |
| `snowflake-arctic-embed-m` | ✔ | ✔ |
| `snowflake-arctic-embed-m-v1.5` | ✔ | ✔ |
|  |  |  |
| EMBED\_TEXT\_1024 |  |  |
| `snowflake-arctic-embed-l-v2.0` | ✔ | ✔ |
| `snowflake-arctic-embed-l-v2.0-8k` | ✔ | ✔ |
| `nv-embed-qa-4` |  |  |
| `multilingual-e5-large` | ✔ | ✔ |
| `voyage-multilingual-2` | ✔ | ✔ |
|  |  |  |
| AI\_EXTRACT | ✔ | ✔ |
| AI\_CLASSIFY TEXT | ✔ | ✔ |
| AI\_CLASSIFY IMAGE |  |  |
| AI\_FILTER TEXT | ✔ | ✔ |
| AI\_FILTER IMAGE |  |  |
| AI\_AGG | ✔ | ✔ |
| AI\_SIMILARITY TEXT | ✔ | ✔ |
| AI\_SIMILARITY IMAGE |  |  |
| AI\_SUMMARIZE\_AGG | ✔ | ✔ |
| AI\_TRANSCRIBE |  |  |
| EXTRACT\_ANSWER | ✔ | ✔ |
| SENTIMENT | ✔ | ✔ |
| ENTITY\_SENTIMENT |  | ✔ |
| SUMMARIZE | ✔ | ✔ |
| TRANSLATE | ✔ | ✔ |

Expand

Show lessSee more

\*\*\*\*\* Indicates a preview function or model. Preview features are not suitable for production workloads.

The following Snowflake Cortex AI functions and models are available in the following extended regions.

| Function |  Model | AWS US East 2 (Ohio) | AWS CA Central 1 (Central) | AWS SA East 1 (São Paulo) | AWS Europe West 2 (London) | AWS Europe Central 1 (Frankfurt) | AWS Europe North 1 (Stockholm) | AWS AP Northeast 1 (Tokyo) | AWS AP South 1 (Mumbai) | AWS AP Southeast 2 (Sydney) | AWS AP Southeast 3 (Jakarta) | Azure South Central US (Texas) | Azure West US 2 (Washington) | Azure UK South (London) | Azure North Europe (Ireland) | Azure Switzerland North (Zürich) | Azure Central India (Pune) | Azure Japan East (Tokyo, Saitama) | Azure Southeast Asia (Singapore) | Azure Australia East (New South Wales) | Google Cloud Europe West 2 (London) | Google Cloud Europe West 4 (Netherlands) | Google Cloud US Central 1 (Iowa) | Google Cloud US East 4 (N. Virginia) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| EMBED\_TEXT\_768 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| |  `snowflake-arctic-embed-m-v1.5` | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |
| |  `snowflake-arctic-embed-m` | | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |
| EMBED\_TEXT\_1024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| |  `multilingual-e5-large` | | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |
| AI\_EXTRACT | ✔ | ✔ | ✔ | ✔ | ✔ | Cross-region only | ✔ | Cross-region only | ✔ | Cross-region only | ✔ | ✔ | Cross-region only | ✔ | Cross-region only | ✔ | ✔ | ✔ | ✔ | Cross-region only | Cross-region only | Cross-region only | Cross-region only |

Expand

Show lessSee more

The following table lists availability of legacy models. These models have not been deprecated and can still be used.
However, Snowflake recommends newer models for new development.

**Legacy**

| Function (Model) | AWS US West 2 (Oregon) | AWS US East 1 (N. Virginia) | AWS Europe Central 1 (Frankfurt) | AWS Europe West 1 (Ireland) | AWS AP Southeast 2 (Sydney) | AWS AP Northeast 1 (Tokyo) | Azure East US 2 (Virginia) | Azure West Europe (Netherlands) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| AI\_COMPLETE |  |  |  |  |  |  |  |  |
| |  `llama3-8b` | ✔ | ✔ | ✔ |  | ✔ | ✔ | ✔ |  |
| |  `llama3-70b` | ✔ | ✔ | ✔ |  |  | ✔ | ✔ |  |
| |  `mistral-large` | ✔ | ✔ | ✔ |  |  |  | ✔ | ✔ |

Expand

Show lessSee more

## Cost considerations[¶](#cost-considerations)

Snowflake Cortex AI functions incur compute cost based on the number of tokens processed. Refer to the
[Snowflake Service Consumption Table](https://www.snowflake.com/legal-files/CreditConsumptionTable.pdf) for each function’s cost in credits per million tokens.

A token is the smallest unit of text processed by Snowflake Cortex AI functions. An industry convention for text is that a token is approximately equal to four
characters, although this can vary by model, as can token equivalence for media files.

* For functions that generate new text using provided text (AI\_COMPLETE, AI\_CLASSIFY, AI\_FILTER, AI\_AGG, AI\_SUMMARIZE, and
  AI\_TRANSLATE, and their previous versions in the SNOWFLAKE.CORTEX schema), both input and output tokens are billable.
* For Cortex Guard, only input tokens are counted. The number of input tokens is based on the number of tokens output from AI\_COMPLETE (or COMPLETE).
  Cortex Guard usage is billed in addition to the cost of the AI\_COMPLETE (or COMPLETE) function.
* For AI\_SIMILARITY, AI\_EMBED, and the SNOWFLAKE.CORTEX.EMBED\_\* functions, only input tokens are counted.
* For EXTRACT\_ANSWER, the number of billable tokens is the sum of the number of tokens in the `from_text` and
  `question` fields.
* AI\_CLASSIFY, AI\_FILTER, AI\_AGG, AI\_SENTIMENT, AI\_SUMMARIZE\_AGG, SUMMARIZE, TRANSLATE, AI\_TRANSLATE, EXTRACT\_ANSWER,
  ENTITY\_SENTIMENT, and SENTIMENT add a prompt to the input text in order to generate the response. As a result, the
  billed token count is higher than the number of tokens in the text you provide.
* AI\_CLASSIFY labels, descriptions, and examples are counted as input tokens for each record processed, not just once for each AI\_CLASSIFY call.
* For AI\_PARSE\_DOCUMENT (or SNOWFLAKE.CORTEX.PARSE\_DOCUMENT), billing is based on the number of document pages processed.
* TRY\_COMPLETE (SNOWFLAKE.CORTEX) does not incur costs for error handling. If the TRY\_COMPLETE(SNOWFLAKE.CORTEX) function returns NULL, no cost
  is incurred.
* For AI\_EXTRACT, both input and output tokens are counted. The `responseFormat` argument is counted as input tokens.
  For document formats consisting of pages, the number of pages processed is counted as input tokens. Each page in a document is counted as 970 tokens.
* AI\_COUNT\_TOKENS incurs only compute cost to run the function. No additional token-based costs are incurred.

For models that support media files such as images or audio:

* Audio files are billed at 50 tokens per second of audio.
* The token equivalence of images is determined by the model used.

Snowflake recommends executing queries that call a Snowflake Cortex AI Function with a smaller
warehouse (no larger than MEDIUM). Larger warehouses do not increase performance. The cost associated with keeping a warehouse active
continues to apply when executing a query that calls a Snowflake Cortex LLM Function. For general information on
compute costs, see [Understanding compute cost](/user-guide/cost-understanding-compute).

### Warehouse sizing[¶](#warehouse-sizing)

Snowflake recommends using a warehouse size no larger than MEDIUM when calling Snowflake Cortex AI
Functions. Using a larger warehouse than necessary does not increase performance, but can result in unnecessary costs.
This recommendation may change in the future as we continue to evolve Cortex AI Functions.

### Track costs for AI services[¶](#track-costs-for-ai-services)

To track credits used for AI Services including LLM Functions in your account, use the [METERING\_HISTORY view](/sql-reference/account-usage/metering_history):

Copy code

```
SELECT *
  FROM SNOWFLAKE.ACCOUNT_USAGE.METERING_DAILY_HISTORY
  WHERE SERVICE_TYPE='AI_SERVICES';
```

### Track credit consumption for Cortex AI Functions[¶](#track-credit-consumption-for-cortex-ai-functions)

To view the credit and token consumption for each AI Function call, use the [CORTEX\_FUNCTIONS\_USAGE\_HISTORY view](/sql-reference/account-usage/cortex_functions_usage_history):

Copy code

```
SELECT *
  FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_FUNCTIONS_USAGE_HISTORY;
```

You can also view the credit and token consumption for each query within your Snowflake account. Viewing the credit and token consumption for each query helps you identify queries that are consuming the most credits and tokens.

The following example query uses the [CORTEX\_FUNCTIONS\_QUERY\_USAGE\_HISTORY view](/sql-reference/account-usage/cortex_functions_query_usage_history) to show the credit and token consumption for all of your queries within your account.

Copy code

```
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_FUNCTIONS_QUERY_USAGE_HISTORY;
```

You can also use the same view to see the credit and token consumption for a specific query.

Copy code

```
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_FUNCTIONS_QUERY_USAGE_HISTORY
WHERE query_id='<query-id>';
```

Note

You can’t get granular usage information for requests made with the REST API.

The query usage history is grouped by the models used in the query. For example, if you ran:

Copy code

```
SELECT AI_COMPLETE('mistral-7b', 'Is a hot dog a sandwich'), AI_COMPLETE('mistral-large', 'Is a hot dog a sandwich');
```

The query usage history would show two rows, one for `mistral-7b` and one for `mistral-large`.

## Model restrictions[¶](#model-restrictions)

Models used by Snowflake Cortex have limitations on size as described in the table below. Sizes are given in tokens.
According to industry estimates, tokens generally represent about four characters of text, so the number of words corresponding to a token limit is
less than the number of tokens. Inputs exceeding the context window limit result in an error. Output that exceed the
context window limit is truncated.

The maximum size of the output that a model can produce is limited by the following:

* The model’s output token limit.
* The space available in the context window after the model consumes the input tokens.

For example, `claude-sonnet-4-6` has a context window of 1,000,000 tokens. If 100,000 tokens are used for the input, the model can generate up to 8,192 tokens. However, if 195,000 tokens are used as input, then the model can only generate up to 5,000 tokens for a total of 200,000 tokens.

Important

In the AWS AP Southeast 2 (Sydney) region:

* the context window for `llama3-8b` and `mistral-7b` is 4,096 tokens.
* the context window for `llama3.1-8b` is 16,384 tokens.
* the context window for the Snowflake managed model from the SUMMARIZE function is 4,096 tokens.

In the AWS Europe West 1 (Ireland) region:

* the context window for `llama3.1-8b` is 16,384 tokens.
* the context window for `mistral-7b` is 4,096 tokens.

| Function | Model | Context window (tokens) | Max output (tokens) |
| --- | --- | --- | --- |
| AI\_COMPLETE | `llama4-maverick` | 128,000 | 8,192 |
|  | `llama4-scout` | 128,000 | 8,192 |
|  | `deepseek-r1` | 32,768 | 8,192 |
|  | `claude-sonnet-4-6` | 1,000,000 | 64,000 |
|  | `claude-opus-4-7` | 1,000,000 | 128,000 |
|  | `claude-opus-4-6` | 1,000,000 | 128,000 |
|  | `claude-sonnet-4-5` | 200,000 | 64,000 |
|  | `claude-haiku-4-5` | 200,000 | 64,000 |
|  | `claude-opus-4-5` | 200,000 | 64,000 |
|  | `gemini-3.1-pro` | 1,000,000 | 64,000 |
|  | `mistral-large` | 32,000 | 8,192 |
|  | `mistral-large2` | 128,000 | 8,192 |
|  | `openai-gpt-5.1` | 272,000 | 8,192 |
|  | `openai-gpt-5` | 272,000 | 8,192 |
|  | `openai-gpt-5-mini` | 272,000 | 8,192 |
|  | `openai-gpt-5-nano` | 272,000 | 8,192 |
|  | `openai-gpt-4.1` | 128,000 | 32,000 |
|  | `mixtral-8x7b` | 32,000 | 8,192 |
|  | `llama3.1-8b` | 128,000 | 8,192 |
|  | `llama3.1-70b` | 128,000 | 8,192 |
|  | `llama3.3-70b` | 128,000 | 8,192 |
|  | `snowflake-llama-3.3-70b` | 128,000 | 8,192 |
|  | `llama3.1-405b` | 128,000 | 8,192 |
|  | `snowflake-llama-3.1-405b` | 8,000 | 8,192 |
|  | `mistral-7b` | 32,000 | 8,192 |
| EMBED\_TEXT\_768 | `e5-base-v2` | 512 | n/a |
|  | `snowflake-arctic-embed-m` | 512 | n/a |
| EMBED\_TEXT\_1024 | `nv-embed-qa-4` | 512 | n/a |
|  | `multilingual-e5-large` | 512 | n/a |
|  | `voyage-multilingual-2` | 32,000 | n/a |
| AI\_EXTRACT | `arctic-extract` | 128,000 | 51,200 |
| AI\_FILTER | Snowflake managed model | 128,000 | n/a |
| AI\_CLASSIFY | Snowflake managed model | 128,000 | n/a |
| AI\_AGG | Snowflake managed model | 128,000 per row can be used across multiple rows | 8,192 |
| AI\_SENTIMENT | Snowflake managed model | 2,048 | n/a |
| AI\_SUMMARIZE\_AGG | Snowflake managed model | 128,000 per row can be used across multiple rows | 8,192 |
| ENTITY\_SENTIMENT | Snowflake managed model | 2,048 | n/a |
| EXTRACT\_ANSWER | Snowflake managed model | 2,048 for text 64 for question | n/a |
| SENTIMENT | Snowflake managed model | 512 | n/a |
| SUMMARIZE | Snowflake managed model | 32,000 | 4,096 |
| TRANSLATE | Snowflake managed model | 4,096 | n/a |

Expand

Show lessSee more

## Choosing a model[¶](#choosing-a-model)

The Snowflake Cortex AI\_COMPLETE function supports multiple models of varying capability, latency, and cost. These models
have been carefully chosen to align with common customer use cases. To achieve the best
[performance per credit](#label-cortex-llm-cost-considerations), choose a model that’s a good match for the content size and
complexity of your task. Here are brief overviews of the available models.

### Large models[¶](#large-models)

If you’re not sure where to start, try the most capable models first to establish a baseline to evaluate other models.
`claude-sonnet-4-6` and `mistral-large2` are the most capable models offered by Snowflake Cortex,
and will give you a good idea what a state-of-the-art model can do.

* `Claude 4-6 Sonnet` is a leader in general reasoning and multimodal capabilities. It outperforms its predecessors in tasks that require reasoning across different domains and modalities. You can use its large output capacity to get more information from either structured or unstructured queries. Its reasoning capabilities and large context windows make it well-suited for agentic workflows.
* `deepseek-r1` is a foundation model trained using large-scale reinforcement-learning (RL) without supervised fine-tuning (SFT).
  It can deliver high performance across math, code, and reasoning tasks.
  To access the model, set the [cross-region inference parameter](/user-guide/snowflake-cortex/cross-region-inference#label-use-cross-region-inference) to `AWS_US`.
* `mistral-large2` is Mistral AI’s most advanced large language model with top-tier reasoning capabilities.
  Compared to `mistral-large`, it’s significantly more capable in code generation, mathematics, reasoning, and
  provides much stronger multilingual support. It’s ideal for complex tasks that require large reasoning capabilities
  or are highly specialized, such as synthetic text generation, code generation, and multilingual text analytics.
* `snowflake-llama3.1-405b` is a model derived from the open source llama3.1 model. It uses the [SwiftKV optimizations](https://www.snowflake.com/en/blog/up-to-75-lower-inference-cost-llama-meta-llm/) developed by the Snowflake AI research team to deliver up to a 75% inference cost reduction. SwiftKV achieves higher throughput performance with minimal accuracy loss.

### Medium models[¶](#medium-models)

* `llama3.1-70b` is an open source model that demonstrates state-of-the-art performance ideal for chat applications,
  content creation, and enterprise applications. It is a highly performant, cost effective model that enables diverse use
  cases with a context window of 128K. `llama3-70b` is still supported and has a context window of 8K.
* `snowflake-llama3.3-70b` is a model derived from the open source llama3.3 model. It uses the [SwiftKV optimizations](https://www.snowflake.com/en/blog/up-to-75-lower-inference-cost-llama-meta-llm/) developed by the Snowflake AI research team to deliver up to a 75% inference cost reduction. SwiftKV achieves higher throughput performance with minimal accuracy loss.
* `mixtral-8x7b` is ideal for text generation, classification, and question answering. Mistral models are optimized
  for low latency with low memory requirements, which translates into higher throughput for enterprise use cases.

### Small models[¶](#small-models)

* `llama3.1-8b` is ideal for tasks that require low to moderate reasoning. It’s a light-weight, ultra-fast model with a context window
  of 128K. `llama3-8b` provides a smaller context window and relatively lower accuracy.
* `mistral-7b` is ideal for your simplest summarization, structuration, and question answering tasks that need to be
  done quickly. It offers low latency and high throughput processing for multiple pages of text with its 32K context
  window.

The following table provides information on how popular models perform on various benchmarks,
including the models offered by Snowflake Cortex AI\_COMPLETE as well as a few other popular models.

| Model | Context Window (Tokens) | MMLU (Reasoning) | HumanEval (Coding) | GSM8K (Arithmetic Reasoning) | Spider 1.0 (SQL) |
| --- | --- | --- | --- | --- | --- |
| [GPT 4.o](https://openai.com/index/hello-gpt-4o/) | 128,000 | 88.7 | 90.2 | 96.4 | - |
| [Claude 3.5 Sonnet](https://www.anthropic.com/claude) | 200,000 | 88.3 | 92.0 | 96.4 | - |
| [llama3.1-405b](https://github.com/meta-llama/llama-models/blob/main/models/llama3_1/MODEL_CARD.md) | 128,000 | 88.6 | 89 | 96.8 | - |
| [llama3.1-70b](https://github.com/meta-llama/llama-models/blob/main/models/llama3_1/MODEL_CARD.md) | 128,000 | 86 | 80.5 | 95.1 | - |
| [mistral-large2](https://mistral.ai/news/mistral-large-2407/) | 128,000 | 84 | 92 | 93 | - |
| [llama3.1-8b](https://github.com/meta-llama/llama-models/blob/main/models/llama3_1/MODEL_CARD.md) | 128,000 | 73 | 72.6 | 84.9 | - |
| [mixtral-8x7b](https://mistral.ai/news/mixtral-of-experts/) | 32,000 | 70.6 | 40.2 | 60.4 | - |
| [Snowflake Arctic](https://www.snowflake.com/en/data-cloud/arctic/) | 4,096 | 67.3 | 64.3 | 69.7 | 79 |
| [mistral-7b](https://mistral.ai/news/announcing-mistral-7b/) | 32,000 | 62.5 | 26.2 | 52.1 | - |
| GPT 3.5 Turbo\* | 4,097 | 70 | 48.1 | 57.1 | - |

Expand

Show lessSee more

## Previous model versions[¶](#previous-model-versions)

The Snowflake Cortex AI\_COMPLETE and COMPLETE functions also supports the following older model versions. We recommend
using the latest model versions instead of the versions listed in this table.

| Model | Context Window (Tokens) | MMLU (Reasoning) | HumanEval (Coding) | GSM8K (Arithmetic Reasoning) | Spider 1.0 (SQL) |
| --- | --- | --- | --- | --- | --- |
| [mistral-large](https://mistral.ai/news/mistral-large/) | 32,000 | 81.2 | 45.1 | 81 | 81 |
| [llama-2-70b-chat](https://huggingface.co/meta-llama/Llama-2-70b-chat) | 4,096 | 68.9 | 30.5 | 57.5 | - |

Expand

Show lessSee more

## Using Snowflake Cortex AI Functions with Python[¶](#using-snowflake-cortex-ai-functions-with-python)

### Call Cortex AI Functions in Snowpark Python[¶](#call-cortex-ai-functions-in-snowpark-python)

You can use Snowflake Cortex AI Functions in the Snowpark Python API. These functions include the following. Note that the functions in Snowpark Python have names in Pythonic “snake\_case”
format, with words separated by underscores and all letters in lowercase.

* [ai\_agg](https://docs.snowflake.com/en/developer-guide/snowpark/reference/python/latest/snowpark/api/snowflake.snowpark.functions.ai_agg)
* [ai\_classify](https://docs.snowflake.com/en/developer-guide/snowpark/reference/python/latest/snowpark/api/snowflake.snowpark.functions.ai_classify)
* [ai\_complete](https://docs.snowflake.com/en/developer-guide/snowpark/reference/python/latest/snowpark/api/snowflake.snowpark.functions.ai_complete)
* [ai\_filter](https://docs.snowflake.com/en/developer-guide/snowpark/reference/python/latest/snowpark/api/snowflake.snowpark.functions.ai_filter)
* [ai\_similarity](https://docs.snowflake.com/en/developer-guide/snowpark/reference/python/latest/snowpark/api/snowflake.snowpark.functions.ai_similarity)
* [ai\_summarize\_agg](https://docs.snowflake.com/en/developer-guide/snowpark/reference/python/latest/snowpark/api/snowflake.snowpark.functions.ai_summarize_agg)

#### `ai_agg` example[¶](#ai_agg-example)

The `ai_agg` function aggregates a column of text using natural language instructions in a similar manner to how you would ask an analyst to summarize or extract findings from grouped or ungrouped data.

The following example summarizes customer reviews for each product using the `ai_agg` function. The function takes a column of text and a natural language instruction to summarize the reviews.

Copy codeExpand

```
from snowflake.snowpark.functions import ai_agg, col

df = session.create_dataframe([
    [1, "Excellent product!"],
    [1, "Great battery life."],
    [1, "A bit expensive but worth it."],
    [2, "Terrible customer service."],
    [2, "Won’t buy again."],
], schema=["product_id", "review"])

# Summarize reviews per product
summary_df = df.group_by("product_id").agg(
    ai_agg(col("review"), "Summarize the customer reviews in one sentence.")
)
summary_df.show()
```

Show lessSee more

Scroll to top

Note

Use task descriptions that are detailed and centered on the use case. For example, “Summarize the customer feedback for an investor report”.

#### Classify text with `ai_classify`[¶](#classify-text-with-ai_classify)

The `ai_classify` function takes a string or image and classifies it into the categories that you define.

The following example classifies travel reviews into categories such as “travel” and “cooking”. The function takes a column of text and a list of categories to classify the text into.

Copy code

```
from snowflake.snowpark.functions import ai_classify, col

df = session.create_dataframe([
    ["I dream of backpacking across South America."],
    ["I made the best pasta yesterday."],
], schema=["sentence"])

df = df.select(
    "sentence",
    ai_classify(col("sentence"), ["travel", "cooking"]).alias("classification")
)
df.show()
```

Note

You can provide up to 500 categories. You can classify both text and images.

#### Filter rows with `ai_filter`[¶](#filter-rows-with-ai_filter)

The `ai_filter` function evaluates a natural language condition and returns `True` or `False`. You can use it to filter or tag rows.

Copy code

```
from snowflake.snowpark.functions import ai_filter, prompt, col

df = session.create_dataframe(["Canada", "Germany", "Japan"], schema=["country"])

filtered_df = df.select(
    "country",
    ai_filter(prompt("Is {0} in Asia?", col("country"))).alias("is_in_asia")
)
filtered_df.show()
```

Note

You can filter on both strings and files. For dynamic prompts, use the `prompt` function.
For more information, see
[Snowpark Python reference](https://docs.snowflake.com/developer-guide/snowpark/reference/python/latest/snowpark/index).

### Call Cortex AI Functions in Snowflake ML[¶](#call-cortex-ai-functions-in-snowflake-ml)

[Snowflake ML](/developer-guide/snowflake-ml/overview) contains the older AI Functions, those with names that don’t
begin with “AI”. These functions are supported in version 1.1.2 and later of Snowflake ML. The names are rendered in Pythonic
“snake\_case” format, with words separated by underscores and all letters in lowercase.

If you run your Python script outside of Snowflake, you must create a Snowpark session to use these functions. See
[Connecting to Snowflake](/developer-guide/snowflake-ml/snowpark-ml#label-snowpark-ml-authenticating) for instructions.

#### Process single values[¶](#process-single-values)

The following Python example illustrates calling Snowflake Cortex AI functions on single values:

Copy code

```
from snowflake.cortex import complete, extract_answer, sentiment, summarize, translate

text = """
    The Snowflake company was co-founded by Thierry Cruanes, Marcin Zukowski,
    and Benoit Dageville in 2012 and is headquartered in Bozeman, Montana.
"""

print(complete("llama3.1-8b", "how do snowflakes get their unique patterns?"))
print(extract_answer(text, "When was snowflake founded?"))
print(sentiment("I really enjoyed this restaurant. Fantastic service!"))
print(summarize(text))
print(translate(text, "en", "fr"))
```

#### Pass hyperparameter options[¶](#pass-hyperparameter-options)

You can pass options that affect the model’s hyperparameters when using the `complete` function. The following
Python example illustrates modifying the maximum number of output tokens that the model can generate:

Copy code

```
from snowflake.cortex import complete, CompleteOptions

model_options1 = CompleteOptions(
    {'max_tokens':30}
)

print(complete("llama3.1-8b", "how do snowflakes get their unique patterns?", options=model_options1))
```

#### Call functions on table columns[¶](#call-functions-on-table-columns)

You can call an AI function on a table column, as shown below. This example requires a session object (stored in
`session`) and a table `articles` containing a text column `abstract_text`, and creates a new column
`abstract_summary` containing a summary of the abstract.

Copy code

```
from snowflake.cortex import summarize
from snowflake.snowpark.functions import col

article_df = session.table("articles")
article_df = article_df.withColumn(
    "abstract_summary",
    summarize(col("abstract_text"))
)
article_df.collect()
```

Note

The advanced chat-style (multi-message) form of COMPLETE is not currently supported in Snowflake ML Python.

## Using Snowflake Cortex AI functions with Snowflake CLI[¶](#using-snowflake-cortex-ai-functions-with-snowflake-cli)

Snowflake Cortex AI Functions are available in [Snowflake CLI](/developer-guide/snowflake-cli/index) version 2.4.0
and later. See [Introducing Snowflake CLI](/developer-guide/snowflake-cli/introduction/introduction) for more information about using Snowflake CLI.
The functions are the old-style functions, those with names that don’t begin with “AI”.

The following examples illustrate using the `snow cortex` commands on single values. The `-c` parameter specifies which connection to use.

Note

The advanced chat-style (multi-message) form of COMPLETE is not currently supported in Snowflake CLI.

Copy code

```
snow cortex complete "Is 5 more than 4? Please answer using one word without a period." -c "snowhouse"
```

Copy code

```
snow cortex extract-answer "what is snowflake?" "snowflake is a company" -c "snowhouse"
```

Copy code

```
snow cortex sentiment "Mary had a little Lamb" -c "snowhouse"
```

Copy code

```
snow cortex summarize "John has a car. John's car is blue. John's car is old and John is thinking about buying a new car. There are a lot of cars to choose from and John cannot sleep because it's an important decision for John."
```

Copy code

```
snow cortex translate herb --to pl
```

You can also use files that contain the text you want to use for the commands. For this example, assume that the file `about_cortex.txt` contains the following content:

```
Snowflake Cortex gives you instant access to industry-leading large language models (LLMs) trained by researchers at companies like Anthropic, Mistral, Reka, Meta, and Google, including Snowflake Arctic, an open enterprise-grade model developed by Snowflake.

Since these LLMs are fully hosted and managed by Snowflake, using them requires no setup. Your data stays within Snowflake, giving you the performance, scalability, and governance you expect.

Snowflake Cortex features are provided as SQL functions and are also available in Python. The available functions are summarized below.

COMPLETE: Given a prompt, returns a response that completes the prompt. This function accepts either a single prompt or a conversation with multiple prompts and responses.
EMBED_TEXT_768: Given a piece of text, returns a vector embedding that represents that text.
EXTRACT_ANSWER: Given a question and unstructured data, returns the answer to the question if it can be found in the data.
SENTIMENT: Returns a sentiment score, from -1 to 1, representing the detected positive or negative sentiment of the given text.
SUMMARIZE: Returns a summary of the given text.
TRANSLATE: Translates given text from any supported language to any other.
```

You can then execute the `snow cortex summarize` command by passing in the filename using the `--file` parameter, as shown:

Copy code

```
snow cortex summarize --file about_cortex.txt
```

```
Snowflake Cortex offers instant access to industry-leading language models, including Snowflake Arctic, with SQL functions for completing prompts (COMPLETE), text embedding (EMBED\_TEXT\_768), extracting answers (EXTRACT\_ANSWER), sentiment analysis (SENTIMENT), summarizing text (SUMMARIZE), and translating text (TRANSLATE).
```

For more information about these commands, see [snow cortex commands](/developer-guide/snowflake-cli/command-reference/cortex-commands/overview).

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
4. [Cortex Guard](#cortex-guard)
5. [Performance considerations](#performance-considerations)
6. [Cortex LLM privileges](#cortex-llm-privileges)
7. [USE AI FUNCTIONS on the account privilege](#use-ai-functions-on-the-account-privilege)
8. [USE AI FUNCTION <name> — per-function privileges](#use-ai-function-name-per-function-privileges)
9. [Using AI Functions with Restricted Caller's Rights](#using-ai-functions-with-restricted-callers-rights)
10. [CORTEX\_USER database role](#cortex_user-database-role)
11. [AI\_FUNCTIONS\_USER database role](#ai_functions_user-database-role)
12. [CORTEX\_EMBED\_USER database role](#cortex_embed_user-database-role)
13. [Using AI Functions in stored procedures with EXECUTE AS RESTRICTED CALLER](#using-ai-functions-in-stored-procedures-with-execute-as-restricted-caller)
14. [Control model access](#control-model-access)
15. [Account-level allowlist parameter](#account-level-allowlist-parameter)
16. [Role-based access control (RBAC)](#role-based-access-control-rbac)
17. [Common pitfalls](#common-pitfalls)
18. [Supported features](#supported-features)
19. [Regional availability](#regional-availability)
20. [Cost considerations](#cost-considerations)
21. [Warehouse sizing](#warehouse-sizing)
22. [Track costs for AI services](#track-costs-for-ai-services)
23. [Track credit consumption for Cortex AI Functions](#track-credit-consumption-for-cortex-ai-functions)
24. [Model restrictions](#model-restrictions)
25. [Choosing a model](#choosing-a-model)
26. [Large models](#large-models)
27. [Medium models](#medium-models)
28. [Small models](#small-models)
29. [Previous model versions](#previous-model-versions)
30. [Using Snowflake Cortex AI Functions with Python](#using-snowflake-cortex-ai-functions-with-python)
31. [Call Cortex AI Functions in Snowpark Python](#call-cortex-ai-functions-in-snowpark-python)
32. [Call Cortex AI Functions in Snowflake ML](#call-cortex-ai-functions-in-snowflake-ml)
33. [Using Snowflake Cortex AI functions with Snowflake CLI](#using-snowflake-cortex-ai-functions-with-snowflake-cli)
34. [Legal notices](#legal-notices)