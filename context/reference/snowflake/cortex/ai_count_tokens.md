Categories:
:   [String & binary functions](https://docs.snowflake.com/sql-reference/functions-string) (AI Functions)

# AI_COUNT_TOKENS

Returns an estimate of the number of **input** tokens in a prompt for the specified large language model or
task-specific function. For functions that can take additional inputs that affect the input token count, such as model
name or categories/labels, those inputs can also be specified.

## Syntax

The syntax can vary based on the function used. In general, you pass the function name, model name if applicable,
input text, and any additional options that affect token count.

```
AI_COUNT_TOKENS( <function_name>, <input_text> [, <return_error_details> ] )
AI_COUNT_TOKENS( <function_name>, <model_name>, <input_text> [, <return_error_details> ] )
AI_COUNT_TOKENS( <function_name>, <input_text>, <options> [, <return_error_details> ] )
AI_COUNT_TOKENS( <function_name>, <model_name>, <input_text>, <options> [, <return_error_details> ] )
```

AI_COUNT_TOKENS uses specific syntax variations for some functions. For example:

```
AI_COUNT_TOKENS( 'ai_similarity', <input_text_1>, <input_text_2>, <options> [, <return_error_details> ] )
AI_COUNT_TOKENS( 'ai_classify', <input_text>, <categories> [, <return_error_details> ] )
AI_COUNT_TOKENS( 'ai_translate', <input_text>, <source_language>, <target_language> [, <return_error_details> ] )
```

See [Examples](https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens#examples) for function specific usage patterns.

## Arguments

**Required:**

`function_name`
:   String containing the name of the function you want to base the token count on, such as `'ai_complete'` or `'ai_sentiment'`.
    The function’s name must begin with “ai_” and use only lowercase letters.

    For supported functions, see [Supported functions and models](https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens#label-ai-count-tokens-supported).

`input_text` or `input_text_1`, `input_text_2`
:   Input text to count the tokens in.

**Optional:**

`model_name`
:   String containing the name of the model you want to base the token content on. Required if the function specified by
    `function_name` requires you to choose the model to use, such as AI_COMPLETE or AI_EMBED.

    For supported model names, see [Supported functions and models](https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens#label-ai-count-tokens-supported). Snowflake intends to add support for additional
    models over time.

`categories`
:   An array of VARIANT values that specify one or more categories or labels to use, for functions that require this data. Categories are included in the input token count.

`options`
:   A VARIANT that specifies additional options that affect how the function processes the input. For functions that take
    two text inputs, such as AI_SIMILARITY, options are used to specify the model.

`return_error_details`
:   A BOOLEAN flag that indicates whether to return error details in case of error. When set to TRUE, the function returns
    an OBJECT that contains the value and the error message, one of which is NULL depending on whether the function
    succeeded or failed. See [Error behavior](https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens#error-behavior) for details.

## Returns

An [INTEGER](https://docs.snowflake.com/sql-reference/data-types-numeric#label-data-type-integer) value that is the estimated number of *input* tokens for the input text and
other parameter values you provide. This value does not include output (generated) tokens.

## Error behavior

By default, if AI_COUNT_TOKENS can’t process the input, the function returns NULL. If the query processes multiple rows,
rows with errors return NULL and don’t prevent the query from completing.

The return value on error depends on the `return_error_details`
argument. The following table shows the return value based on the `return_error_details` argument:

> | `return_error_details` | Return value | Description |
> | --- | --- | --- |
> | FALSE Not passed | NULL |  |
> | TRUE | OBJECT with `value` and `error` fields | `value`: An INTEGER value that is the token count, or NULL if an error occurred. `error`: A VARCHAR value that contains the error message if an error occurred, or NULL if the function succeeded. |

For more information about error handling for AI functions, see [Snowflake Cortex AI Function: Multirow error handling improvements](https://docs.snowflake.com/release-notes/bcr-bundles/2026_02/bcr-2184).

## Supported functions and models

AI_COUNT_TOKENS supports these functions:

* [AI_COMPLETE](https://docs.snowflake.com/sql-reference/functions/ai_complete), for a model in the table below
* [AI_EMBED](https://docs.snowflake.com/sql-reference/functions/ai_embed), for a model in the table below
* [AI_SIMILARITY](https://docs.snowflake.com/sql-reference/functions/ai_similarity), for the default model or a model in the table below
* [AI_CLASSIFY](https://docs.snowflake.com/sql-reference/functions/ai_classify), [AI_SENTIMENT](https://docs.snowflake.com/sql-reference/functions/ai_sentiment),
  [AI_SUMMARIZE](https://docs.snowflake.com/sql-reference/functions/ai_summarize), [AI_REDACT](https://docs.snowflake.com/sql-reference/functions/ai_redact), and
  [AI_TRANSLATE](https://docs.snowflake.com/sql-reference/functions/ai_translate), which use the default model

| Function | Model |
| --- | --- |
| AI_COMPLETE | `claude-fable-5` |
| AI_COMPLETE | `claude-haiku-4-5` |
| AI_COMPLETE | `claude-opus-4-5` |
| AI_COMPLETE | `claude-opus-4-6` |
| AI_COMPLETE | `claude-opus-4-7` |
| AI_COMPLETE | `claude-opus-4-8` |
| AI_COMPLETE | `claude-opus-5` |
| AI_COMPLETE | `claude-opus-5-5` |
| AI_COMPLETE | `claude-sonnet-4-5` |
| AI_COMPLETE | `claude-sonnet-4-6` |
| AI_COMPLETE | `claude-sonnet-5` |
| AI_COMPLETE | `claude-sonnet-5-5` |
| AI_COMPLETE | `gemini-3.1-flash-lite` |
| AI_COMPLETE | `gemini-3.1-pro` |
| AI_COMPLETE | `gemini-3.5-flash` |
| AI_COMPLETE | `gemini-3.7-flash` |
| AI_COMPLETE | `gemini-3.8-flash` |
| AI_COMPLETE | `gemma-4-26b-a4b` |
| AI_COMPLETE | `gemma-4-31b` |
| AI_COMPLETE | `gemma-4-e2b` |
| AI_COMPLETE | `llama3-70b` |
| AI_COMPLETE | `llama3-8b` |
| AI_COMPLETE | `llama3.1-70b` |
| AI_COMPLETE | `llama3.1-8b` |
| AI_COMPLETE | `llama3.3-70b` |
| AI_COMPLETE | `llama4-maverick` |
| AI_COMPLETE | `mistral-7b` |
| AI_COMPLETE | `mistral-large2` |
| AI_COMPLETE | `mistral-large3` |
| AI_COMPLETE | `mixtral-8x7b` |
| AI_COMPLETE | `openai-gpt-4.1` |
| AI_COMPLETE | `openai-gpt-5` |
| AI_COMPLETE | `openai-gpt-5-mini` |
| AI_COMPLETE | `openai-gpt-5-nano` |
| AI_COMPLETE | `openai-gpt-5.2` |
| AI_COMPLETE | `openai-gpt-5.4` |
| AI_COMPLETE | `openai-gpt-5.4-mini` |
| AI_COMPLETE | `openai-gpt-5.4-nano` |
| AI_COMPLETE | `openai-gpt-5.6-luna` |
| AI_COMPLETE | `openai-gpt-5.6-terra` |
| AI_COMPLETE | `openai-gpt-6-luna` |
| AI_COMPLETE | `openai-gpt-6.1-sol` |
| AI_COMPLETE | `qwen3-32b` |
| AI_COMPLETE | `qwen3-next-80b-a3b` |
| AI_COMPLETE | `qwen3-vl-235b-a22b` |
| AI_EMBED | `e5-base-v2` |
| AI_EMBED | `multilingual-e5-large` |
| AI_EMBED | `nv-embed-qa-4` |
| AI_EMBED | `snowflake-arctic-embed-l-v2.0` |
| AI_EMBED | `snowflake-arctic-embed-l-v2.0-8k` |
| AI_EMBED | `snowflake-arctic-embed-m` |
| AI_EMBED | `snowflake-arctic-embed-m-v1.5` |
| AI_EMBED | `voyage-multilingual-2` |
| AI_SIMILARITY | Default model |
| AI_SIMILARITY | `e5-base-v2` |
| AI_SIMILARITY | `multilingual-e5-large` |
| AI_SIMILARITY | `nv-embed-qa-4` |
| AI_SIMILARITY | `snowflake-arctic-embed-l-v2.0` |
| AI_SIMILARITY | `snowflake-arctic-embed-m` |
| AI_SIMILARITY | `snowflake-arctic-embed-m-v1.5` |
| AI_SIMILARITY | `voyage-multilingual-2` |

## Usage notes

* Although function names are usually written in all uppercase, use only lowercase letters in function and model
  names.
* AI_COUNT_TOKENS does not work with LLM functions in the SNOWFLAKE.CORTEX namespace or with fine-tuned models.
  You must specify a function name that begins with “ai_”.
* AI_COUNT_TOKENS accepts only text, not image, audio, or video inputs.
* AI_COUNT_TOKENS estimates input tokens only. It does not estimate output (generated) tokens, which also
  contribute to billing. To see actual billed input and output tokens for a query, use the
  [CORTEX_FUNCTIONS_QUERY_USAGE_HISTORY](https://docs.snowflake.com/sql-reference/account-usage/cortex_functions_query_usage_history) view.
* The accuracy of the token count depends on the function and model. See [Token count accuracy](https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens#token-count-accuracy) for details.
* When you use [AI_COMPLETE](https://docs.snowflake.com/sql-reference/functions/ai_complete) with the `response_format` argument (structured
  output) on Anthropic Claude models, additional request content is generated to support structured output. This
  content is included in the billed input tokens but is not reflected in the AI_COUNT_TOKENS estimate. As a result, the
  billed input token count for these requests can be materially higher than the estimated token count.
* When you use [AI_TRANSLATE](https://docs.snowflake.com/sql-reference/functions/ai_translate), AI_COUNT_TOKENS estimates the tokens in the source
  text only. The billed token count also includes the generated translation, so the billed total is higher than the
  estimate.
* When you use [AI_SUMMARIZE](https://docs.snowflake.com/sql-reference/functions/ai_summarize) or
  [AI_REDACT](https://docs.snowflake.com/sql-reference/functions/ai_redact), AI_COUNT_TOKENS estimates the tokens in the source text only. The
  billed token count also includes the generated text, so the billed total is higher than the estimate.
* AI_COUNT_TOKENS only incurs compute costs and does not bill based on token count.
* You can call AI_COUNT_TOKENS in all regions, even when a supported model isn’t available in that region.

### Token count accuracy

The following table shows the measured accuracy for synthetic plain-text prompts with target lengths of about 100,
1,000, and 10,000 tokens.

For each function and model, the percentage is the mean absolute percentage error between the AI_COUNT_TOKENS estimate
and the verified input-token count. Exact means the estimate matched the verified count on every scored request.

| Function | Model | Plain text |
| --- | --- | --- |
| AI_COMPLETE | `claude-fable-5` | Estimate; 6.3% |
| AI_COMPLETE | `claude-haiku-4-5` | Estimate; 6.6% |
| AI_COMPLETE | `claude-opus-4-5` | Estimate; 6.8% |
| AI_COMPLETE | `claude-opus-4-6` | Estimate; 6.8% |
| AI_COMPLETE | `claude-opus-4-7` | Estimate; 7.5% |
| AI_COMPLETE | `claude-opus-4-8` | Estimate; 7.1% |
| AI_COMPLETE | `claude-opus-5` | Estimate; 6.9% |
| AI_COMPLETE | `claude-sonnet-4-5` | Estimate; 8.1% |
| AI_COMPLETE | `claude-sonnet-4-6` | Estimate; 7.3% |
| AI_COMPLETE | `claude-sonnet-5` | Estimate; 6.8% |
| AI_COMPLETE | `gemini-3.1-flash-lite` | Estimate; 14.2% |
| AI_COMPLETE | `gemini-3.1-pro` | Estimate; 14.2% |
| AI_COMPLETE | `gemini-3.5-flash` | Estimate; 14.2% |
| AI_COMPLETE | `gemma-4-26b-a4b` | Estimate; 10.4% |
| AI_COMPLETE | `gemma-4-31b` | Estimate; 10.4% |
| AI_COMPLETE | `gemma-4-e2b` | Estimate; 9.5% |
| AI_COMPLETE | `llama3-70b` | Exact |
| AI_COMPLETE | `llama3-8b` | Exact |
| AI_COMPLETE | `llama3.1-70b` | Exact |
| AI_COMPLETE | `llama3.1-8b` | Exact |
| AI_COMPLETE | `llama3.3-70b` | Exact |
| AI_COMPLETE | `llama4-maverick` | Exact |
| AI_COMPLETE | `mistral-7b` | Exact |
| AI_COMPLETE | `mistral-large2` | Exact |
| AI_COMPLETE | `mixtral-8x7b` | Exact |
| AI_COMPLETE | `openai-gpt-4.1` | Estimate; 3.6% |
| AI_COMPLETE | `openai-gpt-5` | Estimate; 2.0% |
| AI_COMPLETE | `openai-gpt-5-mini` | Estimate; 2.0% |
| AI_COMPLETE | `openai-gpt-5-nano` | Estimate; 2.0% |
| AI_COMPLETE | `openai-gpt-5.4-mini` | Estimate; 2.0% |
| AI_COMPLETE | `openai-gpt-5.4-nano` | Estimate; 2.0% |
| AI_COMPLETE | `qwen3-32b` | Estimate; 11.0% |
| AI_COMPLETE | `qwen3-next-80b-a3b` | Estimate; 11.8% |
| AI_COMPLETE | `qwen3-vl-235b-a22b` | Estimate; 11.8% |
| AI_EMBED | `e5-base-v2` | Exact |
| AI_EMBED | `multilingual-e5-large` | Exact |
| AI_EMBED | `nv-embed-qa-4` | Exact |
| AI_EMBED | `snowflake-arctic-embed-l-v2.0` | Exact |
| AI_EMBED | `snowflake-arctic-embed-l-v2.0-8k` | Exact |
| AI_EMBED | `snowflake-arctic-embed-m` | Exact |
| AI_EMBED | `snowflake-arctic-embed-m-v1.5` | Exact |
| AI_EMBED | `voyage-multilingual-2` | Exact |
| AI_SIMILARITY | Default model | Exact |
| AI_SIMILARITY | `e5-base-v2` | Exact |
| AI_SIMILARITY | `multilingual-e5-large` | Exact |
| AI_SIMILARITY | `nv-embed-qa-4` | Exact |
| AI_SIMILARITY | `snowflake-arctic-embed-l-v2.0` | Exact |
| AI_SIMILARITY | `snowflake-arctic-embed-m` | Exact |
| AI_SIMILARITY | `snowflake-arctic-embed-m-v1.5` | Exact |
| AI_SIMILARITY | `voyage-multilingual-2` | Exact |
| AI_CLASSIFY | Default model | Exact |
| AI_SENTIMENT | Default model | Exact |

## Examples

### AI_COMPLETE example

The following SQL statement counts the number of tokens in a prompt for AI_COMPLETE and the `llama3.3-70b` model:

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

### AI_COMPLETE with structured output example

The following SQL statement estimates the input tokens for an AI_COMPLETE call that uses the `response_format`
argument (structured output) on an Anthropic Claude model:

```
SELECT AI_COUNT_TOKENS(
  'ai_complete',
  'claude-sonnet-4-5',
  'Extract structured data from this customer interaction note: Customer Sarah Jones
  complained about the mobile app crashing during checkout. She tried to purchase 3 items:
  a red XL jacket (EUR 89.99), blue running shoes (EUR 129.50), and a fitness tracker
  (EUR 199.00). The app crashed after she entered her shipping address at 123 Main St,
  Portland OR, 97201. She has been a premium member since January 2024.',
  {
    'type': 'json',
    'schema': {
      'type': 'object',
      'properties': {
        'items_count': {'type': 'number'},
        'prices': {'type': 'array', 'items': {'type': 'string'}},
        'address': {'type': 'string'},
        'member_date': {'type': 'string'}
      },
      'required': ['items_count', 'prices', 'address', 'member_date']
    }
  }
);
```

Response:

```
296
```

Note

Structured output on Claude models generates additional request content that is billed as input tokens but is not
reflected in this estimate, so the billed input token count can be materially higher than the estimated token count.
See [Usage notes](https://docs.snowflake.com/en/sql-reference/functions/ai_count_tokens#usage-notes) for details.

### AI_EMBED example

The following SQL statement counts the number of tokens in text being embedded using the AI_EMBED function and the `nv-embed-qa-4` model:

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

### AI_CLASSIFY examples

This example calculates the total number of input tokens required for text classification with given input and labels:

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

Response:

```
298
```

### AI_SENTIMENT examples

The following SQL statement counts the number of tokens in text being analyzed for sentiment using the AI_SENTIMENT function:

```
SELECT AI_COUNT_TOKENS('ai_sentiment',
  'This place makes the best truffle pizza in the world! Too bad I cannot afford it');
```

Response:

```
139
```

The following example adds labels to the previous example:

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

### AI_SIMILARITY examples

The following SQL statement counts the number of tokens in an AI_SIMILARITY call that uses the default model.

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

The following SQL statement counts the number of tokens in an AI_SIMILARITY that uses the `e5-base-v2` model:

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

### AI_TRANSLATE example

The following SQL statement counts the number of tokens used by AI_TRANSLATE when translating text from English to
German.

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

### AI_REDACT examples

The following SQL statement counts the number of input tokens for a basic AI_REDACT request:

```
SELECT AI_COUNT_TOKENS('ai_redact',
  'My name is John Smith and I live at twenty third street, San Francisco.');
```

Response:

```
442
```

The following example includes a `categories` argument to estimate tokens when redacting only names and email addresses:

```
SELECT AI_COUNT_TOKENS('ai_redact',
  'My name is John and I live at twenty third street, San Francisco.',
  ['NAME', 'EMAIL']);
```

Response:

```
441
```

Note

AI_COUNT_TOKENS is the updated version of [COUNT_TOKENS](https://docs.snowflake.com/sql-reference/functions/count_tokens-snowflake-cortex).
For the latest functionality, use AI_COUNT_TOKENS.

## Legal notices

Refer to [Snowflake AI and ML](https://docs.snowflake.com/guides-overview-ai-features).
