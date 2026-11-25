# DROP AGENT

Removes the specified [Cortex Agent](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agents) with the specified name from the current or specified database and schema.

See also:
:   [ALTER AGENT](https://docs.snowflake.com/sql-reference/sql/alter-agent), [CREATE AGENT](https://docs.snowflake.com/sql-reference/sql/create-agent), [DESCRIBE AGENT](https://docs.snowflake.com/sql-reference/sql/desc-agent), [SHOW AGENTS](https://docs.snowflake.com/sql-reference/sql/show-agents), [UNDROP AGENT](https://docs.snowflake.com/sql-reference/sql/undrop-agent), [DATA_AGENT_RUN (SNOWFLAKE.CORTEX)](https://docs.snowflake.com/sql-reference/functions/data_agent_run-snowflake-cortex)

## Syntax

```
DROP AGENT [ IF EXISTS ] <name>
```

## Parameters

`name`
:   Specifies the identifier for the Cortex Agent to be dropped.

    If the identifier contains spaces or special characters, the entire string must be enclosed in double quotes.
    Identifiers enclosed in double quotes are also case-sensitive.

    For more information, see [Identifier requirements](https://docs.snowflake.com/sql-reference/identifiers-syntax).

## Access control requirements

A [role](https://docs.snowflake.com/user-guide/security-access-control-overview#label-access-control-overview-roles) used to execute this SQL command must have at least one of the following
[privileges](https://docs.snowflake.com/user-guide/security-access-control-overview#label-access-control-overview-privileges) at a minimum:

| Privilege | Object | Notes |
| --- | --- | --- |
| Any one of these privileges: OWNERSHIP or MODIFY | Agent |  |

Operating on an object in a schema requires at least one privilege on the parent database and at least one privilege on the parent schema.

For instructions on creating a custom role with a specified set of privileges, see [Creating custom roles](https://docs.snowflake.com/user-guide/security-access-control-configure#label-security-custom-role).

For general information about roles and privilege grants for performing SQL actions on
[securable objects](https://docs.snowflake.com/user-guide/security-access-control-overview#label-access-control-securable-objects), see [Overview of Access Control](https://docs.snowflake.com/user-guide/security-access-control-overview).

## Usage notes

* When the IF EXISTS clause is specified and the target object doesn’t exist, the command completes successfully
  without returning an error.

* You can restore a dropped agent with [UNDROP AGENT](https://docs.snowflake.com/sql-reference/sql/undrop-agent) within the
  [Time Travel](https://docs.snowflake.com/user-guide/data-time-travel) retention period.

## Examples

The following example drops the agent named `my_agent` in the current schema:

```
DROP AGENT my_agent;
```

The following example drops the agent named `my_agent` in the `mydb` database and `myschema` schema. This command fails if the agent does not exist:

```
DROP AGENT mydb.myschema.my_agent;
```

The following example drops the agent named `my_agent` in the `mydb` database and `myschema` schema only if it exists:

```
DROP AGENT IF EXISTS mydb.myschema.my_agent;
```
