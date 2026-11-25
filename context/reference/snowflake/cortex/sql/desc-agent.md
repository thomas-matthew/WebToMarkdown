# DESCRIBE AGENT

Describes the properties of a [Cortex Agent](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents).

DESCRIBE can be abbreviated to DESC.

See also:
:   [ALTER AGENT](https://docs.snowflake.com/sql-reference/sql/alter-agent), [CREATE AGENT](https://docs.snowflake.com/sql-reference/sql/create-agent), [DROP AGENT](https://docs.snowflake.com/sql-reference/sql/drop-agent), [SHOW AGENTS](https://docs.snowflake.com/sql-reference/sql/show-agents), [UNDROP AGENT](https://docs.snowflake.com/sql-reference/sql/undrop-agent), [DATA_AGENT_RUN (SNOWFLAKE.CORTEX)](https://docs.snowflake.com/sql-reference/functions/data_agent_run-snowflake-cortex)

## Syntax

```
{ DESC | DESCRIBE } [ AS RESOURCE ] AGENT <name>
```

## Parameters

`AS RESOURCE`
:   Returns the agent definition as a resource in JSON format, rather than as the columns described in
    Output.

`name`
:   Specifies the name for the agent to describe.

    If the identifier contains spaces or special characters, the entire string must be enclosed in double quotes.
    Identifiers enclosed in double quotes are also case-sensitive.

    For more information, see [Identifier requirements](https://docs.snowflake.com/sql-reference/identifiers-syntax).

## Output

The command output provides Cortex Agent properties and metadata in the following columns:

| Column | Description |
| --- | --- |
| `name` | Name of the agent. |
| `database_name` | Database containing the agent. |
| `schema_name` | Schema containing the agent. |
| `owner` | Owner role of the agent. |
| `comment` | Comment text for the agent. |
| `profile` | Agent profile JSON (display_name, avatar, color). |
| `agent_spec` | Complete JSON specification of the agent. For a [secure agent](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-secure), this column returns NULL when the owner role is not activated in the session. |
| `created_on` | Timestamp when the agent was created. |

## Access control requirements

A [role](https://docs.snowflake.com/user-guide/security-access-control-overview#label-access-control-overview-roles) used to execute this SQL command must have at least one of the following
[privileges](https://docs.snowflake.com/user-guide/security-access-control-overview#label-access-control-overview-privileges) at a minimum:

| Privilege | Object | Notes |
| --- | --- | --- |
| Any one of these privileges: OWNERSHIP, USAGE, MODIFY, or MONITOR | Agent |  |

Operating on an object in a schema requires at least one privilege on the parent database and at least one privilege on the parent schema.

For instructions on creating a custom role with a specified set of privileges, see [Creating custom roles](https://docs.snowflake.com/user-guide/security-access-control-configure#label-security-custom-role).

For general information about roles and privilege grants for performing SQL actions on
[securable objects](https://docs.snowflake.com/user-guide/security-access-control-overview#label-access-control-securable-objects), see [Overview of Access Control](https://docs.snowflake.com/user-guide/security-access-control-overview).

## Usage notes

* To post-process the output of this command, you can use the [pipe operator](https://docs.snowflake.com/sql-reference/operators-flow)
  (`->>`) or the [RESULT_SCAN](https://docs.snowflake.com/sql-reference/functions/result_scan) function. Both constructs treat the output as a
  result set that you can query.

  For example, you can use the pipe operator or RESULT_SCAN function to select specific columns from the SHOW
  command output or filter the rows.

  When you refer to the output columns, use [double-quoted identifiers](https://docs.snowflake.com/sql-reference/identifiers-syntax#label-delimited-identifier) for
  the column names. For example, to select the output column `type`, specify `SELECT "type"`.

  You must use double-quoted identifiers because the output column names for SHOW commands are in lowercase.
  The double quotes ensure that the column names in the SELECT list or WHERE clause match the column names
  in the SHOW command output that was scanned.

* For secure agents, `agent_spec` is redacted (NULL) for non-owner sessions. The agent name, owner, profile, and other metadata columns remain visible. See [Secure agents](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents-secure).

## Examples

Describe a Cortex Agent named `my_agent` in the `mydb` database and `myschema` schema:

```
DESCRIBE AGENT mydb.myschema.my_agent;
```

The statement in the example prints the following output:

```
+----------+---------------+-------------+-----------+---------+-------------------------+------------+-------------------------------+
| name     | database_name | schema_name | owner     | comment | profile                 | agent_spec | created_on                    |
|----------+---------------+-------------+-----------+---------+-------------------------+------------+-------------------------------|
| MY_AGENT | MYDB          | MYSCHEMA    | TEST_ROLE | NULL    | {"display_name":"test"} | "{\"models\":{\"orchestration\":\"auto\"},\"orchestration\":{\"budget\":{\"seconds\":30,\"tokens\":16000}},\"instructions\":{\"response\":\"You will respond in a friendly but concise manner\",\"orchestration\":\"For any revenue question use Analyst; for policy use Search\",\"system\":\"You are a friendly agent.\",\"sample_questions\":[{\"question\":\"question 1\"},{\"question\":\"question 2\"},{\"question\":\"question 3\"}]},\"tools\":[{\"tool_spec\":{\"type\":\"cortex_analyst_text_to_sql\",\"name\":\"Analyst1\",\"description\":\"test\"}},{\"tool_spec\":{\"type\":\"cortex_search\",\"name\":\"Search1\"}},{\"tool_spec\":{\"type\":\"web_search\",\"name\":\"web_search_1\"}},{\"tool_spec\":{\"type\":\"generic\",\"name\":\"get_weather\",\"input_schema\":{\"type\":\"object\",\"properties\":{\"location\":{\"type\":\"string\",\"description\":\"The city and state\"}},\"required\":[\"location\"]}}}],\"tool_resources\":{\"Analyst1\":{\"semantic_view\":\"db.schema.semantic_view\",\"execution_environment\":{\"type\":\"warehouse\",\"warehouse\":\"my_warehouse\",\"query_timeout\":30}},\"Search1\":{\"search_service\":\"db.schema.service_name\",\"max_results\":5,\"filter\":{\"@eq\":{\"region\":\"North America\"}},\"title_column\":\"<title_name>\",\"id_column\":\"<column_name>\"},\"web_search_1\":{\"max_results\":20}}}" | 2025-09-15 17:04:37.263 +0000 |
+----------+---------------+-------------+-----------+---------+-------------------------+------------+-------------------------------+
```

The following example describes an agent in the current schema:

```
DESCRIBE AGENT my_agent;
```

The following example describes the agent as a resource in JSON format:

```
DESCRIBE AS RESOURCE AGENT my_agent;
```
