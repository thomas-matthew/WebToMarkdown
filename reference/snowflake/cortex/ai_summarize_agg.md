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

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)AI FunctionsAI\_SUMMARIZE\_AGG

Categories:
:   [Aggregate functions](/sql-reference/functions-aggregation) (General)
    [String & binary functions](/sql-reference/functions-string) (AI Functions)

# AI\_SUMMARIZE\_AGG[¶](#ai_summarize_agg)

Summarizes a column of text data.

For example, `AI_SUMMARIZE_AGG(churn_reason)` will return a summary of the `churn_reason` column.

Unlike [AI\_COMPLETE](/sql-reference/functions/ai_complete) and [SUMMARIZE (SNOWFLAKE.CORTEX)](/sql-reference/functions/summarize-snowflake-cortex), this function supports datasets larger than the maximum language model context window.

See also:
:   [AI\_AGG](/sql-reference/functions/ai_agg)

## Syntax[¶](#syntax)

Copy code

```
AI_SUMMARIZE_AGG( <expr> )
```

## Arguments[¶](#arguments)

**Required:**

`expr`
:   This is an expression that contains text for summarization, such as restaurant reviews or phone transcripts.

## Returns[¶](#returns)

Returns a string summary of the expression.

## Usage notes[¶](#usage-notes)

This function provides a general purpose summary. For a more specific summary, use [AI\_AGG](/sql-reference/functions/ai_agg).

## Examples[¶](#examples)

AI\_SUMMARIZE\_AGG can be used as a simple scalar function on string constants.

Copy code

```
SELECT AI_SUMMARIZE_AGG('The restaurant was excellent. I especially enjoyed the pizza and ice cream. My grandma didnt like it though.');
```

```
The restaurant received mixed reviews from our group. While I thoroughly enjoyed the pizza and ice cream, my grandma did not have a positive experience.
```

AI\_SUMMARIZE\_AGG can be used on a column of data.

Copy code

```
WITH reviews AS (
            SELECT 'The restaurant was excellent.' AS review
  UNION ALL SELECT 'Excellent! I loved the pizza!'
  UNION ALL SELECT 'It was great, but the service was meh.'
  UNION ALL SELECT 'Mediocre food and mediocre service'
)
SELECT AI_SUMMARIZE_AGG(review)
  FROM reviews;
```

```
The restaurant received mixed reviews. Some customers had a great experience, enjoying the pizza and finding the restaurant excellent. However, others had a more neutral experience, describing the food and service as mediocre, with one customer specifically mentioning that the service was subpar.
```

AI\_SUMMARIZE\_AGG can be used on multiple columns of data using `CONCAT` or the `||` operator.

Copy code

```
WITH reviews AS (
            SELECT 'The restaurant was excellent.' AS review, 'Pizza' AS menu_item
  UNION ALL SELECT 'Excellent! I loved the pizza!', 'Pizza'
  UNION ALL SELECT 'It was great, but the service was meh.', 'Burger'
  UNION ALL SELECT 'Mediocre food and mediocre service', 'Pancakes'
)
SELECT AI_SUMMARIZE_AGG('Menu Item: ' || menu_item || '\nReview: ' || review)
  FROM reviews;
```

```
The restaurant received positive reviews for its pizza, with one reviewer describing it as "excellent" and another stating they "loved" it. In contrast, the burger received a mixed review, with the food being "great" but the service being "meh." The pancakes were rated as "mediocre" in terms of both food and service. Overall, the restaurant's performance varied depending on the menu item, with pizza being a highlight.
```

AI\_SUMMARIZE\_AGG can also be used in combination with GROUP BY.

Copy code

```
WITH reviews AS (
            SELECT 1 AS product_id, 'The restaurant was excellent.' AS review
  UNION ALL SELECT 1, 'Excellent! I loved the pizza!'
  UNION ALL SELECT 1, 'It was great, but the service was meh.'
  UNION ALL SELECT 1, 'Mediocre food and mediocre service'
  UNION ALL SELECT 2, 'Terrible quality ingredients, I should have eaten at home.'
  UNION ALL SELECT 2, 'Bad restaurant, I would avoid this place.'
)
SELECT product_id,
       AI_SUMMARIZE_AGG(review) AS summarized_review
  FROM reviews
 GROUP BY 1;
```

```
+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PRODUCT_ID | SUMMARIZED_REVIEW                                                                                                                                                                                                                                                                                         |
|------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 1          | The restaurant received mixed reviews. Some customers had a great experience, enjoying the pizza and finding the restaurant excellent. However, others had a more neutral experience, describing the food and service as mediocre, with one customer specifically mentioning that the service was subpar. |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2          | The reviewer had a poor experience at the restaurant, citing the use of low-quality ingredients and expressing regret over not eating at home instead. They strongly advise against visiting this establishment.                                                                                          |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
```

See also [AI\_AGG](/sql-reference/functions/ai_agg).

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
4. [Usage notes](#usage-notes)
5. [Examples](#examples)
6. [Legal notices](#legal-notices)