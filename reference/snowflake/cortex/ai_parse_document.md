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

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)AI FunctionsAI\_PARSE\_DOCUMENT

Categories:
:   [String & binary functions](/sql-reference/functions-string) (AI Functions)

# AI\_PARSE\_DOCUMENT[¶](#ai_parse_document)

Regional Availability

Available natively to accounts in [select regions](/user-guide/snowflake-cortex/aisql#label-cortex-llm-availability).
Available through [cross-region inference](/user-guide/snowflake-cortex/cross-region-inference) to accounts in all regions.

Returns the extracted content from a document on a Snowflake stage as a JSON-formatted string. This
function supports two types of extraction: Optical Character Recognition (OCR) and layout. For more
information, see [Parsing documents with AI\_PARSE\_DOCUMENT](/user-guide/snowflake-cortex/parse-document).

## Syntax[¶](#syntax)

Copy code

```
AI_PARSE_DOCUMENT( <file_object> [, <options> ] [, <return_error_details> ] )
```

## Arguments[¶](#arguments)

**Required:**

`file_object`
:   A [FILE](/sql-reference/data-types-unstructured#label-data-types-file) object that specifies the document to parse, stored in a Snowflake stage. For
    information about creating file objects, see [TO\_FILE](/sql-reference/functions/to_file).

**Optional:**

`options`
:   An OBJECT value that contains options for parsing documents. The supported keys are shown below. All are optional.

    * `'extract_images'`: If set to TRUE, the function extracts images embedded in the document. Requires LAYOUT mode.
    * `'mode'`: Specifies the parsing mode. The supported modes are:

      + `'OCR'`: The function extracts text only. This is the default mode.
      + `'LAYOUT'`: The function extracts layout as well as text, including structural content such as tables.
    * `'page_split'`: If set to TRUE, the function splits the document into pages and processes each page
      separately. This feature supports only PDF, PowerPoint (`.pptx`), and Word (`.docx`) documents.
      Documents in other formats return an error. The default is FALSE.

      Tip

      To process long documents that exceed the token limit of AI\_PARSE\_DOCUMENT, set this option to TRUE.
    * `'page_filter'`: An array that specifies ranges of pages of a multi-page document to process. Each
      range is an object with `start` and `end` fields that specify the first (inclusive) and last (exclusive) page in
      the range. Page indexes start at 0. For example, `{'start': 0, 'end': 1}` specifies the first page of the
      document.

      Note

      Specifying `page_filter` implies `page_split`. If you specify page ranges, it is not necessary to also set
      `page_split`.

`return_error_details`
:   A BOOLEAN flag that indicates whether to return error details in case of error. When set to TRUE, the function returns
    an OBJECT that contains `value`, `error`, and `metadata` fields. The `value` field contains the parsed document
    data, the `error` field contains the error message (or NULL on success), and `metadata` is a top-level field
    rather than a subfield of the parsed output. See [Error behavior](#error-behavior) for details.

## Returns[¶](#returns)

A JSON object (as a string) that contains the extracted data and associated metadata. The `options` argument
determines the structure of the returned object.

Tip

To use the output in SQL, convert it to an OBJECT value using the [PARSE\_JSON](/sql-reference/functions/parse_json) function.

If the `'page_split'` option is set, the output has the following structure:

> * `"pages"`: An array of JSON objects, each containing text extracted from the document. If the document has only
>   one page, the output still contains a `"pages"` array (which contains a single object). Each page has the following fields:
>   + `"content"`: Plain text (in OCR mode) or Markdown-formatted text (in LAYOUT mode).
>   + `"index"`: The page index in the file, starting at 0. Page numbers and formats specified in the document are ignored.
>
> > * `"metadata"`: Contains metadata about the document, such as page count.

If `'page_split'` is FALSE or is not present, the output has the following structure:

> * `"content"`: Plain text (in OCR mode) or Markdown-formatted text (in LAYOUT mode).
> * `"metadata"`: Contains metadata about the document, such as page count.

If the `"extract_images"` option is set to TRUE, the output includes an additional field:

> * `"images"`: An array of JSON objects, each representing an extracted image. Each image object has the following fields:
>   + `"id"`: A unique identifier for the image.
>   + `"top_left_x"`, `"top_left_y"`, `"bottom_right_x"`, `"bottom_right_y"`: The coordinates of the bounding box of the image on the page.
>   + `"image_base64"`: The extracted image data encoded as a base64 string.

## Error behavior[¶](#error-behavior)

By default, if AI\_PARSE\_DOCUMENT can’t process the input, the function returns NULL. If the query processes multiple
rows, rows with errors return NULL and don’t prevent the query from completing.

The return value on error depends on the `return_error_details`
argument. The following table shows the return value based on the `return_error_details` argument:

> | `return_error_details` | Return value | Description |
> | --- | --- | --- |
> | FALSE Not passed | NULL |  |
> | TRUE | OBJECT with `value`, `error`, and `metadata` fields | `value`: An OBJECT containing the parsed document data, or NULL if an error occurred. `error`: A VARCHAR value that contains the error message if an error occurred, or NULL if the function succeeded. The `error` field inside `value` (renamed from `errorInformation`) contains per-document error details when present. `metadata`: An OBJECT containing document metadata such as page count. This field is at the top level rather than inside the parsed output. |
>
> Expand
>
> Show lessSee more

For more information about error handling for AI functions, see [Snowflake Cortex AI Function: Multirow error handling improvements](/release-notes/bcr-bundles/2026_02/bcr-2184).

## Examples[¶](#examples)

For examples, see [AI\_PARSE\_DOCUMENT examples](/user-guide/snowflake-cortex/parse-document#label-parse-document-examples).




Note

AI\_PARSE\_DOCUMENT is the updated version of [PARSE\_DOCUMENT](/sql-reference/functions/parse_document-snowflake-cortex).
For the latest functionality, use AI\_PARSE\_DOCUMENT.

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
5. [Examples](#examples)
6. [Legal notices](#legal-notices)

Related content

1. [Parsing documents with AI\_PARSE\_DOCUMENT](/user-guide/snowflake-cortex/parse-document)