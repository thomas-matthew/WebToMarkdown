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
    - [Dynamic tables](/en/user-guide/dynamic-tables-about "Dynamic tables")
    - [Streams and tasks](/en/user-guide/data-pipelines-intro "Streams and tasks")
    - [Row timestamps](/en/user-guide/data-engineering/row-timestamps "Row timestamps")
    - [DCM Projects](/en/user-guide/dcm-projects/dcm-projects-overview "DCM Projects")
    - [dbt Projects on Snowflake](/en/user-guide/data-engineering/dbt-projects-on-snowflake "dbt Projects on Snowflake")
    - [Data Unloading](/en/guides-overview-unloading-data "Data Unloading")
12. [Storage lifecycle policies](/en/user-guide/storage-management/storage-lifecycle-policies "Storage lifecycle policies")
13. [Migrations](/en/migrations/README "Migrations")
15. [Queries](/en/guides-overview-queries "Queries")
16. [Listings](/en/collaboration/collaboration-listings-about "Listings")
17. [Collaboration](/en/guides-overview-sharing "Collaboration")
19. [Snowflake AI & ML](/en/guides-overview-ai-features "Snowflake AI & ML")

    * [Governance and availability](/en/user-guide/snowflake-cortex/governance-and-availability "Governance and availability")
    * [Snowflake Intelligence](/en/user-guide/snowflake-cortex/snowflake-intelligence "Snowflake Intelligence")
    * [Cortex Code](/en/user-guide/cortex-code/cortex-code "Cortex Code")
    * [Cortex AI Functions](/en/user-guide/snowflake-cortex/aisql "Cortex AI Functions")
    * [Cortex Agents](/en/user-guide/snowflake-cortex/cortex-agents "Cortex Agents")
    * [Snowflake-managed MCP server](/en/user-guide/snowflake-cortex/cortex-agents-mcp "Snowflake-managed MCP server")
    * [Cortex Analyst](/en/user-guide/snowflake-cortex/cortex-analyst "Cortex Analyst")
    * [Cortex Search](/en/user-guide/snowflake-cortex/cortex-search/cortex-search-overview "Cortex Search")
    * [Cortex Knowledge Extensions](/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-overview "Cortex Knowledge Extensions")
    * [Cortex REST API](/en/user-guide/snowflake-cortex/cortex-rest-api "Cortex REST API")
    * [Cortex AI Guardrails](/en/user-guide/snowflake-cortex/cortex-ai-guardrails "Cortex AI Guardrails")
    * [AI Observability](/en/user-guide/snowflake-cortex/ai-observability "AI Observability")
    * [ML Functions](/en/guides-overview-ml-functions "ML Functions")
    * [Provisioned Throughput](/en/user-guide/snowflake-cortex/provisioned-throughput "Provisioned Throughput")
    * [ML Development and ML Ops](/en//developer-guide/snowpark-ml/overview "ML Development and ML Ops")
21. [Snowflake Postgres](/en/user-guide/snowflake-postgres/about "Snowflake Postgres")
23. [Alerts & Notifications](/en/guides-overview-alerts "Alerts & Notifications")
25. [Security](/en/guides-overview-secure "Security")
26. [Data Governance](/en/guides-overview-govern "Data Governance")
27. [Privacy](/en/guides-overview-privacy "Privacy")
29. [Organizations & Accounts](/en/guides-overview-manage "Organizations & Accounts")
30. [Business continuity & data recovery](/en/user-guide/replication-intro "Business continuity & data recovery")
32. [Performance optimization](/en/guides-overview-performance "Performance optimization")
33. [Cost & Billing](/en/guides-overview-cost "Cost & Billing")

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)Cortex AI Guardrails

# Cortex AI Guardrails[¶](#cortex-ai-guardrails)

[Enterprise Edition Feature](/user-guide/intro-editions)

This feature requires Enterprise Edition (or higher). To inquire about upgrading,
please contact [Snowflake Support](https://docs.snowflake.com/user-guide/contacting-support).

## Overview[¶](#overview)

Cortex AI Guardrails, part of the [Snowflake Horizon Catalog](/user-guide/snowflake-horizon), provide
run-time protection against prompt injection and jailbreak attacks on
[Cortex Code](/user-guide/cortex-code/cortex-code).

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
provides centralized control over guardrail behavior for Cortex Code in your account. Users with
the ACCOUNTADMIN role can configure Cortex AI Guardrails.

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

When Cortex AI Guardrails detect a potential threat, the event is logged for audit and monitoring purposes.
For Cortex Code, you can review detected threats in the conversation logs. For more information about
managing conversation history, see [conversation history](/user-guide/cortex-code/security#label-cortex-code-security-conversation-history).

Use these logs to:

* Monitor for attempted attacks against your AI workloads
* Identify patterns in blocked or flagged requests
* Audit guardrail effectiveness

## Considerations[¶](#considerations)

* While Cortex AI Guardrails are optimized for high accuracy, some legitimate prompts may occasionally be
  flagged. Review your guardrail logs periodically to identify any patterns.
* Cortex AI Guardrails for prompt injection are currently available with
  [Cortex Code](/user-guide/cortex-code/cortex-code).

## Cost[¶](#cost)

You are charged credits for the use of Cortex AI Guardrails as listed in the
[Snowflake Service Consumption Table](https://www.snowflake.com/legal-files/CreditConsumptionTable.pdf). Usage is measured based on the number of tokens scanned.

## Related topics[¶](#related-topics)

* [Snowflake Horizon Catalog](/user-guide/snowflake-horizon)
* [Cortex Code](/user-guide/cortex-code/cortex-code)
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