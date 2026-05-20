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
    * [Snowflake Intelligence](/en/user-guide/snowflake-cortex/snowflake-intelligence "Snowflake Intelligence")
    * [Cortex Code](/en/user-guide/cortex-code/cortex-code "Cortex Code")
    * [Cortex AI Functions](/en/user-guide/snowflake-cortex/aisql "Cortex AI Functions")
    * [Cortex Agents](/en/user-guide/snowflake-cortex/cortex-agents "Cortex Agents")
    * [Snowflake-managed MCP server](/en/user-guide/snowflake-cortex/cortex-agents-mcp "Snowflake-managed MCP server")
    * [Cortex Analyst](/en/user-guide/snowflake-cortex/cortex-analyst "Cortex Analyst")
    * [Cortex Search](/en/user-guide/snowflake-cortex/cortex-search/cortex-search-overview "Cortex Search")
    * [Cortex Knowledge Extensions](/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-overview "Cortex Knowledge Extensions")

      + [CKE document access history](/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-access-history "CKE document access history")
      + [Tutorials](/en/user-guide/snowflake-cortex/cortex-knowledge-extensions/overview-tutorials "Tutorials")
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

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)Cortex Knowledge Extensions

# Cortex Knowledge Extensions[¶](#cortex-knowledge-extensions)

## Overview[¶](#overview)

Cortex Knowledge Extensions (CKEs) are
[Cortex Search Services](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview) that can be shared on the
[Snowflake Marketplace](https://app.snowflake.com/_deeplink/marketplace) or via
[private listings](/collaboration/provider-listings-creating-publishing#label-listings-create)
or [organizational listings](/user-guide/collaboration/listings/organizational/org-listing-about). They can be used in a
retrieval-augmented generation (RAG) architecture to integrate licensed and proprietary content into Cortex AI applications. For
example, CKEs can be used to integrate knowledge from unstructured content, such as articles, market research, books, or forum
posts, into Cortex AI applications, such as chatbots and agentic systems.

## How CKE works[¶](#how-cke-works)

Here’s how it works:

1. A Provider uploads their text data into a table in their account and creates a [Cortex Search Service](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview) on the table. This Cortex Search Service is then shared on the on the [Snowflake Marketplace](https://app.snowflake.com/_deeplink/marketplace). A Cortex Search Service that is shared on the Snowflake Marketplace is known as a Cortex Knowledge Extension (CKE).
2. A Consumer builds an application leveraging Cortex AI, such as a chatbot, using [Cortex AI Functions](/user-guide/snowflake-cortex/aisql) or the [Cortex Agent API](/user-guide/snowflake-cortex/cortex-agents) with the CKE.
3. When a prompt is given to the Cortex AI application that is integrated with a CKE, the prompt is passed on to the CKE to get relevant knowledge by performing a semantic search. The relevant knowledge is given back to the Cortex AI applications’s LLM and reasoned over before returning an answer back to the user with citations and attribution.

![A flowchart showing the CKE workflow, from a provider's cortex search service, to a search index, to a response in a consumer's prompt.](/static/images/cortex-knowledge-extensions/cke-workflow.png)

## CKE features[¶](#cke-features)

Some of the key features of Cortex Knowledge Extensions include:

* [Content protection](#label-cke-content-protection)
* [Management](#label-cke-management)
* [Trial support](#label-cke-trial-support)
* [Monetization](#label-cke-monetization)

Each of these features is described in more detail below.

### Content protection[¶](#content-protection)

Providers can limit the percentage of indexed content in their CKE that can be returned to their consumers within a rolling 24-hour period. This is done by setting a threshold using the commands below. The threshold is not applied at the individual document level, but rather across the entire corpus of indexed content. Consumers will only be able to access the threshold percentage of the indexed content in the CKE.

Refer to the [Listing manifest reference](/progaccess/listing-manifest-reference) for more information about the
`cke_content_protection` field.

Copy codeExpand

```
-- Use CREATE to create a new CKE listing with content protection.
-- Use ALTER to update an existing listing with content protection.

-- This example creates a CKE listing targeting to two accounts.
CREATE EXTERNAL LISTING cke_listing
SHARE cke_share AS
$$
title: "CKE Listing Title"
description: "Cortex Knowledge Extension Listing Description"
listing_terms:
  type: "STANDARD"
auto_fulfillment:
  refresh_type: "SUB_DATABASE"
  refresh_schedule: "1440 MINUTE"
targets:
  accounts:
    - "ORG1.ACCOUNT1"
    - "ORG2.ACCOUNT2"
cke_content_protection:
  enable: true,
  threshold: 0.2
$$

-- DESCRIBE LISTING cke_listing
-- See the manifest_yaml column for the cke_content_protection setting
```

Show lessSee more

Scroll to top

When the threshold has been hit by a consumer, queries to the CKE are blocked from executing, and the consumer receives the following error:

```
You have reached the content protection threshold. Please try again later.
```

The consumer can re-query the data when the threshold refreshes.

### Management[¶](#management)

To see the number of queries that the CKE executed, sign in to [Snowsight](/user-guide/ui-snowsight-gs#label-snowsight-getting-started-sign-in). In the navigation menu, select **Marketplace** » **Provider Studio** » **Home**. The **Analytics** section shows the number of queries executed.

### Trial support[¶](#trial-support)

As a provider, you can offer customers a [limited trial](/collaboration/collaboration-listings-about#label-trial-listing) of your CKE so that they can try your product before they commit to paying for it.

### Monetization[¶](#monetization)

Cortex Knowledge Extensions can be monetized using the on-platform [Snowflake Marketplace Monetization](/collaboration/provider-becoming#label-monetization-provider-onboarding) capability via [subscriptions](/collaboration/provider-listings-pricing-model#label-listings-subscription-pricing-model) or through [off-platform](/collaboration/provider-listings-creating-publishing#label-listings-free-private-create) monetization.

## Region availability[¶](#region-availability)

Cortex Knowledge Extensions are available in any region where
[Cortex Search](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview#label-cortex-search-overview-regional-availability) is available.

## Key considerations[¶](#key-considerations)

When customers use your Cortex Knowledge Extension, be careful when disabling serving of the [Cortex Search Service](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview), as that will break customers’ applications.

For advanced tuning of a Cortex Knowledge Extension, refer to the [Cortex Search](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview) documentation.

## Costs for CKE[¶](#costs-for-cke)

Providers:

* Providers pay to host the Cortex Search Service in their account, including indexing, servicing, and replication to other regions. For more information about costs associated with Cortex Search Services, providers can refer to [Understanding cost for Cortex Search Services](/user-guide/snowflake-cortex/cortex-search/cortex-search-costs).

Consumers:

* If the CKE isn’t free, consumers pay the provider to access the CKE.
* If the CKE leverages a Cortex Agent, consumers pay for the Cortex Agent. For more information, see [Cost considerations](/user-guide/snowflake-cortex/cortex-agents#label-cortex-agent-cost-considerations) for Cortex Agents.

## Citations[¶](#citations)

To ensure that the CKE is providing citations, when you configure the [Cortex Search Services](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview), make sure that you include a *SOURCE\_URL* column that points to the source of the document in the indexed columns. This can be used by LLMs or Snowflake Intelligence to provide clear attribution and hyperlinks back to the source material.

## Publishing the CKE to the Snowflake Marketplace[¶](#publishing-the-cke-to-the-snowflake-marketplace)

After you create a Cortex Search Service that you want to publish to the Marketplace, [create a listing](/collaboration/provider-listings-creating-publishing). Make sure that you point to the Cortex Search Service object that you created as an object that you want to publish.

## Talking with the CKE[¶](#talking-with-the-cke)

You can use the following methods to ask the CKE questions.

* Use the Cortex Search Playground:

  1. In Snowsight, in the navigation menu, select **AI & ML** » **Cortex Search**.
  2. Select the CKE from the **Database/Schema** drop down menu.
  3. Click on **Playground** in the upper-right corner.
  4. Type in a search query and see the results
* Use Snowflake Intelligence:

  + Follow the steps outlined in [Tutorial 3: Add a CKE to Snowflake Intelligence](/user-guide/snowflake-cortex/cortex-knowledge-extensions/tutorials/add-cke-to-snowflake-intelligence-tutorial).
* Use Cortex Agent API:

  + Use the Cortex Agent API, and specify the shared CKE in the [CREATE CORTEX SEARCH](/sql-reference/sql/create-cortex-search) parameter. Refer to the [Cortex Agent API](/user-guide/snowflake-cortex/cortex-agents) documentation for more information.

## Updating your CKE[¶](#updating-your-cke)

Keeping a CKE up-to-date is a common use case for providers that regularly introduce new or updated content. To ensure your Cortex Knowledge Extension is up-to-date do the following:

1. Ensure that the underlying table with content has been updated via some separate process of inserting new / updated documents
   into your Snowflake account.
2. Review the Cortex Search Service target lag. The Cortex Search Service is configured to refresh and to keep the data fresh up
   to a certain `target_lag`. Refer to the Cortex Search
   [Use SQL](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview#label-cortex-search-overview-example-sql) topic for more information about `target_lag`.
3. Run the following commands to ensure that the Cortex Search Service is indexing.

   Copy code

   ```
   -- Get the status of the search service
   DESCRIBE CORTEX SEARCH SERVICE cke_simple_cortex_search_service;

   -- If the indexing status is suspended, you can resume it with the following command
   ALTER CORTEX SEARCH SERVICE cke_simple_cortex_search_service RESUME INDEXING;
   ```

## CKE and auto-fulfillment[¶](#cke-and-auto-fulfillment)

Consumers can only access a Cortex Knowledge Extension made available in their region. Providers can automatically replicate their Cortex Search Service to remote consumer regions by [enabling auto-fulfillment](/collaboration/provider-listings-auto-fulfillment) on their Cortex Knowledge Extension listing in Provider Studio.

## Limitations[¶](#limitations)

* [Usage-based](/collaboration/provider-listings-pricing-model#label-listings-usage-pricing-model) billing with CKEs isn’t supported.
* CKEs are not supported in listings that have [Egress Cost Optimizer (ECO)](/collaboration/provider-listings-auto-fulfillment-eco) enabled.

  Providers should be aware of the cost implications for replication with listings that have a CKE.

  Adding a CKE to a listing that has ECO enabled will automatically turn off ECO. With ECO turned off, costs associated with the listing can increase. An email notification will also be sent to the provider indicating that ECO was turned off.

  Similarly, if a CKE is added to a listing that’s part of a replication group, then ECO will be turned off for all listings within that replication group. An email notification will be sent to the provider indicating that the ECO was turned off.

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
2. [How CKE works](#how-cke-works)
3. [CKE features](#cke-features)
4. [Region availability](#region-availability)
5. [Key considerations](#key-considerations)
6. [Costs for CKE](#costs-for-cke)
7. [Citations](#citations)
8. [Publishing the CKE to the Snowflake Marketplace](#publishing-the-cke-to-the-snowflake-marketplace)
9. [Talking with the CKE](#talking-with-the-cke)
10. [Updating your CKE](#updating-your-cke)
11. [CKE and auto-fulfillment](#cke-and-auto-fulfillment)
12. [Limitations](#limitations)

Related content

1. [CKE document access history](/user-guide/snowflake-cortex/cortex-knowledge-extensions/cke-access-history)
2. [Tutorials](/user-guide/snowflake-cortex/cortex-knowledge-extensions/overview-tutorials)
3. [Cortex Search](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview)