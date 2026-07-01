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

[Reference](/en/reference)[Function and stored procedure reference](/en/sql-reference-functions)AI FunctionsAI\_TRANSCRIBE

Categories:
:   [File functions](/sql-reference/functions-file) (AI Functions)

# AI\_TRANSCRIBE[¶](#ai_transcribe)

AI\_TRANSCRIBE is a fully managed SQL function that transcribes audio and video files stored in a stage, extracting
text, timestamps, and speaker information. See [Create stage for media files](/user-guide/snowflake-cortex/ai-multimodal#label-cortex-llm-media-files) for information on creating a
stage suitable for storing files for processing by AI\_TRANSCRIBE.

Under the hood, AI\_TRANSCRIBE orchestrates optimized AI models for transcription and speaker diarization, processing
audio files of up to two hours in length. AI\_TRANSCRIBE is horizontally scalable, allowing efficient batch processing
by processing multiple files at the same time. Audio can be processed directly from object storage to avoid
unnecessary data movement.

By default, AI\_TRANSCRIBE converts audio files to clean, readable text. You can also specify a timestamp granularity
to extract timestamps for each word or change of speaker. Word-level timestamps are useful for applications such as
subtitles or for letting the user jump to specific parts of the audio by clicking words in the transcript.
Speaker-level timestamps are useful for understanding who said what in meetings, interviews, or phone calls.

| Timestamp granularity mode | Result |
| --- | --- |
| Default | Transcription of entire audio file in one piece |
| Word | Transcription with timestamps for each word |
| Speaker | Indicates who is speaking, and a timestamp, at each change of speaker |

Expand

Show lessSee more

## Syntax[¶](#syntax)

Copy codeExpand code block

```
AI_TRANSCRIBE( <audio_file> [ , <options> ] [, <return_error_details> ] )
```

## Arguments[¶](#arguments)

**Required:**

`audio_file`
:   A FILE type object representing an audio file. Use [TO\_FILE function](/sql-reference/functions/to_file) to create a reference to your staged file.

**Optional:**

`options`
:   An [OBJECT value](/sql-reference/data-types-semistructured#label-data-type-object) containing zero or more of the following fields.

    * `timestamp_granularity`: A string specifying the desired timestamp granularity. Possible values are:

      + `"word"`: The file is transcribed as a series of words, each with its own timestamp.
      + `"speaker"`: The file is transcribed as a series of conversational “turns,” each with its own timestamp and speaker label.

      If this field is not specified, the entire file is transcribed as a single segment without timestamps by default.

`return_error_details`
:   A BOOLEAN flag that indicates whether to return error details in case of error. When set to TRUE, the function returns
    an OBJECT that contains the value and the error message, one of which is NULL depending on whether the function
    succeeded or failed. See [Error behavior](#error-behavior) for details.

## Returns[¶](#returns)

An string containing a JSON representation of the transcription result. The JSON object contains the following fields:

* `"audio_duration"`: The total duration of the audio file in seconds.
* `"text"`: The transcription of the complete audio file, provided when the `timestamp_granularity` field is not specified.
* `"segments"`: An array of segments, provided when the `timestamp_granularity` field is set to `"word"` or
  `"speaker"`. Each segment is a JSON object containing the following fields:
  + `"start"`: The start time of the segment in seconds.
  + `"end"`: The end time of the segment in seconds.
  + `"text"`: The transcription text for the segment.
  + `"speaker_label"`: The label of the speaker for the segment, provided when the `timestamp_granularity` field is set to `speaker`.
    Labels are of the form “SPEAKER\_00”, “SPEAKER\_01”, etc. and are assigned in the order speakers are detected in the audio file.

## Error behavior[¶](#error-behavior)

By default, if AI\_TRANSCRIBE can’t process the input, the function returns NULL. If the query processes multiple rows,
rows with errors return NULL and don’t prevent the query from completing.

The return value on error depends on the `return_error_details`
argument. The following table shows the return value based on the `return_error_details` argument:

> | `return_error_details` | Return value | Description |
> | --- | --- | --- |
> | FALSE Not passed | NULL |  |
> | TRUE | OBJECT with `value` and `error` fields | `value`: A VARCHAR value containing the transcription result, or NULL if an error occurred. `error`: A VARCHAR value that contains the error message if an error occurred, or NULL if the function succeeded. |
>
> Expand
>
> Show lessSee more

For more information about error handling for AI functions, see [Snowflake Cortex AI Function: Multirow error handling improvements](/release-notes/bcr-bundles/2026_02/bcr-2184).

## Access control requirements[¶](#access-control-requirements)

Users must use a role that has been granted the [SNOWFLAKE.CORTEX\_USER database role](/sql-reference/snowflake-db-roles#label-snowflake-db-roles-cortex-user).
See [Cortex LLM privileges](/user-guide/snowflake-cortex/aisql-privileges-and-access#label-cortex-llm-privileges) for more information on this role.

## Usage notes[¶](#usage-notes)

* AI\_TRANSCRIBE supports the following audio and video file formats:

  | Audio | FLAC, MP3, MP4, OGG, WAV, WEBM |
  | --- | --- |
  | Video | MKV, MP4, OGV, WEBM |

  Expand

  Show lessSee more

  Video files must contain at least one audio track in FLAC, MP3, OPUS, VORBIS, or WAV format.

  Factors such as sample rate, bit depth, and number of channels do not affect transcription, but they might make the
  file too large to process if they are too high. Internally, AI\_TRANSCRIBE uses monophonic audio at 16 KHz, and
  resamples input files when they are not already in this format
* The maximum audio file size is 700 MB.
* The maximum audio file duration is 60 minutes when timestamp granularity is set to “word” or “speaker”.
  If timestamp granularity is not used, the maximum duration is 120 minutes.

## Supported languages[¶](#supported-languages)

AI\_TRANSCRIBE supports the following languages, which are automatically detected. Files can contain multiple
supported languages.

Note

Language detection requires audio to begin within the first five seconds of the file. For best results, trim
excess silence before uploading.

* Arabic
* Bulgarian
* Cantonese
* Catalan
* Chinese
* Czech
* Dutch
* English
* French
* German
* Greek
* Hebrew
* Hindi
* Hungarian
* Indonesian
* Italian
* Japanese
* Korean
* Latvian
* Malay
* Norwegian
* Polish
* Portuguese
* Romanian
* Russian
* Serbian
* Slovenian
* Spanish
* Swedish
* Thai
* Turkish
* Ukrainian

## Cost considerations[¶](#cost-considerations)

Billing for all AI Functions is based on token consumption. For transcription, each second of audio processed is 50
tokens, regardless of language or segmentation method. A full hour of audio is therefore 180,000 tokens. Assuming
that processing a million tokens costs 0.97 credits, and that a Snowflake AI Credit costs US $2.00 assuming
Global routing, each hour of audio processed costs about US $0.35. This estimate is subject to change. For
current pricing information, see the
[Snowflake Service Consumption Table](https://www.snowflake.com/legal-files/CreditConsumptionTable.pdf).

Note

AI\_TRANSCRIBE has a minimum billing duration of 1 minute. Files shorter than 1 minute are still processed, but
are billed at 1 minute. To efficiently process large numbers of short audio files, consider batching them into a
single file and using timestamps to identify the start and end of each original file in the resulting
transcription.

## Examples[¶](#examples)

### Text transcription[¶](#text-transcription)

The following example transcribes [an audio file](/static/samples/cortex/audio/consultation.wav) stored in the
`financial_consultation` stage, returning a text transcript of the entire file. The
[TO\_FILE function](/sql-reference/functions/to_file) converts the staged file to a file reference.

Copy code

```
SELECT AI_TRANSCRIBE(TO_FILE(
    '@financial_consultation', 'consultation.wav'));
```

Response:

Expand code block

```
{"audio_duration":321.78,"text":"Good afternoon, Robert. Thanks for calling in
today. I understand you had some concerns about your portfolio you wanted to
discuss. Yes, I'm really worried. I've been watching the news and the market's
been all over the place lately. I'm thinking maybe I should just sell
everything, all my stocks and mutual funds and put it all in bonds or CDs. At
least then I could sleep at night. I can definitely understand that concern,
Robert. Market volatility can be unsettling, especially when you're seeing
those daily swings in the headlines. Before we talk about any major moves, can
you help me understand what specifically is driving this anxiety? Is it the
recent tech sector pullback or something more general? It's everything. I'm 52
years old and I keep thinking about what happened in 2008. I lost so much then
and I'm worried we're heading for another crash with this new administration. I
can't afford to lose my retirement savings. Those are absolutely valid
concerns, and I appreciate you sharing that context. That was a really
challenging time for everyone. Let me ask you this. When we last reviewed your
portfolio in March, we had you allocated at about 70% equities and 30% bonds,
correct? And your target retirement age is still 62%. That's right. But
honestly, 70% in stocks feels way too risky right now. I'm thinking more like
20% stocks, 80% bonds, maybe even less in stocks. I understand that instinct,
Robert. Let's walk through this together. First, I want to remind you of
something important. Your current portfolio is already designed with volatility
in mind. You're not in individual stocks. You're in diversified index funds and
some actively managed funds across different sectors and even international
markets. but they're still going down. My quarterly statement showed I was down
8% this quarter alone. You're absolutely right, and that's painful to see, but
let's put this in perspective. Over the past 12 months, even with this recent
volatility, your portfolio is still up about 3%. The market has given back some
gains, but we're not in crisis territory. Remember, we built your allocation
specifically because you have 10 years until retirement. That time horizon is
actually your biggest asset here. So you're saying I should just do nothing?
Not exactly nothing, but I am suggesting we don't make dramatic changes based
on short-term market movements. However, I do hear your concern about risk
tolerance. What if we made a smaller adjustment? Instead of going to 20%
stocks, what if we moved to 60% stocks and 40% bonds? That would reduce your
equity exposure by 10%, which might help you sleep better, but wouldn't take
you completely out of the growth potential you need for retirement. That
actually sounds more reasonable, but I'm still worried about losing more
money. I understand completely. Let me ask you this. What's your bigger worry,
the volatility of the next year, two or two, or having enough money to retire
comfortably at 62? Because if we get too conservative now, inflation alone
could erode your purchasing power over the next decade. I didn't really thought
about inflation that way. I guess I've been so focused on not losing money that
I forgot about the money I might not make. Exactly. And remember, Robert,
you're not alone in this. I've had this conversation with many clients over the
past few weeks. The ones who stayed disciplined during previous market
downturns are generally glad they did. What if we also set up a plan where we
review your portfolio monthly for the next few months? That way you'll have
regular check-ins and won't feel like you're just riding this out blindly.
Monthly reviews would definitely help. And maybe the 60-40 split is a good
compromise. I just, I don't want to be stupid about this. Overt, wanting to
protect your retirement isn't stupid. It's exactly what you should be thinking
about. The key is making sure we're protecting it in the right way. Staying
invested in a diversified portfolio, even with some volatility, has
historically been the best way to preserve and grow wealth over time. okay, I
think I can live with moving to 60% stocks, but if things get really bad... If
things get really bad, we'll talk again. That's what I'm here for. And
remember, we'll be reviewing this monthly anyway. You're not locked into
anything forever. But I do want to emphasize that market timing is incredibly
difficult, even for professionals. The goal isn't to avoid all volatility.
It's to stay invested long enough to benefit from the market's long-term
upward trend. All right, Sarah, let's do the rebalancing to 60-40 and I'll try
to stop checking my account balance every day. It sounds like a solid plan,
Robert. And yes, definitely limit the daily balance checking. That's a recipe
for anxiety. I'll send you some research on historical market recoveries after
our call and we'll schedule our first monthly review for next month. How does
that sound? That sounds good. Thanks for talking me through this, Sarah. I feel
a lot better than when I call. I'm so glad to hear that, Robert. Remember,
staying invested requires patience, but your future self will thank you for it.
I'll have the rebalancing done by tomorrow morning, and you should see the
changes reflected in your account by Thursday. Perfect. Thanks again, Sarah. I
thank you deeply for your patience and understanding. I'll talk to you next
month."}
```

Show lessSee more

Scroll to top

### Word-level segmentation with timestamps[¶](#word-level-segmentation-with-timestamps)

Set the timestamp granularity to “word” to extract precise timestamps for every word spoken, enabling searchable,
navigable transcripts. Note that [this audio file](/static/samples/cortex/audio/consultation_3_sp.wav) is in
Spanish.

Copy codeExpand code block

```
SELECT AI_TRANSCRIBE(TO_FILE('@financial_consultation', 'consultation_3_sp.wav'),
    {'timestamp_granularity': 'word'});
```

Response:

Note

The output is truncated for brevity. The full output contains a segment for each word spoken in the audio file.

Expand code block

```
{
    "audio_duration": 150.66,
    "segments": [
        {
            "end": 1.513,
            "start": 0.031,
            "text": "«Buenos"
        },
        {
            "end": 2.034,
            "start": 1.553,
            "text": "días,"
        },
        {
            "end": 2.334,
            "start": 2.054,
            "text": "doña"
        },
        {
            "end": 4.457,
            "start": 2.374,
            "text": "Esperanza."
        },
        {
            "end": 4.597,
            "start": 4.477,
            "text": "¿En"
        },
        {
            "end": 4.857,
            "start": 4.697,
            "text": "qué"
        },
        {
            "end": 5.118,
            "start": 4.917,
            "text": "puedo"
        },
        {
            "end": 5.518,
            "start": 5.178,
            "text": "ayudarla"
        },
        {
            "end": 6.5,
            "start": 5.578,
            "text": "hoy?»"
        },

        ...

        {
            "end": 146.671,
            "start": 146.551,
            "text": "Ya"
        },
        {
            "end": 147.234,
            "start": 146.732,
            "text": "veremos,"
        },
        {
            "end": 147.837,
            "start": 147.355,
            "text": "Roberto."
        },
        {
            "end": 148.581,
            "start": 148.078,
            "text": "Gracias"
        },
        {
            "end": 148.822,
            "start": 148.661,
            "text": "por"
        },
        {
            "end": 149.646,
            "start": 148.902,
            "text": "tu"
        },
        {
            "end": 150.711,
            "start": 150.249,
            "text": "ayuda."
        }
    ],
    "text": "«Buenos días, doña Esperanza. ¿En qué puedo ayudarla hoy?» «Roberto, quiero
    hacer un cambio grande en mi portafolio. Quiero vender todo y compra solo acciones
    de Tesla». «¿Tesla? Doña Esperanza, usted tiene 72 años. ¿Por qué quiere poner todo
    su dinero en una sola compañía?» «¿Por qué Tesla va a ser el futuro?» Un minuto me
    explico que van a dominar los carros eléctricos. Dice que puedo triplicar mi dinero
    en dos años. Entiendo que Tesla es una impresión innovador, pero poner todos sus
    ajuros en una sola acción es muy arriesgado. ¿Qué pasa si Tesla baja? No va a bajar.
    Elon Musk es un genio. Además, mi vecina compró Teslas. Teslas es tres años. Y Aorus
    tiene el doble de dinero. Doña Esperanza, su vecina tuvo suerte, pero las yantes
    individuales pueden ser muy volátiles. Usted necesita dinero estable para sus gastos
    de retiro. Roberto, tengo $400,000 en mi cuenta. Si te la sube como dismi, voy a
    tener más de un año. Podré dejarle más dinero a mi familia. Pero también podría
    perder la mitad de su dinero o más. Te sabía Jairo 60% antes. No puedo recomendarle
    que haga esto. Entonces no me dejas escuchando. Yo sé lo que quiero hacer con mi
    dinero. Es mi decisión. Tienes razón, es su dinero. Pero como su asesor tengo que
    decir que esto es extremamanda peligroso para alguien de su edad. Eva, no importa.
    Quiero tomar este riesgo. Vas a Edom o no. Doña Esperanza, ¿qué tal si compramos
    algo de Tesla perronoto? ¿Podríamos poner 10% en Tesla y el resto en versiones más
    seguras? No, Roberto, quiero el 100% en Tesla. Si no me ayudas, voy a alcanzar otro
    asesor. Que sí lo haga. Está bien, Doña Presanza. Voy a procesar la orden, pero voy
    a documentar que fue contra mi recomendación profesional. Perfecto. Hazlo hoy mismo.
    Quiero compra antes que suba más. Será ahora. Él considera lo que le estoy diciendo.
    Esto puede ser ver muy mal a la vida. Ya veremos, Roberto. Gracias por tu ayuda."
}
```

Show lessSee more

Scroll to top

### Speaker recognition[¶](#speaker-recognition)

Set timestamp granularity to “speaker” to detect, separate, and identify unique speakers in conversations or
meetings. This example uses [an audio file](/static/samples/cortex/audio/consultation_5_mix_es_en.wav) with two
speakers, one speaking English and the other Spanish.

Copy codeExpand code block

```
SELECT AI_TRANSCRIBE(TO_FILE('@financial_consultation', 'consultation_5_mix_es_en.wav'),
    {'timestamp_granularity': 'speaker'});
```

Response:

Note

The output is truncated for brevity. The full output contains a segment for each conversational “turn” in the
audio file.

Expand code block

```
{
    "audio_duration": 208.66,
    "segments": [
        {
            "end": 3.076,
            "speaker_label": "SPEAKER_00",
            "start": 0.031,
            "text": "Good afternoon, this is Aaliyah Johnson from Secure Financial Services."
        },
        {
            "end": 4.297,
            "speaker_label": "SPEAKER_02",
            "start": 3.196,
            "text": "How can I help you today?"
        },
        {
            "end": 7.182,
            "speaker_label": "SPEAKER_02",
            "start": 5.139,
            "text": "Hola, necesito ayuda con mis inversiones."
        },
        {
            "end": 11.528,
            "speaker_label": "SPEAKER_02",
            "start": 7.482,
            "text": "Estoy muy preocupada porque he perdido mucho dinero y no sé qué hacer."
        },
        {
            "end": 14.132,
            "speaker_label": "SPEAKER_02",
            "start": 12.289,
            "text": "I'm sorry, I'm not understanding."
        },
        {
            "end": 15.795,
            "speaker_label": "SPEAKER_02",
            "start": 14.553,
            "text": "Do you speak English?"
        },
        ...
        {
            "end": 189.169,
            "speaker_label": "SPEAKER_02",
            "start": 185.841,
            "text": "Es muy difícil entender estas cosas en inglés."
        },
        {
            "end": 192.326,
            "speaker_label": "SPEAKER_01",
            "start": 190.178,
            "text": "Por supuesto, señora Ramírez."
        },
        {
            "end": 197.145,
            "speaker_label": "SPEAKER_01",
            "start": 192.788,
            "text": "Es muy importante que entienda completamente sus opciones."
        },
        {
            "end": 203.229,
            "speaker_label": "SPEAKER_01",
            "start": 197.165,
            "text": "Voy a hacer los cambios hoy mismo y la llamaré la próxima semana para ver cómo se siente."
        },
        {
            "end": 205.759,
            "speaker_label": "SPEAKER_02",
            "start": 203.891,
            "text": "Muchísimas gracias, María."
        },
        {
            "end": 208.71,
            "speaker_label": "SPEAKER_02",
            "start": 206.18,
            "text": "Me siento mucho más tranquila ahora."
        }
    ],
    "text": "Good afternoon, this is Aaliyah Johnson from Secure Financial Services.
    How can I help you today? Hola, necesito ayuda con mis inversiones. Estoy muy
    preocupada porque he perdido mucho dinero y no sé qué hacer. I'm sorry, I'm not
    understanding. Do you speak English? Un poquito, pero es muy difícil para mí. Aquí
    hay alguien que habla español, ¿ok? Es muy importante. He perdido miles de dólares.
    I'm really sorry, but I don't speak Spanish. Let me see. I think we might have
    someone who speaks Spanish, but they're not available right now. ¿Cuándo pueden
    ayudarme? Necesito hablar con a lguien hoy. Mi esposo está muy enojado y quiere que
    vendamos todo. I understand you need someone who speaks Spanish. Let me check if
    Maria is available. She's our Spanish-speaking advisor. Can you hold for just a
    moment? No entiendo. Mañana. Pero necesito ayuda ahora. ¿No hay nadie más? I am
    going to transfer you to Maria right now. She'll be able to help you with your
    investment concerns. Hola, soy María González. Entiendo que necesita ayuda con sus
    inversiones. ¿Cómo está usted? ¡Ay, qué alivio! Sí, estoy muy preocupada. He
    perdido casi 20.000 dólares en las últimas semanas y mi esposo quiere que vendamos
    todo. Comprendo perfectamente su preocupación, señora Ramírez. Perder dinero es muy
    estresante. Cuénteme un poco más sobre su situación. ¿Qué tipo de inversiones
    tiene? Tengo fondos mutuos y algunas acciones. Todo está bajando mucho. Mi esposo
    dice que es mejor tener el dinero en el banco, pero yo no estoy segura. Es natural
    sentirse nerviosa cuando el mercado está volátil. Pero antes de tomar decisiones
    importantes, vamos a revisar su situación completa. ¿Cuántos años tiene usted y
    cuándo planea retirarse? Tengo 55 años y quiero retirarme a los 65, pero con estas
    pérdidas no sé si voy a poder. Señora Ramírez, usted todavía tiene 10 años hasta el
    retiro. Eso es tiempo suficiente para que sus inversiones se recuperen. El mercado
    siempre tiene altibajos, pero históricamente se ha recuperado. ¿Pero qué pasa si no
    se recupera esta vez? No puedo perder más dinero. Entiendo su miedo. ¿Qué le parece
    si hacemos algunos ajustes para que se sienta más cómoda? Podemos mover parte de su
    dinero a inversiones más conservadoras, como bonos. Eso suena mejor. No quiero
    arriesgar todo, pero tampoco quiero perder la oportunidad de crecer mi dinero.
    Perfecto. Vamos a encontrar un equilibrio. ¿Qué tal si movemos el 40% de sus
    acciones a bonos? Así tendrá menos riesgo, pero todavía podrá crecer su dinero para
    el retiro. Sí, eso me hace sentir mucho mejor. Gracias por explicarme todo en
    español. Es muy difícil entender estas cosas en inglés. Por supuesto, señora
    Ramírez. Es muy importante que entienda completamente sus opciones. Voy a hacer los
    cambios hoy mismo y la llamaré la próxima semana para ver cómo se siente. Muchísimas
    gracias, María. Me siento mucho más tranquila ahora."
}
```

Show lessSee more

Scroll to top

### Call transcript analysis[¶](#call-transcript-analysis)

You can pass the output of AI\_TRANSCRIBE to other AI Functions for further processing. For example, you can use
AI\_SUMMARIZE to summarize the transcription, or AI\_CLASSIFY to classify the content of the transcription. This
example uses AI\_SENTIMENT and AI\_COMPLETE to analyze the text transcribed from
[customer call audio](/static/samples/cortex/audio/consultation_1.wav) and provide sentiment on four dimensions
and an assessment of the agent.

Note

AI\_SENTIMENT analyzes only text and does not consider speech characteristics like tone of voice.

Copy codeExpand code block

```
WITH transcriptions AS
    ( SELECT TO_VARCHAR(AI_TRANSCRIBE(TO_FILE('@financial_consultation',
        'consultation_1.wav'))) AS transcribed_call )
SELECT
    AI_SENTIMENT(transcribed_call, ['Professionalism', 'Resolution',
        'Wait Time', 'Market Conditions']) AS call_sentiment,
    AI_COMPLETE('claude-4-opus', CONCAT('Summarize how the agent can improve in 50 words',
        transcribed_call)) AS agent_assessment
FROM transcriptions
```

AI\_SENTIMENT response:

Expand code block

```
{
    "categories": [
        {
            "name": "overall",
            "sentiment": "negative"
        },
        {
            "name": "Market Conditions",
            "sentiment": "negative"
        },
        {
            "name": "Professionalism",
            "sentiment": "negative"
        },
        {
            "name": "Resolution",
            "sentiment": "negative"
        },
        {
            "name": "Wait Time",
            "sentiment": "unknown"
        }
    ]
}
```

Show lessSee more

Scroll to top

AI\_COMPLETE response:

Expand code block

```
"The agent needs significant improvement in empathy, active listening, and client-centered communication. Instead of
dismissing concerns and using condescending language, they should validate emotions, explain market conditions
professionally, present multiple options, and guide clients through informed decision-making while respecting their
risk tolerance and personal circumstances."
```

## Troubleshooting[¶](#troubleshooting)

If the function fails, it raises an error. Common error messages include:

| Error Message | Situation and Solution |
| --- | --- |
| Invalid options object | The option provided for the `timestamp_granularity` field, if provided, must be “word” or “speaker”. |
| No response from server | The audio file cannot be retrieved, perhaps because of an expired scoped URL. |
| File too large. Maximum size is 734,003,200 Bytes, file exceeds this limit. | The provided audio file exceeds the maximum file size. |
| Invalid file format. Only [‘flac’, ‘mp3’, ‘ogg’, ‘wav’, ‘webm’] files are supported, or WebM file does not contain an audio stream. | The audio file is not one of the supported formats, which are listed in the error message. WebM files support multiple media types, so make sure the file contains an audio stream. If the file is in a supported format, check that it is not corrupted. |
| File will be too large after resampling it to 16000 Hertz. Expected size is 3,355,444,448,000.0 Bytes. | The provided audio file is too large after resampling to 16 KHz. If the provided audio has a lower sample rate, its resampled size is larger than the original, and could potentially exceed the maximum allowed file size. |
| Audio duration too long: 6052.10 seconds. Maximum allowed: 3600 seconds. or Audio duration too long: 7335.28 seconds. Maximum allowed: 7200 seconds. | The provided audio file is too long. If you are using timestamp granularity, the maximum duration is 60 minutes (3600 seconds). |
| Unsupported detected language | The audio file contains a language that is not supported by AI\_TRANSCRIBE. |

Expand

Show lessSee more

## Regional availability[¶](#regional-availability)

AI\_TRANSCRIBE is available in the following regions:

* AWS US West 2 (Oregon)
* AWS US East 1 (N. Virginia)
* AWS EU Central 1 (Frankfurt)
* Azure East US 2 (Virginia)

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
5. [Access control requirements](#access-control-requirements)
6. [Usage notes](#usage-notes)
7. [Supported languages](#supported-languages)
8. [Cost considerations](#cost-considerations)
9. [Examples](#examples)
10. [Troubleshooting](#troubleshooting)
11. [Regional availability](#regional-availability)
12. [Legal notices](#legal-notices)

Related content

1. [Cortex AI Functions: Multimodal](/user-guide/snowflake-cortex/ai-multimodal)