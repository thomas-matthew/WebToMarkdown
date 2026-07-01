1. [Overview](/en/guides "Overview")
2. [Snowflake Horizon Catalog](/en/user-guide/snowflake-horizon "Snowflake Horizon Catalog")
4. [Applications and tools for connecting to Snowflake](/en/guides-overview-connecting "Applications and tools for connecting to Snowflake")
6. [Virtual warehouses](/en/user-guide/warehouses "Virtual warehouses")
7. [Databases, Tables, & Views](/en/guides-overview-db "Databases, Tables, & Views")
8. [Data types](/en/data-types "Data types")
10. Data Integration

    - [Snowflake Openflow](/en/user-guide/data-integration/openflow/about "Snowflake Openflow")
    - Apache Iceberg™

      - [Apache Iceberg™ Tables](/en/user-guide/tables-iceberg "Apache Iceberg™ Tables")
      - [Snowflake Open Catalog](/en/user-guide/opencatalog/overview "Snowflake Open Catalog")
    - Zero-Copy Connectors

      - [About SAP® and Snowflake](/en/user-guide/data-integration/zero-copy/about-sap-snowflake "About SAP® and Snowflake")
11. Data engineering

    - [Data loading](/en/guides-overview-loading-data "Data loading")
    - [Dynamic tables](/en/user-guide/dynamic-tables/overview "Dynamic tables")
    - [Streams and tasks](/en/user-guide/data-pipelines-intro "Streams and tasks")
    - [Row timestamps](/en/user-guide/data-engineering/row-timestamps "Row timestamps")
    - [DCM Projects](/en/user-guide/dcm-projects/dcm-projects-overview "DCM Projects")
    - [dbt Projects on Snowflake](/en/user-guide/data-engineering/dbt-projects-on-snowflake "dbt Projects on Snowflake")
    - [Data Unloading](/en/guides-overview-unloading-data "Data Unloading")
12. [Storage lifecycle policies](/en/user-guide/storage-management/storage-lifecycle-policies "Storage lifecycle policies")
13. [Migrations](/en/migrations/migrations "Migrations")
15. [Queries](/en/guides-overview-queries "Queries")
16. [Listings](/en/collaboration/collaboration-listings-about "Listings")
17. [Collaboration](/en/guides-overview-sharing "Collaboration")
19. [Snowflake AI & ML](/en/guides-overview-ai-features "Snowflake AI & ML")

    * [Governance and availability](/en/user-guide/snowflake-cortex/governance-and-availability "Governance and availability")
    * [Snowflake CoWork](/en/user-guide/snowflake-cortex/snowflake-cowork "Snowflake CoWork")
    * [Cortex Code](/en/user-guide/cortex-code/cortex-code "Cortex Code")
    * [Cortex AI Functions](/en/user-guide/snowflake-cortex/aisql "Cortex AI Functions")
    * [Cortex Agents](/en/user-guide/snowflake-cortex/cortex-agents "Cortex Agents")
    * [Snowflake-managed MCP server](/en/user-guide/snowflake-cortex/cortex-agents-mcp "Snowflake-managed MCP server")
    * [Cortex Analyst](/en/user-guide/snowflake-cortex/cortex-analyst "Cortex Analyst")
    * [Cortex Search](/en/user-guide/snowflake-cortex/cortex-search/cortex-search-overview "Cortex Search")
    * [Cortex Knowledge Extensions](/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-overview "Cortex Knowledge Extensions")
    * [Cortex Inference](/en/user-guide/snowflake-cortex/cortex-rest-api "Cortex Inference")
    * [Cortex AI Guardrails](/en/user-guide/snowflake-cortex/cortex-ai-guardrails "Cortex AI Guardrails")
    * [AI Observability](/en/user-guide/snowflake-cortex/ai-observability "AI Observability")
    * [ML Functions](/en/guides-overview-ml-functions "ML Functions")
    * [Provisioned Throughput](/en/user-guide/snowflake-cortex/provisioned-throughput "Provisioned Throughput")
    * [ML Development and ML Ops](/en//developer-guide/snowpark-ml/overview "ML Development and ML Ops")
    * [Pricing](/en/user-guide/snowflake-cortex/pricing "Pricing")
21. [Snowflake Postgres](/en/user-guide/snowflake-postgres/about "Snowflake Postgres")
23. [Alerts & Notifications](/en/guides-overview-alerts "Alerts & Notifications")
25. [Security](/en/guides-overview-secure "Security")
27. [Organizations & Accounts](/en/guides-overview-manage "Organizations & Accounts")
28. [Business continuity & data recovery](/en/user-guide/replication-intro "Business continuity & data recovery")
30. [Performance optimization](/en/guides-overview-performance "Performance optimization")
31. [Cost & Billing](/en/guides-overview-cost "Cost & Billing")

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)Cortex AI Guardrails

# Cortex AI Guardrails[¶](#cortex-ai-guardrails)

[Enterprise Edition Feature](/user-guide/intro-editions)

This feature requires Enterprise Edition (or higher). To inquire about upgrading,
please contact [Snowflake Support](https://docs.snowflake.com/user-guide/contacting-support).

## Overview[¶](#overview)

Cortex AI Guardrails, part of the [Snowflake Horizon Catalog](/user-guide/snowflake-horizon), provide
run-time protection against prompt injection and jailbreak attacks on [Cortex Code](/user-guide/cortex-code/cortex-code), [Snowflake CoWork](/user-guide/snowflake-cortex/snowflake-cowork), and [Cortex Agents](/user-guide/snowflake-cortex/cortex-agents).

As enterprises move AI applications from pilot to production, they face increased risk from adversarial prompts
that can threaten data integrity and security. Cortex AI Guardrails extend Snowflake’s default protections
against known prompt injection techniques by adding guardrails to detect and mitigate adversarial threats.

Integrated centrally into Snowflake Horizon Catalog, Cortex AI Guardrails leverage contextual reasoning to
detect and neutralize malicious intent, preventing adversarial threats from circumventing established security
boundaries and hardened permissions.

### Key capabilities[¶](#key-capabilities)

Cortex AI Guardrails provide the following protections:

* **Prompt injection detection**: Identifies and blocks attempts to override system instructions through
  malicious prompts, including indirect prompt injections embedded in tool calls.
* **Jailbreak prevention**: Detects attempts to bypass the model’s safety protocols and security boundaries.
* **Zero-day style protection**: Uses advanced techniques to identify sophisticated, previously unknown
  attack patterns in real time.

## Configure Cortex AI Guardrails[¶](#configure-cortex-ai-guardrails)

You can configure Cortex AI Guardrails at the account level using the `AI_SETTINGS` parameter. This
provides centralized control over guardrail behavior for Cortex Code, Snowflake CoWork, and Cortex Agents in
your account. Users with the ACCOUNTADMIN role can configure Cortex AI Guardrails.

Note

Cortex AI Guardrails are available to Commercial (non-Gov, VPS, Sovereign) accounts that have [Cross-region inference](/user-guide/snowflake-cortex/cross-region-inference) enabled.
The account parameter `CORTEX_ENABLED_CROSS_REGION` must be set to `ANY_REGION`, `AWS_US`, or `AWS_GLOBAL`.
For details on this parameter, see [CORTEX\_ENABLED\_CROSS\_REGION](/sql-reference/parameters#label-cortex-enable-cross-region).

### Enable guardrails[¶](#enable-guardrails)

To enable Cortex AI Guardrails for your account, use the ALTER ACCOUNT command with the `AI_SETTINGS`
parameter:

Copy code

```
ALTER ACCOUNT SET AI_SETTINGS = $$
  guardrails:
    advanced_prompt_injection:
      - enabled: true
$$;
```

### View guardrail settings[¶](#view-guardrail-settings)

To view the current guardrail configuration for your account:

Copy code

```
SHOW PARAMETERS LIKE 'AI_SETTINGS' IN ACCOUNT;
```

### Disable guardrails[¶](#disable-guardrails)

To disable Cortex AI Guardrails:

Copy code

```
ALTER ACCOUNT UNSET AI_SETTINGS;
```

## Monitor guardrail activity[¶](#monitor-guardrail-activity)

The [CORTEX\_AI\_GUARDRAILS\_USAGE\_HISTORY](/sql-reference/account-usage/cortex_ai_guardrails_usage_history) view in the ACCOUNT\_USAGE schema provides a historical record of all guardrail scan activity for your account, including credit and token consumption.

Use this view to:

* Review which requests were flagged for possible prompt injection (`GUARDRAILS_SIGNAL = TRUE`)
* Monitor credit and token consumption for guardrail scans
* Audit guardrail activity by user, agentic source, or role

For example, to retrieve all requests where a guardrail scan was flagged:

Copy code

```
SELECT *
  FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_AI_GUARDRAILS_USAGE_HISTORY
  WHERE GUARDRAILS_SIGNAL = TRUE
    AND USAGE_TIME >= DATEADD('hour', -72, CURRENT_TIMESTAMP())
  LIMIT 100;
```

Guardrail activity is also captured in the conversation and trace logs for each client:

* **Cortex Code**: Review detected threats in the conversation logs. For where those logs are stored and how to manage them, see [Conversation history](/user-guide/cortex-code/security#label-cortex-code-security-conversation-history).
* **Snowflake CoWork** and **Cortex Agents**: Review conversation and trace data in Cortex Agent monitoring (for example in Snowsight, **AI & ML** » **Agents**, then the **Monitoring** pane for the agent). For details, see [Monitor Cortex Agent requests](/user-guide/snowflake-cortex/cortex-agents-monitor#label-cortex-agents-access-conversation-logs).

## Considerations[¶](#considerations)

* While Cortex AI Guardrails are optimized for high accuracy, some legitimate prompts may occasionally be
  flagged. Review your guardrail logs periodically to identify any patterns.
* Cortex AI Guardrails for prompt injection are currently available with [Cortex Code](/user-guide/cortex-code/cortex-code), [Snowflake CoWork](/user-guide/snowflake-cortex/snowflake-cowork), and [Cortex Agents](/user-guide/snowflake-cortex/cortex-agents).

## Cost[¶](#cost)

You are charged credits for the use of Cortex AI Guardrails as listed in the
[Snowflake Service Consumption Table](https://www.snowflake.com/legal-files/CreditConsumptionTable.pdf). Usage is measured based on the number of tokens scanned.

## Related topics[¶](#related-topics)

* [Snowflake Horizon Catalog](/user-guide/snowflake-horizon)
* [Cortex Code](/user-guide/cortex-code/cortex-code)
* [Overview of Snowflake CoWork](/user-guide/snowflake-cortex/snowflake-cowork)
* [Cortex Agents](/user-guide/snowflake-cortex/cortex-agents)
* [Snowflake AI and ML](/guides-overview-ai-features)

Was this page helpful?

YesNo

[Visit Snowflake](https://www.snowflake.com)

[Join the conversation](https://community.snowflake.com/s/)

[Develop with Snowflake](https://developers.snowflake.com)

[Share your feedback](/feedback)

[Read the latest on our blog](https://www.snowflake.com/blog/)

[Get your own certification](https://learn.snowflake.com)

[Privacy Notice](https://www.snowflake.com/privacy-policy/)[Site Terms](https://www.snowflake.com/legal/snowflake-site-terms/)Cookies Settings© 2026 Snowflake, Inc. All Rights Reserved.

On this page

1. [Overview](#overview)
2. [Configure Cortex AI Guardrails](#configure-cortex-ai-guardrails)
3. [Monitor guardrail activity](#monitor-guardrail-activity)
4. [Considerations](#considerations)
5. [Cost](#cost)
6. [Related topics](#related-topics)