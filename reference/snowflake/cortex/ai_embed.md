1. [Overview](/en/reference "Overview")
2. [SQL data types reference](/en/sql-reference-data-types "SQL data types reference")
3. [SQL command reference](/en/sql-reference-commands "SQL command reference")
4. [Function and stored procedure reference](/en/sql-reference-functions "Function and stored procedure reference")

   * [Summary of functions](/en/sql-reference/intro-summary-operators-functions "Summary of functions")
   * [All functions (alphabetical)](/en/sql-reference/functions-all "All functions (alphabetical)")
   * [Aggregate](/en/sql-reference/functions-aggregation "Aggregate")
   * AI Functions

     * [AI\_AGG](/en/sql-reference/functions/ai_agg "AI_AGG")
     * [AI\_CLASSIFY](/en/sql-reference/functions/ai_classify "AI_CLASSIFY")
     * [AI\_COMPLETE](/en/sql-reference/functions/ai_complete "AI_COMPLETE")
     * [AI\_COUNT\_TOKENS](/en/sql-reference/functions/ai_count_tokens "AI_COUNT_TOKENS")
     * [AI\_EMBED](/en/sql-reference/functions/ai_embed "AI_EMBED")
     * [AI\_EXTRACT](/en/sql-reference/functions/ai_extract "AI_EXTRACT")
     * [AI\_FILTER](/en/sql-reference/functions/ai_filter "AI_FILTER")
     * [AI\_PARSE\_DOCUMENT](/en/sql-reference/functions/ai_parse_document "AI_PARSE_DOCUMENT")
     * [AI\_REDACT](/en/sql-reference/functions/ai_redact "AI_REDACT")
     * [AI\_SENTIMENT](/en/sql-reference/functions/ai_sentiment "AI_SENTIMENT")
     * [AI\_SIMILARITY](/en/sql-reference/functions/ai_similarity "AI_SIMILARITY")
     * [AI\_SUMMARIZE\_AGG](/en/sql-reference/functions/ai_summarize_agg "AI_SUMMARIZE_AGG")
     * [AI\_TRANSCRIBE](/en/sql-reference/functions/ai_transcribe "AI_TRANSCRIBE")
     * [AI\_TRANSLATE](/en/sql-reference/functions/ai_translate "AI_TRANSLATE")
     * [FINETUNE (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/finetune-snowflake-cortex "FINETUNE (SNOWFLAKE.CORTEX)")
     * [SENTIMENT (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/sentiment-snowflake-cortex "SENTIMENT (SNOWFLAKE.CORTEX)")
     * [SUMMARIZE (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/summarize-snowflake-cortex "SUMMARIZE (SNOWFLAKE.CORTEX)")
     * Helper functions

       * [AGENT\_RUN (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/agent_run-snowflake-cortex "AGENT_RUN (SNOWFLAKE.CORTEX)")
       * [DATA\_AGENT\_RUN (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/data_agent_run-snowflake-cortex "DATA_AGENT_RUN (SNOWFLAKE.CORTEX)")
       * [EXECUTE\_AI\_EVALUATION](/en/sql-reference/functions/execute_ai_evaluation "EXECUTE_AI_EVALUATION")
       * [GET\_AI\_EVALUATION\_DATA (SNOWFLAKE.LOCAL)](/en/sql-reference/functions/get_ai_evaluation_data-snowflake-local "GET_AI_EVALUATION_DATA (SNOWFLAKE.LOCAL)")
       * [GET\_AI\_OBSERVABILITY\_LOGS (SNOWFLAKE.LOCAL)](/en/sql-reference/functions/get_ai_observability_logs-snowflake-local "GET_AI_OBSERVABILITY_LOGS (SNOWFLAKE.LOCAL)")
       * [GET\_AI\_OBSERVABILITY\_EVENTS (SNOWFLAKE.LOCAL)](/en/sql-reference/functions/get_ai_observability_events-snowflake-local "GET_AI_OBSERVABILITY_EVENTS (SNOWFLAKE.LOCAL)")
       * [GET\_AI\_RECORD\_TRACE (SNOWFLAKE.LOCAL)](/en/sql-reference/functions/get_ai_record_trace-snowflake-local "GET_AI_RECORD_TRACE (SNOWFLAKE.LOCAL)")
       * [SEARCH\_PREVIEW (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/search_preview-snowflake-cortex "SEARCH_PREVIEW (SNOWFLAKE.CORTEX)")
       * [SPLIT\_TEXT\_MARKDOWN\_HEADER (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/split_text_markdown_header-snowflake-cortex "SPLIT_TEXT_MARKDOWN_HEADER (SNOWFLAKE.CORTEX)")
       * [SPLIT\_TEXT\_RECURSIVE\_CHARACTER (SNOWFLAKE.CORTEX)](/en/sql-reference/functions/split_text_recursive_character-snowflake-cortex "SPLIT_TEXT_RECURSIVE_CHARACTER (SNOWFLAKE.CORTEX)")
   * [Bitwise expression](/en/sql-reference/expressions-byte-bit "Bitwise expression")
   * [Conditional expression](/en/sql-reference/expressions-conditional "Conditional expression")
   * [Context](/en/sql-reference/functions-context "Context")
   * [Conversion](/en/sql-reference/functions-conversion "Conversion")
   * [Data generation](/en/sql-reference/functions-data-generation "Data generation")
   * [Data metric](/en/sql-reference/functions-data-metric "Data metric")
   * [Date & time](/en/sql-reference/functions-date-time "Date & time")
   * [Differential privacy](/en/sql-reference/functions-differential-privacy "Differential privacy")
   * [Encryption](/en/sql-reference/functions-encryption "Encryption")
   * [File](/en/sql-reference/functions-file "File")
   * [Geospatial](/en/sql-reference/functions-geospatial "Geospatial")
   * [Hash](/en/sql-reference/functions-hash-scalar "Hash")
   * [Metadata](/en/sql-reference/functions-metadata "Metadata")
   * [ML Model Monitors](/en/sql-reference/functions-model-monitors "ML Model Monitors")
   * [Notification](/en/sql-reference/functions-notification "Notification")
   * [Numeric](/en/sql-reference/functions-numeric "Numeric")
   * [Organization users and organization user groups](/en/sql-reference/functions-organization-users "Organization users and organization user groups")
   * [Regular expressions](/en/sql-reference/functions-regexp "Regular expressions")
   * [Semi-structured and structured data](/en/sql-reference/functions-semistructured "Semi-structured and structured data")
   * [Snowpark Container Services](/en/sql-reference/functions-spcs "Snowpark Container Services")
   * [String & binary](/en/sql-reference/functions-string "String & binary")
   * [System](/en/sql-reference/functions-system "System")
   * [Table](/en/sql-reference/functions-table "Table")
   * [Vector](/en/sql-reference/functions-vector "Vector")
   * [Window](/en/sql-reference/functions-window "Window")
   * [Stored procedures](/en/sql-reference-stored-procedures "Stored procedures")
5. [Class reference](/en/sql-reference-classes "Class reference")
6. [Scripting reference](/en/sql-reference-snowflake-scripting "Scripting reference")
7. [General reference](/en/sql-reference "General reference")
8. [API reference](/en/api-reference "API reference")

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)AI FunctionsAI\_EMBED

Categories:
:   [String & binary functions](/sql-reference/functions-string) (AI Functions)

# AI\_EMBED[¶](#ai_embed)

Creates an embedding vector from text or an image. Embeddings are abstract numerical representations of the features of
a piece of text or an image that can be used to determine the degree of similarity between pieces of text or images,
which can be used for semantic search, clustering, classification, and other tasks.

The following table shows the regions where you can use the AI\_EMBED function for text and images:

| Data type | AWS US West 2 (Oregon) | AWS US East 1 (N. Virginia) | AWS Europe Central 1 (Frankfurt) | AWS Europe West 1 (Ireland) | AWS AP Southeast 2 (Sydney) | AWS AP Northeast 1 (Tokyo) | Azure East US 2 (Virginia) | Azure West Europe (Netherlands) | AWS (Cross-Region) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Text | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |
| Image | ✔ | ✔ | ✔ |  |  |  |  | ✔ | ✔ |

Expand

Show lessSee more

## Syntax[¶](#syntax)

Copy code

```
AI_EMBED( <model> , <input> )
```

## Arguments[¶](#arguments)

**Required:**

`model`
:   A string specifying the vector embedding model to be used to generate an embedding.

    For text, you can provide the following values:

    * `snowflake-arctic-embed-l-v2.0`
    * `snowflake-arctic-embed-l-v2.0-8k`
    * `nv-embed-qa-4`
    * `multilingual-e5-large`
    * `voyage-multilingual-2`
    * `snowflake-arctic-embed-m-v1.5`
    * `snowflake-arctic-embed-m`
    * `e5-base-v2`

    For images, you can provide only the following value:

    * `voyage-multimodal-3`

    Supported models might have different [costs](/user-guide/snowflake-cortex/aisql#label-cortex-llm-cost-considerations).

`input`
:   The string or image (as a [FILE object](/sql-reference/functions/to_file)) to generate an embedding from. Images must be:

    * In JPEG, WEBP, PNG, or BMP format
    * No more than 10 MB in size
    * No more than 8,000 x 8,000 pixels

## Returns[¶](#returns)

An embedding vector of type VECTOR derived from the input text or image.

## Access control requirements[¶](#access-control-requirements)

You must use a role that has been granted the SNOWFLAKE.CORTEX\_USER database role *or* the SNOWFLAKE.CORTEX\_EMBED\_USER
database role to call this function. See [Cortex LLM privileges](/user-guide/snowflake-cortex/aisql#label-cortex-llm-privileges) for more information on granting one of
these privileges.

## Examples[¶](#examples)

### Text example[¶](#text-example)

In this example, a vector embedding is generated for the phrase `hello world` using the `snowflake-arctic-embed-l-v2.0` model:

Copy code

```
SELECT AI_EMBED('snowflake-arctic-embed-l-v2.0', 'hello world');
```

In this example, a vector embedding is generated for a staged image using the `voyage-multimodal-3` model:

Copy code

```
SELECT AI_EMBED('voyage-multimodal-3',
        TO_FILE ('@my_images', 'CITY_WALKING1.PNG'));
```

## Limitations[¶](#limitations)

* Snowflake AI functions don’t work on FILE objects created from files in the following kinds of stages:
  + Internal stages with encryption mode `TYPE = 'SNOWFLAKE_FULL'`
  + External stages with any customer-side encrypted mode, such as `AWS_CSE` or `AZURE_CSE`.
  + User stage
  + Table stage
  + Stage with double-quoted names




Note

%aisql-new-func-name% is the updated version of %aisql-old-func-link%.
For the latest functionality, use %aisql-new-func-name%.

## Legal notices[¶](#legal-notices)

Refer to [Snowflake AI and ML](/guides-overview-ai-features).

Was this page helpful?

YesNo

[Visit Snowflake](https://www.snowflake.com)

[Join the conversation](https://community.snowflake.com/s/)

[Develop with Snowflake](https://developers.snowflake.com)

[Share your feedback](/feedback)

[Read the latest on our blog](https://www.snowflake.com/blog/)

[Get your own certification](https://learn.snowflake.com)

[Privacy Notice](https://www.snowflake.com/privacy-policy/)[Site Terms](https://www.snowflake.com/legal/snowflake-site-terms/)Cookies Settings© 2026 Snowflake, Inc. All Rights Reserved.

### Alternative interfaces

[Snowflake Python APIs](/developer-guide/snowflake-python-api/snowflake-python-overview)[Snowflake REST APIs](/developer-guide/snowflake-rest-api/snowflake-rest-api)[Snowflake CLI](/developer-guide/snowflake-cli/index)

See all interfaces

On this page

1. [Syntax](#syntax)
2. [Arguments](#arguments)
3. [Returns](#returns)
4. [Access control requirements](#access-control-requirements)
5. [Examples](#examples)
6. [Limitations](#limitations)
7. [Legal notices](#legal-notices)

Related content

1. [Snowflake Cortex AI Functions (including LLM functions)](/user-guide/snowflake-cortex/aisql)