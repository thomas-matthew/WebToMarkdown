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

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)AI FunctionsAI\_COUNT\_TOKENS

Categories:
:   [String & binary functions](/sql-reference/functions-string) (AI Functions)

# AI\_COUNT\_TOKENS[¶](#ai_count_tokens)

Returns an estimate of the number of tokens in a prompt for the specified large language model or task-specific
function. For functions that can take additional inputs that affect token count, such as model name or
categories/labels, those inputs can also be specified.

## Syntax[¶](#syntax)

The syntax can vary based on the function used. In general, you pass the function name, model name if applicable,
input text, and any additional options that affect token count.

Copy code

```
AI_COUNT_TOKENS( <function_name>, <input_text> [, <return_error_details> ] )
AI_COUNT_TOKENS( <function_name>, <model_name>, <input_text> [, <return_error_details> ] )
AI_COUNT_TOKENS( <function_name>, <input_text>, <options> [, <return_error_details> ] )
AI_COUNT_TOKENS( <function_name>, <model_name>, <input_text>, <options> [, <return_error_details> ] )
```

AI\_COUNT\_TOKENS uses specific syntax variations for some functions. For example:

Copy code

```
AI_COUNT_TOKENS( 'ai_similarity', <input_text_1>, <input_text_2>, <options> [, <return_error_details> ] )
AI_COUNT_TOKENS( 'ai_classify', <input_text>, <categories> [, <return_error_details> ] )
AI_COUNT_TOKENS( 'ai_translate', <input_text>, <source_language>, <target_language> [, <return_error_details> ] )
```

See [Examples](#examples) for function specific usage patterns.

## Arguments[¶](#arguments)

**Required:**

`function_name`
:   String containing the name of the function you want to base the token count on, such as `'ai_complete'` or `'ai_sentiment'`.
    The function’s name must begin with “ai\_” and use only lowercase letters.

    A complete list of supported functions is available in the [Regional availability](/user-guide/snowflake-cortex/aisql#label-cortex-llm-availability) table.

`input_text` or `input_text_1`, `input_text_2`
:   Input text to count the tokens in.

**Optional:**

`model_name`
:   String containing the name of the model you want to base the token content on. Required if the function specified by
    `function_name` requires you to choose the model to use, such as AI\_COMPLETE or AI\_EMBED.

    A list of available LLM models is available in the [Regional availability](/user-guide/snowflake-cortex/aisql#label-cortex-llm-availability) table. However, not all models are
    currently supported. Snowflake intends to add support for additional models over time.

    For AI\_COMPLETE, the following models are not supported:

    * claude-3-7-sonnet
    * claude-4-opus
    * claude-4-sonnet
    * claude-haiku-4-5
    * claude-opus-4-5
    * claude-opus-4-6
    * claude-opus-4-7
    * claude-sonnet-4-5
    * claude-sonnet-4-6
    * gemini-2.5-flash
    * gemini-2.5-flash-lite
    * gemini-3.1-pro
    * openai-gpt-4.1
    * openai-gpt-5
    * openai-gpt-5-chat
    * openai-gpt-5-mini
    * openai-gpt-5-nano
    * openai-gpt-5.1
    * openai-gpt-5.2
    * openai-gpt-5.4

`categories`
:   An array of VARIANT values that specify one or more categories or labels to use, for functions that require this data. Categories are included in the input token count.

`options`
:   A VARIANT that specifies additional options that affect how the function processes the input. For functions that take
    two text inputs, such as AI\_SIMILARITY, options are used to specify the model.

`return_error_details`
:   A BOOLEAN flag that indicates whether to return error details in case of error. When set to TRUE, the function returns
    an OBJECT that contains the value and the error message, one of which is NULL depending on whether the function
    succeeded or failed. See [Error behavior](#error-behavior) for details.

## Returns[¶](#returns)

An [INTEGER](/sql-reference/data-types-numeric#label-data-type-integer) value that is the number of tokens of input text calculated using the given parameter values.

## Error behavior[¶](#error-behavior)

By default, if AI\_COUNT\_TOKENS can’t process the input, the function returns NULL. If the query processes multiple rows,
rows with errors return NULL and don’t prevent the query from completing.

The return value on error depends on the `return_error_details`
argument. The following table shows the return value based on the `return_error_details` argument:

> | `return_error_details` | Return value | Description |
> | --- | --- | --- |
> | FALSE Not passed | NULL |  |
> | TRUE | OBJECT with `value` and `error` fields | `value`: An INTEGER value that is the token count, or NULL if an error occurred. `error`: A VARCHAR value that contains the error message if an error occurred, or NULL if the function succeeded. |
>
> Expand
>
> Show lessSee more

For more information about error handling for AI functions, see [Snowflake Cortex AI Function: Multirow error handling improvements](/release-notes/bcr-bundles/2026_02/bcr-2184).

## Usage notes[¶](#usage-notes)

* Although function names are usually written in all uppercase, use only lowercase letters in function and model
  names.
* AI\_COUNT\_TOKENS does not work with LLM functions in the SNOWFLAKE.CORTEX namespace or with fine-tuned models.
  You must specify a function name that begins with “ai\_”.
* AI\_COUNT\_TOKENS accepts only text, not image, audio, or video inputs.
* AI\_COUNT\_TOKENS only incurs compute costs and does not bill based on token count.
* AI\_COUNT\_TOKENS is available in all regions, even for models not available in a given region.

## Examples[¶](#examples)

### AI\_COMPLETE example[¶](#ai_complete-example)

The following SQL statement counts the number of tokens in a prompt for AI\_COMPLETE and the `llama3.3-70b` model:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_complete', 'llama3.3-70b', 'Summarize the insights from this
call transcript in 20 words: "I finally splurged on these after months of hesitation about
the price, and I\'m mostly impressed. The Nulu fabric really is as buttery-soft as everyone says,
and they\'re incredibly comfortable for yoga and lounging. The high-rise waistband stays put
and doesn\'t dig in, which is rare for me. However, I\'m already seeing some pilling after
just a few wears, and they definitely require gentle care. They\'re also quite delicate -
I snagged them slightly on my gym bag zipper. Great for low-impact activities, but I wouldn\'t
recommend for high-intensity workouts. Worth it for the comfort factor"');
```

Response:

```
158
```

### AI\_EMBED example[¶](#ai_embed-example)

The following SQL statement counts the number of tokens in text being embedded using the AI\_EMBED function and the `nv-embed-qa-4` model:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_embed', 'nv-embed-qa-4', '"I finally splurged on these after months
of hesitation about the price, and I\'m mostly impressed. The Nulu fabric really is as buttery-soft
as everyone says, and they\'re incredibly comfortable for yoga and lounging. The high-rise waistband
stays put and doesn\'t dig in, which is rare for me. However, I\'m already seeing some pilling after
just a few wears, and they definitely require gentle care. They\'re also quite delicate - I snagged
them slightly on my gym bag zipper. Great for low-impact activities, but I wouldn\'t recommend for
high-intensity workouts. Worth it for the comfort factor"');
```

Response:

```
142
```

### AI\_CLASSIFY examples[¶](#ai_classify-examples)

This example calculates the total number of input tokens required for text classification with given input and labels:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_classify',
  'One day I will see the world and learn to cook my favorite dishes',
  [
      {'label': 'travel'},
      {'label': 'cooking'},
      {'label': 'reading'},
      {'label': 'driving'}
  ]
);
```

Response:

```
187
```

The following example adds per-label descriptions and an overall task description to the previous example:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_classify',
  'One day I will see the world and learn to cook my favorite dishes',
  [
    {'label': 'travel', 'description': 'content related to traveling'},
    {'label': 'cooking','description': 'content related to food preparation'},
    {'label': 'reading','description': 'content related to reading'},
    {'label': 'driving','description': 'content related to driving a car'}
  ],
  {
    'task_description': 'Determine topics related to the given text'
  }
);
```

Response:

```
254
```

The following example builds upon the previous two examples by adding label examples:

Copy codeExpand

```
SELECT AI_COUNT_TOKENS('ai_classify',
  'One day I will see the world and learn to cook my favorite dishes',
  [
    {'label': 'travel', 'description': 'content related to traveling'},
    {'label': 'cooking','description': 'content related to food preparation'},
    {'label': 'reading','description': 'content related to reading'},
    {'label': 'driving','description': 'content related to driving a car'}
  ],
  {
    'task_description': 'Determine topics related to the given text',
    'examples': [
      {
        'input': 'i love traveling with a good book',
        'labels': ['travel', 'reading'],
        'explanation': 'the text mentions traveling and a good book which relates to reading'
      }
    ]
  }
);
```

Show lessSee more

Scroll to top

Response:

```
298
```

### AI\_SENTIMENT examples[¶](#ai_sentiment-examples)

The following SQL statement counts the number of tokens in text being analyzed for sentiment using the AI\_SENTIMENT function:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_sentiment',
  'This place makes the best truffle pizza in the world! Too bad I cannot afford it');
```

Response:

```
139
```

The following example adds labels to the previous example:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_sentiment',
  'This place makes the best truffle pizza in the world! Too bad I cannot afford it',
  [
    {'label': 'positive'},
    {'label': 'negative'},
    {'label': 'neutral'}
  ]
);
```

Response:

```
148
```

### AI\_SIMILARITY examples[¶](#ai_similarity-examples)

The following SQL statement counts the number of tokens in an AI\_SIMILARITY call that uses the default model.

Copy code

```
SELECT AI_COUNT_TOKENS('ai_similarity',
  'The plot is fast and the characters feel real. This book kept me awake all night
  because the mystery is so deep. I love how the author handles the ending. It is a
  great read for anyone who likes suspense.',
  'The story is quick and the people feel true. This novel kept me awake all night
  because the puzzle is so big. I love how the writer handles the finale. It is a
  solid choice for anyone who enjoys suspense.');
```

Response:

```
101
```

The following SQL statement counts the number of tokens in an AI\_SIMILARITY that uses the `e5-base-v2` model:

Copy code

```
SELECT AI_COUNT_TOKENS('ai_similarity',
  'The plot is fast and the characters feel real. This book kept me awake all night
  because the mystery is so deep. I love how the author handles the ending. It is a
  great read for anyone who likes suspense.',
  'The story is quick and the people feel true. This novel kept me awake all night
  because the puzzle is so big. I love how the writer handles the finale. It is a
  solid choice for anyone who enjoys suspense.', {'model': 'e5-base-v2'});
```

Response:

```
92
```

### AI\_TRANSLATE example[¶](#ai_translate-example)

The following SQL statement counts the number of tokens used by AI\_TRANSLATE when translating text from English to
German.

Copy code

```
SELECT AI_COUNT_TOKENS('ai_translate',
  'The plot is fast and the characters feel real. This book kept me awake all night
  because the mystery is so deep. I love how the author handles the ending. It is a
  great read for anyone who likes suspense.', 'en', 'de');
```

Response:

```
51
```




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
4. [Error behavior](#error-behavior)
5. [Usage notes](#usage-notes)
6. [Examples](#examples)
7. [AI\_COMPLETE example](#ai_complete-example)
8. [AI\_EMBED example](#ai_embed-example)
9. [AI\_CLASSIFY examples](#ai_classify-examples)
10. [AI\_SENTIMENT examples](#ai_sentiment-examples)
11. [AI\_SIMILARITY examples](#ai_similarity-examples)
12. [AI\_TRANSLATE example](#ai_translate-example)
13. [Legal notices](#legal-notices)

Related content

1. [Snowflake Cortex AI Functions (including LLM functions)](/user-guide/snowflake-cortex/aisql)