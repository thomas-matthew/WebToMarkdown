# Cortex Agents REST API

Note

Requests to the Cortex Agent REST API time out after 15 minutes.

You can use the Cortex Agent REST API to create, manage, and interact with Cortex Agent Objects in your Snowflake account.

## Private connectivity (PrivateLink)

If your account uses [private connectivity](https://docs.snowflake.com/user-guide/private-connectivity-inbound), clients outside Snowflake can send Cortex Agents REST API requests to your account’s private connectivity URL. To get the host names to add to your private DNS, call [SYSTEM$ALLOWLIST_PRIVATELINK](https://docs.snowflake.com/sql-reference/functions/system_allowlist_privatelink).

Note

Code that runs inside Snowflake, such as stored procedures, can’t call the REST API through a private connectivity URL; such requests return HTTP 404. Use [DATA_AGENT_RUN](https://docs.snowflake.com/sql-reference/functions/data_agent_run-snowflake-cortex) instead.

## Create Cortex Agent

`POST /api/v2/databases/{database}/schemas/{schema}/agents`

Creates a new Cortex Agent Object with the specified attributes and specification.

### Request

#### Path parameters

| Parameter | Description |
| --- | --- |
| `database` | (Required) Identifier for the database to which the resource belongs. |
| `schema` | (Required) Schema identifier. |

#### Query parameters

| Parameter | Description |
| --- | --- |
| `createMode` | (Optional) Resource creation mode. Valid values:  * `errorIfExists` * `orReplace` * `ifNotExists` |

#### Request headers

| Header | Description |
| --- | --- |
| `Authorization` | (Required) Authorization token. For more information, see [Authentication](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-setup#label-chat-api-authenticate-example). |
| `Content-Type` | (Required) application/json |

#### Request body

| Field | Type | Description |
| --- | --- | --- |
| `name` | string | Name of the agent. |
| `comment` | string | Optional comment about the agent. |
| `profile` | [AgentProfile](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-agentprofile) | Agent profile information (display name, avatar, color, etc.). |
| `models` | [ModelConfig](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-modelconfig) | Model configuration for the agent. Includes the orchestration model (e.g., claude-4-sonnet). If not provided, a model is automatically selected. Currently only available for the `orchestration` step. |
| `instructions` | [AgentInstructions](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-agentinstructions) | Instructions for the agent’s behavior, including response, orchestration, and sample questions. |
| `orchestration` | [OrchestrationConfig](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-orchestrationconfig) | Orchestration configuration, including budget constraints (e.g., seconds, tokens). |
| `tools` | array of [Tool](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-tool) | List of tools available for the agent to use. Each tool includes a tool_spec with type, name, description, and input schema. Tools may have a corresponding configuration in tool_resources. |
| `tool_resources` | map of [ToolResource](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-toolresource) | Configuration for each tool referenced in the tools array. Each key must equal the name of the corresponding tool. |
| `thinking_effort` | string | Controls the reasoning effort used by the orchestration model. Higher effort can improve complex-task quality at the cost of latency and tokens. When omitted, the service selects the appropriate default. |

**Example**

```
{
  "name": "MY_AGENT",
  "comment": "An agent to answer questions about all my data",
  "profile": {
    "display_name": "My Agent"
  },
  "models": {
    "orchestration": "claude-4-sonnet"
  },
  "instructions": {
    "response": "You will respond in a friendly but concise manner",
    "orchestration": "For any query related to revenue we should use Analyst; For all policy questions we should use Search",
    "system": "You are a friendly agent ..."
  },
  "orchestration": {
    "budget": {
      "seconds": 30,
      "tokens": 16000
    },
    "capabilities": {
      "analytical_search": true
    }
  },
  "tools": [
    {
      "tool_spec": {
        "type": "generic",
        "name": "get_revenue",
        "description": "Fetch the delivery revenue for a location.",
        "input_schema": {
          "type": "object",
          "properties": {
            "location": {
              "type": "string",
              "description": "The city and state, e.g. San Francisco, CA"
            }
          }
        },
        "required": [
          "location"
        ]
      }
    }
  ],
  "tool_resources": {
    "get_revenue": {
      "type": "function",
      "execution_environment": {
        "type": "warehouse",
        "warehouse": "MY_WH"
      },
      "identifier": "DB.SCHEMA.UDF"
    }
  },
  "thinking_effort": "high"
}
```

### Response

A successful response returns a JSON object with details about the status of Cortex Agent creation.

#### Response body

```
{"status": "Agent xxxx successfully created."}
```

## Describe Cortex Agent

`GET /api/v2/databases/{database}/schemas/{schema}/agents/{name}`

Describes a Cortex Agent.

### Request

#### Path parameters

| Parameter | Description |
| --- | --- |
| `database` | (Required) Identifier for the database to which the resource belongs. You can use the /api/v2/databases GET request to get a list of available databases. |
| `schema` | (Required) Identifier for the schema to which the resource belongs. You can use the /api/v2/databases/{database}/schemas GET request to get a list of available schemas for the specified database. |
| `name` | (Required) Identifier for the agent. |

#### Request headers

| Header | Description |
| --- | --- |
| `Authorization` | (Required) Authorization token. For more information, see [Authentication](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-setup#label-chat-api-authenticate-example). |
| `Content-Type` | (Required) application/json |

### Response

A successful response returns a JSON object describing the Cortex Agent.

#### Response headers

| Header | Description |
| --- | --- |
| `X-Snowflake-Request-ID` | Unique ID of the API request. |
| `Link` | Links to the page of results (e.g. the first page, the last page, etc.). The header can include multiple url entries with different rel attribute values that specify the page to return (first, next, prev, and last). |

#### Response body

The response body contains the details of the Cortex Agent.

```
{
  "agent_spec": "{\"models\":{\"orchestration\":\"auto\"},\"experimental\":{\"foo\":\"bar\",\"nested\":{\"key\":\"value\"}},\"orchestration\":{\"budget\":{\"seconds\":30,\"tokens\":16000}},\"instructions\":{\"response\":\"You will respond in a friendly but concise manner\",\"orchestration\":\"For any revenue question use Analyst; for policy use Search\",\"sample_questions\":[{\"question\":\"question 1\"},{\"question\":\"question 2\"},{\"question\":\"question 3\"}]},\"tools\":[{\"tool_spec\":{\"type\":\"cortex_analyst_text_to_sql\",\"name\":\"Analyst1\",\"description\":\"test\"}},{\"tool_spec\":{\"type\":\"cortex_search\",\"name\":\"Search1\"}},{\"tool_spec\":{\"type\":\"web_search\",\"name\":\"web_search_1\"}},{\"tool_spec\":{\"type\":\"generic\",\"name\":\"get_weather\",\"input_schema\":{\"type\":\"object\",\"properties\":{\"location\":{\"type\":\"string\",\"description\":\"The city and state\"}},\"required\":[\"location\"]}}}],\"tool_resources\":{\"Analyst1\":{\"semantic_view\":\"db.schema.semantic_view\",\"execution_environment\":{\"type\":\"warehouse\",\"warehouse\":\"my_warehouse\",\"query_timeout\":30}},\"Search1\":{\"search_service\":\"db.schema.service_name\",\"max_results\":5,\"filter\":{\"@eq\":{\"region\":\"North America\"}},\"title_column\":\"<title_name>\",\"id_column\":\"<column_name>\"},\"web_search_1\":{\"max_results\":20}}}",
  "name": "MY_AGENT1",
  "database_name": "TEST_DATABASE",
  "schema_name": "TEST_SCHEMA",
  "owner": "ACCOUNTADMIN",
  "created_on": "1967-06-23T07:00:00.123+00:00"
}
```

The `agent_spec` field is a string that contains the agent specification as serialized JSON. The specification uses the same structure as the `FROM SPECIFICATION` clause of [CREATE AGENT](https://docs.snowflake.com/sql-reference/sql/create-agent).

## Update Cortex Agent

`PUT /api/v2/databases/{database}/schemas/{schema}/agents/{name}`

Updates an existing Cortex Agent with the specified attributes and specification.

### Request

#### Path parameters

| Parameter | Description |
| --- | --- |
| `database` | (Required) Identifier for the database to which the resource belongs. You can use the */api/v2/databases* GET request to get a list of available databases. |
| `schema` | (Required) Schema identifier. You can use the */api/v2/databases/{database}/schemas* GET request to get a list of available schemas for the specified database. |
| `name` | (Required) Name of the agent. |

#### Request headers

| Header | Description |
| --- | --- |
| `Authorization` | (Required) Authorization token. For more information, see [Authentication](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-setup#label-chat-api-authenticate-example). |
| `Content-Type` | (Required) application/json |

#### Request body

| Field | Type | Description |
| --- | --- | --- |
| `comment` | string | Optional comment about the agent. |
| `profile` | [AgentProfile](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-agentprofile) | Agent profile information (display name, avatar, color, etc.). |
| `models` | [ModelConfig](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-modelconfig) | Model configuration for the agent. Includes the orchestration model (e.g., claude-4-sonnet). If not provided, a model is automatically selected. Currently only available for the `orchestration` step. |
| `instructions` | [AgentInstructions](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-agentinstructions) | Instructions for the agent’s behavior, including response, orchestration, and sample questions. |
| `orchestration` | [OrchestrationConfig](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-orchestrationconfig) | Orchestration configuration, including budget constraints (e.g., seconds, tokens). |
| `tools` | array of [Tool](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-tool) | List of tools available for the agent to use. Each tool includes a tool_spec with type, name, description, and input schema. Tools may have a corresponding configuration in tool_resources. |
| `tool_resources` | map of [ToolResource](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-toolresource) | Configuration for each tool referenced in the tools array. Each key must equal the name of the corresponding tool. |
| `thinking_effort` | string | Controls the reasoning effort used by the orchestration model. Higher effort can improve complex-task quality at the cost of latency and tokens. When omitted, the service selects the appropriate default. |

**Example**

```
{
  "comment": "An agent to answer questions about all my data",
  "profile": {
    "display_name": "My Agent"
  },
  "models": {
    "orchestration": "claude-4-sonnet"
  },
  "instructions": {
    "response": "You will respond in a friendly but concise manner",
    "orchestration": "For any query related to revenue we should use Analyst; For all policy questions we should use Search",
    "system": "You are a friendly agent ..."
  },
  "orchestration": {
    "budget": {
      "seconds": 30,
      "tokens": 16000
    },
    "capabilities": {
      "analytical_search": true
    }
  },
  "tools": [
    {
      "tool_spec": {
        "type": "generic",
        "name": "get_revenue",
        "description": "Fetch the delivery revenue for a location.",
        "input_schema": {
          "type": "object",
          "properties": {
            "location": {
              "type": "string",
              "description": "The city and state, e.g. San Francisco, CA"
            }
          }
        },
        "required": [
          "location"
        ]
      }
    }
  ],
  "tool_resources": {
    "get_revenue": {
      "type": "function",
      "execution_environment": {
        "type": "warehouse",
        "warehouse": "MY_WH"
      },
      "identifier": "DB.SCHEMA.UDF"
    }
  },
  "thinking_effort": "high"
}
```

### Response

A successful response returns a JSON object with details about the status of Cortex Agent update.

#### Response body

```
{"status": "Agent xxxx successfully updated."}
```

## List Cortex Agents

`GET /api/v2/databases/{database}/schemas/{schema}/agents`

Lists the Cortex Agents under the specified database and schema.

### Request

#### Path parameters

| Parameter | Description |
| --- | --- |
| `database` | (Required) Identifier for the database to which the resource belongs. You can use the /api/v2/databases GET request to get a list of available databases. |
| `schema` | (Required) Identifier for the schema to which the resource belongs. You can use the /api/v2/databases/{database}/schemas GET request to get a list of available schemas for the specified database. |

#### Query parameters

| Parameter | Description |
| --- | --- |
| `like` | (Optional) Filter the output by resource name. Uses case-insensitive pattern matching with support for SQL wildcard characters. |
| `fromName` | (Optional) Enable fetching rows only following the first row whose object name matches the specified string. Case-sensitive and does not have to be the full name. |
| `showLimit` | (Optional) Limit the maximum number of rows returned by the command. Minimum: 1. Maximum: 10000. |

#### Request headers

| Header | Description |
| --- | --- |
| `Authorization` | (Required) Authorization token. For more information, see [Authentication](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-setup#label-chat-api-authenticate-example). |
| `Content-Type` | (Required) application/json |

### Response

A successful response returns a JSON array of Cortex Agent resources.

#### Response headers

| Header | Description |
| --- | --- |
| `X-Snowflake-Request-ID` | Unique ID of the API request. |
| `Link` | Links to the page of results (e.g. the first page, the last page, etc.). The header can include multiple url entries with different rel attribute values that specify the page to return (first, next, prev, and last). |

#### Response body

```
[
 {
  "name": "my_agent",
  "database": "TEST_DB",
  "schema": "TEST_SCHEMA",
  "created_on": "2024-06-01T12:00:00Z",
  "owner": "ACCOUNTADMIN",
  "comment": "Sample agent",
  "profile": {"display_name": "My Agent", "avatar": null, "color": null}
 },
 {
  "name": "another_agent",
  "database": "TEST_DB",
  "schema": "TEST_SCHEMA",
  "created_on": "2024-06-02T08:30:00Z",
  "owner": "SYSADMIN",
  "comment": "",
  "profile": {"display_name": "Another Agent", "avatar": null, "color": null}
 }
]
```

## Delete Cortex Agent

`DELETE /api/v2/databases/{database}/schemas/{schema}/agents/{name}`

Deletes a Cortex Agent with the specified name. If the `ifExists` parameter is set to `true`, the operation succeeds even if the agent does not exist. Otherwise, the operation fails if the agent cannot be deleted.

### Request

#### Path parameters

| Parameter | Description |
| --- | --- |
| `database` | (Required) Identifier for the database to which the resource belongs. You can use the /api/v2/databases GET request to get a list of available databases. |
| `schema` | (Required) Identifier for the schema to which the resource belongs. You can use the /api/v2/databases/{database}/schemas GET request to get a list of available schemas for the specified database. |
| `name` | (Required) Identifier for the agent. |

#### Query parameters

| Parameter | Description |
| --- | --- |
| `ifExists` | (Optional) Specifies how to handle the request if the agent does not exist.   * `true`: The endpoint does not throw an error if the agent does not exist. It returns a 200 success response, but does not take any action. * `false`: The endpoint throws an error if the agent does not exist. |

#### Request headers

| Header | Description |
| --- | --- |
| `Authorization` | (Required) Authorization token. For more information, see [Authentication](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-setup#label-chat-api-authenticate-example). |
| `Content-Type` | (Required) application/json |

### Response

A successful response returns a confirmation message.

#### Response body

```
{
 "status": "Request successfully completed"
}
```

## Schemas

The `OrchestrationConfig` schema documents `budget`. The same object also accepts `tool_not_accessible` (`accept`, `reject`, or `legacy`) to control whether a missing tool privilege aborts the run. Set that field on the agent specification’s top-level `orchestration` object, which uses this schema. Don’t confuse it with `models.orchestration` (the orchestration model name) or `instructions.orchestration` (natural-language instructions). For behavior, defaults, and which tools Snowflake checks, see [Where to set the field](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-inaccessible-tool-handling#label-cortex-agents-inaccessible-tool-where-to-set).

# `AgentInstructions`

| Field | Type | Description |
| --- | --- | --- |
| `response` | string | Instructions for response generation. |
| `orchestration` | string | These custom instructions are used when the agent is planning which tools to use. |
| `system` | string | System instructions for the agent. |

**Example**

```
{
  "response": "You will respond in a friendly but concise manner",
  "orchestration": "For any query related to revenue we should use Analyst; For all policy questions we should use Search",
  "system": "You are a friendly agent ..."
}
```

## `AgentProfile`

The profile information for a Data Cortex agent.

| Field | Type | Description |
| --- | --- | --- |
| `display_name` | string | Display name for the agent. |

**Example**

```
{
  "display_name": "My Agent"
}
```

## `BudgetConfig`

| Field | Type | Description |
| --- | --- | --- |
| `seconds` | integer | Time budget in seconds. |
| `tokens` | integer | Token budget. |

**Example**

```
{
  "seconds": 30,
  "tokens": 16000
}
```

## `CapabilitiesConfig`

| Field | Type | Description |
| --- | --- | --- |
| `analytical_search` | boolean | If true, enables analytical search. |

**Example**

```
{
  "analytical_search": true
}
```

## `ExecutionEnvironment`

Configuration for server-executed tools.

| Field | Type | Description |
| --- | --- | --- |
| `type` | string | The type of execution environment, currently only `warehouse` is supported. |
| `warehouse` | string | The name of the warehouse. Case-sensitive; if it is an unquoted identifier, provide the name in all-caps. If not specified, the user’s default warehouse is used. |
| `query_timeout` | integer | The query timeout in seconds |

**Example**

```
{
  "type": "warehouse",
  "warehouse": "MY_WAREHOUSE",
  "query_timeout": 60
}
```

## `ModelConfig`

| Field | Type | Description |
| --- | --- | --- |
| `orchestration` | string | Model to use for orchestration. If not provided, a model is automatically selected. |

**Example**

```
{
  "orchestration": "claude-4-sonnet"
}
```

## `OrchestrationConfig`

| Field | Type | Description |
| --- | --- | --- |
| `budget` | [BudgetConfig](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-budgetconfig) | Budget constraints for the agent. If more than one constraint is specified, whichever is first hit will end the request. |
| `capabilities` | [CapabilitiesConfig](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-capabilitiesconfig) | Capabilities to enable for the agent. |

**Example**

```
{
  "budget": {
    "seconds": 30,
    "tokens": 16000
  },
  "capabilities": {
    "analytical_search": true
  }
}
```

## `Tool`

Defines a tool that can be used by the agent. Tools provide specific capabilities like data analysis, search, or generic functions.

| Field | Type | Description |
| --- | --- | --- |
| `tool_spec` | [ToolSpec](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-toolspec) | Specification of the tool’s type, configuration, and input requirements. |

**Example**

```
{
  "tool_spec": {
    "type": "generic",
    "name": "get_revenue",
    "description": "Fetch the delivery revenue for a location.",
    "input_schema": {
      "type": "object",
      "properties": {
        "location": {
          "type": "string",
          "description": "The city and state, e.g. San Francisco, CA"
        }
      }
    },
    "required": [
      "location"
    ]
  }
}
```

## `ToolInputSchema`

| Field | Type | Description |
| --- | --- | --- |
| `type` | string | The type of the input schema object. |
| `description` | string | A description of what the input is. |
| `properties` | map of [ToolInputSchema](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-toolinputschema) | If type is `object`, definitions of each input parameter. |
| `items` | [ToolInputSchema](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-toolinputschema) | If type is `array`, the schema for the elements of the array. |
| `required` | array of string | If type is `object`, list of required input parameter names. |

**Example**

```
{
  "type": "object",
  "description": "Input for my custom tool",
  "properties": {
    "location": {
      "type": "string",
      "description": "The city and state, e.g. San Francisco, CA"
    }
  },
  "items": {},
  "required": [
    "location"
  ]
}
```

## `ToolResource`

> cortex_analyst_text_to_sqlcortex_searchgenericweb_search
>
> Configuration for text-to-SQL analysis tool. Provides parameters for SQL query generation and execution. Exactly one of semantic_model_file or semantic_view must be provided.
>
> | Field | Type | Description |
> | --- | --- | --- |
> | `semantic_model_file` | string | The path to a file stored in a Snowflake Stage holding the semantic model yaml. |
> | `semantic_view` | string | The name of the Snowflake native semantic model object. |
> | `execution_environment` | [ExecutionEnvironment](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-executionenvironment) | Configuration for how to execute the generated SQL query. |
>
> **Example**
>
> ```
> {
>   "semantic_model_file": "@db.schema.stage/semantic_model.yaml",
>   "semantic_view": "db.schema.semantic_view",
>   "execution_environment": {
>     "type": "warehouse",
>     "warehouse": "MY_WAREHOUSE",
>     "query_timeout": 60
>   }
> }
> ```
>
> Configuration for search functionality. Defines how document search and retrieval should be performed.
>
> | Field | Type | Description |
> | --- | --- | --- |
> | `search_service` | string | The fully qualified name of the search service. |
> | `title_column` | string | The title column of the document. |
> | `id_column` | string | The ID column of the document. |
> | `filter` | object | Filter query for search results. |
>
> **Example**
>
> ```
> {
>   "search_service": "database.schema.service_name",
>   "title_column": "account_name",
>   "id_column": "account_id",
>   "filter": {
>     "@eq": {
>       "<column>": "<value>"
>     }
>   }
> }
> ```
>
> | Field | Type | Description |
> | --- | --- | --- |
> | `type` | string | If the tool is server-side executed, whether it is a Stored Procedure or a UDF. |
> | `execution_environment` | [ExecutionEnvironment](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-executionenvironment) |  |
> | `identifier` | string | Fully qualified name of the Stored Procedure or UDF. |
>
> **Example**
>
> ```
> {
>   "type": "function",
>   "execution_environment": {
>     "type": "warehouse",
>     "warehouse": "MY_WAREHOUSE",
>     "query_timeout": 60
>   },
>   "identifier": "MY_DB.MY_SCHEMA.MY_UDF"
> }
> ```
>
> Configuration for web search functionality.
>
> | Field | Type | Description |
> | --- | --- | --- |
> | `max_results` | integer | Max web search results returned. |
>
> **Example**
>
> ```
> {
>   "max_results": 20
> }
> ```

## `ToolSpec`

Specification of the tool’s type, configuration, and input requirements.

| Field | Type | Description |
| --- | --- | --- |
| `type` | string | The type of tool capability. Can be specialized types like ‘cortex_analyst_text_to_sql’ or ‘generic’ for general-purpose tools. |
| `name` | string | Unique identifier for referencing this tool instance. Used to match with configuration in tool_resources. |
| `description` | string | Description of the tool to be considered for tool use. |
| `input_schema` | [ToolInputSchema](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agents-rest-api#label-snowflake-agent-object-toolinputschema) | JSON Schema definition of the expected input parameters for this tool. This will be fed to the agent so it knows the structure it should follow for when generating the input for ToolUses. Required for generic tools to specify their input parameters. |

**Example**

```
{
  "type": "generic",
  "name": "get_weather",
  "description": "lorem ipsum",
  "input_schema": {
    "type": "object",
    "properties": {
      "location": {
        "type": "string",
        "description": "The city and state, e.g. San Francisco, CA"
      }
    },
    "required": [
      "location"
    ]
  }
}
```
