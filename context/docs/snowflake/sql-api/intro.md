# Introduction to the SQL API

The Snowflake SQL API is a REST API that you can use to access and update data in a Snowflake database. You can use
this API to develop custom applications and integrations that:

* Perform queries.
* Manage your deployment (e.g. provision users and roles, create tables, etc.).

For an example request, including the headers and the JSON body, see
[Example of a request](https://docs.snowflake.com/developer-guide/sql-api/submitting-requests#label-sql-api-executing-statement-request-example).
For an example of the response that Snowflake returns, see
[Getting the results from the response](https://docs.snowflake.com/developer-guide/sql-api/handling-responses#label-sql-api-getting-results).
To authenticate the request first, see [Authenticating to the server](https://docs.snowflake.com/developer-guide/sql-api/authenticating).

## Capabilities of the SQL API

The Snowflake SQL API provides operations that you can use to:

* Submit SQL statements for execution.
* Check the status of the execution of a statement.
* Cancel the execution of a statement.
* Fetch query results concurrently.

You can use this API to execute [standard queries](https://docs.snowflake.com/sql-reference/constructs) and most
[DDL](https://docs.snowflake.com/sql-reference/sql-ddl-summary) and [DML](https://docs.snowflake.com/sql-reference/sql-dml) statements.
See [Limitations of the SQL API](https://docs.snowflake.com/en/developer-guide/sql-api/intro#label-sql-api-limitations) for the types of statements that are not supported.

For queries, the SQL API returns data in partitions. Snowflake determines the number of partitions returned and the size of each partition.

The endpoint for the SQL API (`/api/v2/statements`) is protected by the [network policies](https://docs.snowflake.com/user-guide/network-policies)
that restrict access to the account where the API is enabled.

Note

The [AUTOCOMMIT](https://docs.snowflake.com/sql-reference/parameters#label-autocommit) parameter must be set to `TRUE` per query or statement level, regardless of the
value set at the user or account level.

## Limitations of the SQL API

The SQL API has the following limitations:

* The following commands are not supported:
  + The [PUT](https://docs.snowflake.com/sql-reference/sql/put) command (in Snowflake SQL)
  + The [GET](https://docs.snowflake.com/sql-reference/sql/get) command (in Snowflake SQL)

The following commands and statements are supported only within a
[request that specifies multiple statements](https://docs.snowflake.com/developer-guide/sql-api/submitting-multiple-statements):

> * Commands that perform explicit transactions, including:
>
>   + [BEGIN](https://docs.snowflake.com/sql-reference/sql/begin)
>   + [COMMIT](https://docs.snowflake.com/sql-reference/sql/commit)
>   + [ROLLBACK](https://docs.snowflake.com/sql-reference/sql/rollback)
> * Commands that change the context of the session, including:
>
>   + [USE <object>](https://docs.snowflake.com/sql-reference/sql/use)
>   + [ALTER SESSION](https://docs.snowflake.com/sql-reference/sql/alter-session)
> * Statements that set session variables.
> * Statements that create temporary tables and stages (tables and stages that are available only in the current session).

The SQL API does not support certain types of stored procedures. You might encounter errors, for example, when trying to call Python and Java/Scala stored procedures
that return a `resultset` in Arrow format. Even if you don’t directly call these stored procedures from the SQL API, but call another stored procedure,
such as SQL, errors might result when the outer procedure internally calls an inner Python or Java/Scala stored procedure.

## Billing considerations when using the SQL API

The SQL API leverages the cloud services layer when fetching some query results. For more information about cloud services,
see [Cloud Services Credit Usage](https://docs.snowflake.com/user-guide/cost-understanding-compute#label-cloud-services-credit-usage).
