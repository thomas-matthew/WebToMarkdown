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

     + JSON and XML parsing
     + [CHECK\_JSON](/en/sql-reference/functions/check_json "CHECK_JSON")
     + [CHECK\_XML](/en/sql-reference/functions/check_xml "CHECK_XML")
     + [JSON\_EXTRACT\_PATH\_TEXT](/en/sql-reference/functions/json_extract_path_text "JSON_EXTRACT_PATH_TEXT")
     + [PARSE\_JSON](/en/sql-reference/functions/parse_json "PARSE_JSON")
     + [TRY\_PARSE\_JSON](/en/sql-reference/functions/try_parse_json "TRY_PARSE_JSON")
     + [PARSE\_XML](/en/sql-reference/functions/parse_xml "PARSE_XML")
     + [STRIP\_NULL\_VALUE](/en/sql-reference/functions/strip_null_value "STRIP_NULL_VALUE")
     + Array/object creation and manipulation
     + [ARRAY\_AGG](/en/sql-reference/functions/array_agg "ARRAY_AGG")
     + [ARRAY\_APPEND](/en/sql-reference/functions/array_append "ARRAY_APPEND")
     + [ARRAY\_CAT](/en/sql-reference/functions/array_cat "ARRAY_CAT")
     + [ARRAY\_COMPACT](/en/sql-reference/functions/array_compact "ARRAY_COMPACT")
     + [ARRAY\_CONSTRUCT](/en/sql-reference/functions/array_construct "ARRAY_CONSTRUCT")
     + [ARRAY\_CONSTRUCT\_COMPACT](/en/sql-reference/functions/array_construct_compact "ARRAY_CONSTRUCT_COMPACT")
     + [ARRAY\_CONTAINS](/en/sql-reference/functions/array_contains "ARRAY_CONTAINS")
     + [ARRAY\_DISTINCT](/en/sql-reference/functions/array_distinct "ARRAY_DISTINCT")
     + [ARRAY\_EXCEPT](/en/sql-reference/functions/array_except "ARRAY_EXCEPT")
     + [ARRAY\_FLATTEN](/en/sql-reference/functions/array_flatten "ARRAY_FLATTEN")
     + [ARRAY\_GENERATE\_RANGE](/en/sql-reference/functions/array_generate_range "ARRAY_GENERATE_RANGE")
     + [ARRAY\_INSERT](/en/sql-reference/functions/array_insert "ARRAY_INSERT")
     + [ARRAY\_INTERSECTION](/en/sql-reference/functions/array_intersection "ARRAY_INTERSECTION")
     + [ARRAY\_MAX](/en/sql-reference/functions/array_max "ARRAY_MAX")
     + [ARRAY\_MIN](/en/sql-reference/functions/array_min "ARRAY_MIN")
     + [ARRAY\_POSITION](/en/sql-reference/functions/array_position "ARRAY_POSITION")
     + [ARRAY\_PREPEND](/en/sql-reference/functions/array_prepend "ARRAY_PREPEND")
     + [ARRAY\_REMOVE](/en/sql-reference/functions/array_remove "ARRAY_REMOVE")
     + [ARRAY\_REMOVE\_AT](/en/sql-reference/functions/array_remove_at "ARRAY_REMOVE_AT")
     + [ARRAY\_REPEAT](/en/sql-reference/functions/array_repeat "ARRAY_REPEAT")
     + [ARRAY\_REVERSE](/en/sql-reference/functions/array_reverse "ARRAY_REVERSE")
     + [ARRAY\_SIZE](/en/sql-reference/functions/array_size "ARRAY_SIZE")
     + [ARRAY\_SLICE](/en/sql-reference/functions/array_slice "ARRAY_SLICE")
     + [ARRAY\_SORT](/en/sql-reference/functions/array_sort "ARRAY_SORT")
     + [ARRAY\_TO\_STRING](/en/sql-reference/functions/array_to_string "ARRAY_TO_STRING")
     + [ARRAY\_UNION\_AGG](/en/sql-reference/functions/array_union_agg "ARRAY_UNION_AGG")
     + [ARRAY\_UNIQUE\_AGG](/en/sql-reference/functions/array_unique_agg "ARRAY_UNIQUE_AGG")
     + [ARRAYS\_OVERLAP](/en/sql-reference/functions/arrays_overlap "ARRAYS_OVERLAP")
     + [ARRAYS\_TO\_OBJECT](/en/sql-reference/functions/arrays_to_object "ARRAYS_TO_OBJECT")
     + [ARRAYS\_ZIP](/en/sql-reference/functions/arrays_zip "ARRAYS_ZIP")
     + [OBJECT\_AGG](/en/sql-reference/functions/object_agg "OBJECT_AGG")
     + [OBJECT\_CONSTRUCT](/en/sql-reference/functions/object_construct "OBJECT_CONSTRUCT")
     + [OBJECT\_CONSTRUCT\_KEEP\_NULL](/en/sql-reference/functions/object_construct_keep_null "OBJECT_CONSTRUCT_KEEP_NULL")
     + [OBJECT\_DELETE](/en/sql-reference/functions/object_delete "OBJECT_DELETE")
     + [OBJECT\_INSERT](/en/sql-reference/functions/object_insert "OBJECT_INSERT")
     + [OBJECT\_PICK](/en/sql-reference/functions/object_pick "OBJECT_PICK")
     + [PROMPT](/en/sql-reference/functions/prompt "PROMPT")
     + Higher-order
     + [FILTER](/en/sql-reference/functions/filter "FILTER")
     + [REDUCE](/en/sql-reference/functions/reduce "REDUCE")
     + [TRANSFORM](/en/sql-reference/functions/transform "TRANSFORM")
     + Map creation and manipulation
     + [MAP\_CAT](/en/sql-reference/functions/map_cat "MAP_CAT")
     + [MAP\_CONTAINS\_KEY](/en/sql-reference/functions/map_contains_key "MAP_CONTAINS_KEY")
     + [MAP\_DELETE](/en/sql-reference/functions/map_delete "MAP_DELETE")
     + [MAP\_ENTRIES](/en/sql-reference/functions/map_entries "MAP_ENTRIES")
     + [MAP\_INSERT](/en/sql-reference/functions/map_insert "MAP_INSERT")
     + [MAP\_KEYS](/en/sql-reference/functions/map_keys "MAP_KEYS")
     + [MAP\_PICK](/en/sql-reference/functions/map_pick "MAP_PICK")
     + [MAP\_SIZE](/en/sql-reference/functions/map_size "MAP_SIZE")
     + Extraction
     + [FLATTEN](/en/sql-reference/functions/flatten "FLATTEN")
     + [GET](/en/sql-reference/functions/get "GET")
     + [GET\_IGNORE\_CASE](/en/sql-reference/functions/get_ignore_case "GET_IGNORE_CASE")
     + [GET\_PATH, :](/en/sql-reference/functions/get_path "GET_PATH, :")
     + [OBJECT\_KEYS](/en/sql-reference/functions/object_keys "OBJECT_KEYS")
     + [XMLGET](/en/sql-reference/functions/xmlget "XMLGET")
     + Conversion/casting
     + [AS\_<object\_type>](/en/sql-reference/functions/as "AS_<object_type>")
     + [AS\_ARRAY](/en/sql-reference/functions/as_array "AS_ARRAY")
     + [AS\_BINARY](/en/sql-reference/functions/as_binary "AS_BINARY")
     + [AS\_BOOLEAN](/en/sql-reference/functions/as_boolean "AS_BOOLEAN")
     + [AS\_CHAR](/en/sql-reference/functions/as_char-varchar "AS_CHAR")
     + [AS\_VARCHAR](/en/sql-reference/functions/as_char-varchar "AS_VARCHAR")
     + [AS\_DATE](/en/sql-reference/functions/as_date "AS_DATE")
     + [AS\_DECIMAL](/en/sql-reference/functions/as_decimal-number "AS_DECIMAL")
     + [AS\_NUMBER](/en/sql-reference/functions/as_decimal-number "AS_NUMBER")
     + [AS\_DOUBLE](/en/sql-reference/functions/as_double-real "AS_DOUBLE")
     + [AS\_REAL](/en/sql-reference/functions/as_double-real "AS_REAL")
     + [AS\_INTEGER](/en/sql-reference/functions/as_integer "AS_INTEGER")
     + [AS\_OBJECT](/en/sql-reference/functions/as_object "AS_OBJECT")
     + [AS\_TIME](/en/sql-reference/functions/as_time "AS_TIME")
     + [AS\_TIMESTAMP\_LTZ](/en/sql-reference/functions/as_timestamp "AS_TIMESTAMP_LTZ")
     + [AS\_TIMESTAMP\_NTZ](/en/sql-reference/functions/as_timestamp "AS_TIMESTAMP_NTZ")
     + [AS\_TIMESTAMP\_TZ](/en/sql-reference/functions/as_timestamp "AS_TIMESTAMP_TZ")
     + [STRTOK\_TO\_ARRAY](/en/sql-reference/functions/strtok_to_array "STRTOK_TO_ARRAY")
     + [TO\_ARRAY](/en/sql-reference/functions/to_array "TO_ARRAY")
     + [TO\_JSON](/en/sql-reference/functions/to_json "TO_JSON")
     + [TO\_OBJECT](/en/sql-reference/functions/to_object "TO_OBJECT")
     + [TO\_VARIANT](/en/sql-reference/functions/to_variant "TO_VARIANT")
     + [TO\_XML](/en/sql-reference/functions/to_xml "TO_XML")
     + Type predicates
     + [IS\_<object\_type>](/en/sql-reference/functions/is "IS_<object_type>")
     + [IS\_ARRAY](/en/sql-reference/functions/is_array "IS_ARRAY")
     + [IS\_BINARY](/en/sql-reference/functions/is_binary "IS_BINARY")
     + [IS\_BOOLEAN](/en/sql-reference/functions/is_boolean "IS_BOOLEAN")
     + [IS\_CHAR](/en/sql-reference/functions/is_char-varchar "IS_CHAR")
     + [IS\_VARCHAR](/en/sql-reference/functions/is_char-varchar "IS_VARCHAR")
     + [IS\_DATE](/en/sql-reference/functions/is_date-value "IS_DATE")
     + [IS\_DATE\_VALUE](/en/sql-reference/functions/is_date-value "IS_DATE_VALUE")
     + [IS\_DECIMAL](/en/sql-reference/functions/is_decimal "IS_DECIMAL")
     + [IS\_DOUBLE](/en/sql-reference/functions/is_double-real "IS_DOUBLE")
     + [IS\_REAL](/en/sql-reference/functions/is_double-real "IS_REAL")
     + [IS\_INTEGER](/en/sql-reference/functions/is_integer "IS_INTEGER")
     + [IS\_NULL\_VALUE](/en/sql-reference/functions/is_null_value "IS_NULL_VALUE")
     + [IS\_OBJECT](/en/sql-reference/functions/is_object "IS_OBJECT")
     + [IS\_TIME](/en/sql-reference/functions/is_time "IS_TIME")
     + [IS\_TIMESTAMP\_LTZ](/en/sql-reference/functions/is_timestamp "IS_TIMESTAMP_LTZ")
     + [IS\_TIMESTAMP\_NTZ](/en/sql-reference/functions/is_timestamp "IS_TIMESTAMP_NTZ")
     + [IS\_TIMESTAMP\_TZ](/en/sql-reference/functions/is_timestamp "IS_TIMESTAMP_TZ")
     + [TYPEOF](/en/sql-reference/functions/typeof "TYPEOF")
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

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)[Semi-structured and structured data](/en/sql-reference/functions-semistructured)PROMPT

Categories:
:   [Semi-structured and structured data functions](/sql-reference/functions-semistructured) (Array/Object)

# PROMPT[¶](#prompt)

[Preview Feature](/release-notes/preview-features) — Open

Available to all accounts.

The PROMPT function constructs a structured OBJECT containing a template string and a list of arguments. This object is
useful for dynamically formatting messages, constructing structured prompts, or storing formatted data for further
processing, such as by Cortex AI functions.

## Syntax[¶](#syntax)

Copy code

```
SELECT PROMPT('<template_string>', <expr_1> [ , <expr_2>, ... ] )
    FROM <table>;
```

## Arguments[¶](#arguments)

**Required:**

`template_string`
:   A string containing numbered placeholders like `{0}` where the number is at least 0 and less than the number of expressions specified.
    The first expression is substituted for `{0}`, the second for `{1}`, and so on.

`expr_1 [ , expr_2, ... ]`
:   Expressions whose values will eventually be substituted into the template string in place of the numbered
    placeholders. These can be column names or other expressions. Values can be of any type coercible to a string (for
    example, VARCHAR, NUMBER, etc.), or FILE.

## Returns[¶](#returns)

A SQL OBJECT with the following structure:

Copy code

```
{
  'template': '<template_string>',
  'args': ARRAY(<value_1>, <value_2>, ...)
}
```

The `args` array contains the value of the expressions specified in the PROMPT function call.

## Usage notes[¶](#usage-notes)

* PROMPT does not perform any string formatting itself. It is intended to construct an object to be consumed by Cortex AI functions.
* It is an error to use a placeholder in the template string that does not have a corresponding expression, but it is not an error
  to provide expressions that are not used in the template string.

## Examples[¶](#examples)

### Basic usage[¶](#basic-usage)

Copy code

```
SELECT PROMPT('Hello, {0}! Today is {1}.', 'Alice', 'Monday');
```

Output:

```
{
    'template': 'Hello, {0}! Today is {1}.',
    'args': ['Alice', 'Monday']
}
```

### Use with Cortex AI\_FILTER[¶](#use-with-cortex-ai_filter)

Copy code

```
WITH reviews AS (
    SELECT 'Wow... Loved this place.' AS review, 5 AS rating
    UNION ALL
    SELECT 'Crust is not good.', 2 AS rating
)
SELECT * FROM reviews
WHERE AI_FILTER(PROMPT('The reviewer enjoyed the restaurant: {0}, Rating: {1}', review, rating));
```

### Use with Cortex COMPLETE and a FILE column[¶](#use-with-cortex-complete-and-a-file-column)

Copy code

```
AI_COMPLETE('claude-4-sonnet',
    PROMPT('Classify the input image {0} in no more than 2 words. Respond in JSON', img_file)) AS image_classification
FROM image_table;
```

See [AI\_COMPLETE (Prompt object)](/sql-reference/functions/ai_complete-prompt-object) for more examples.

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