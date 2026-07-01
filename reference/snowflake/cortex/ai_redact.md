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
     * [AI\_MULTI\_EMBED](/en/sql-reference/functions/ai_multi_embed "AI_MULTI_EMBED")
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

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)AI FunctionsAI\_REDACT

Categories:
:   [String & binary functions](/sql-reference/functions-string) (AI Functions)

# AI\_REDACT[¶](#ai_redact)

Detects and redacts personally identifiable information (PII) from unstructured text data.

## Syntax[¶](#syntax)

Use AI\_REDACT to detect and redact PII:

Copy codeExpand code block

```
AI_REDACT( <input> [, <categories> ] [, <return_error_details> ] [, <mode> ] )
```

## Arguments[¶](#arguments)

**Required:**

`input`
:   A VARCHAR value that contains text data that may contain personally identifiable information (PII).

**Optional:**

`categories`
:   An ARRAY of string values that specify the types of PII to be redacted. If not specified, all supported PII
    categories are redacted. See [Detected PII categories](/user-guide/snowflake-cortex/redact-pii#label-ai-redact-pii-categories) for a list of supported categories.

    Passing an unsupported category results in an error.

`return_error_details`
:   A BOOLEAN flag that indicates whether to return error details in case of error. When set to TRUE, the function returns
    an OBJECT that contains the value and the error message, one of which is NULL depending on whether the function
    succeeded or failed.

    Requires the session parameter AI\_SQL\_ERROR\_HANDLING\_USE\_FAIL\_ON\_ERROR to be set to FALSE.

`mode`
:   A VARCHAR value that specifies the operating mode. Accepted values:

    * `redact` (default): Replaces detected PII with category placeholders, such as [NAME] and [ADDRESS].
    * `detect`: Returns an OBJECT that contains a `spans` array that identifies the location and category of each detected PII instance
      without redacting the text.

Note

The `mode` argument is case insensitive.

## Returns[¶](#returns)

The return value of AI\_REDACT depends on the `mode` argument.

### Redact mode (default)[¶](#redact-mode-default)

Returns a VARCHAR that contains the input text with PII replaced by category placeholders, such as `[NAME]` where the input
text was “John Smith”.

### Detect mode[¶](#detect-mode)

Returns an OBJECT that contains a `spans` array. Each element in the array is an OBJECT with the following fields:

> * `category`: A VARCHAR value that identifies the PII category (for example, `NAME` or `ADDRESS`).
> * `start`: A NUMBER value that identifies the start index of the PII in the input text.
> * `end`: A NUMBER value that identifies the end index of the PII in the input text.
> * `text`: A VARCHAR value that contains the matched PII text.

## Error behavior[¶](#error-behavior)

By default, if AI\_REDACT cannot process the input, the function returns an error. If the query processes multiple rows, the entire query fails.

When AI\_SQL\_ERROR\_HANDLING\_USE\_FAIL\_ON\_ERROR is set to FALSE, the return value on error depends on the `return_error_details`
argument. The following table shows the return value based on the `return_error_details` argument:

> | `return_error_details` | Return value | Description |
> | --- | --- | --- |
> | FALSE Not passed | NULL |  |
> | TRUE | OBJECT with `value` and `error` fields | `value`: A VARCHAR value that contains the redacted text, or NULL if an error occurred. `error`: A VARCHAR value that contains the error message if an error occurred, or NULL if the function succeeded. |
>
> Expand
>
> Show lessSee more

For more information about handling errors, see [Handle row-level errors in multi-row queries](/user-guide/snowflake-cortex/redact-pii#label-ai-redact-error-handling).

## Usage notes[¶](#usage-notes)

* For categories of PII that AI\_REDACT can redact, see [Detected PII categories](/user-guide/snowflake-cortex/redact-pii#label-ai-redact-pii-categories).
* For limitations in the current version of AI\_REDACT, see [Limitations](/user-guide/snowflake-cortex/redact-pii#label-ai-redact-pii-limitations).

## Examples[¶](#examples)

See [Redaction examples](/user-guide/snowflake-cortex/redact-pii#label-ai-redact-pii-examples).

## Legal notices[¶](#legal-notices)

Refer to [Snowflake AI and ML](/guides-overview-ai-features) for legal notices.

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
4. [Error behavior](#error-behavior)
5. [Usage notes](#usage-notes)
6. [Examples](#examples)
7. [Legal notices](#legal-notices)

Related content

1. [Detect and redact personally identifiable information (PII)](/user-guide/snowflake-cortex/redact-pii)