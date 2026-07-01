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

      + [Getting Started](/en/user-guide/snowflake-cortex/snowflake-cowork/getting-started "Getting Started")
      + [Build agents](/en/user-guide/snowflake-cortex/snowflake-cowork/build-agents "Build agents")
      + [Artifacts](/en/user-guide/snowflake-cortex/snowflake-cowork/artifacts "Artifacts")
      + [User access and settings for agents](/en/user-guide/snowflake-cortex/snowflake-cowork/deploy-agents "User access and settings for agents")
      + [Integrate tools and data](/en/user-guide/snowflake-cortex/snowflake-cowork/integrate-tools "Integrate tools and data")
      + [Resource budgets](/en/user-guide/snowflake-cortex/snowflake-cowork/cowork-resource-budgets "Resource budgets")
      + [Shared resource budgets](/en/user-guide/snowflake-cortex/snowflake-cowork/cowork-shared-budgets "Shared resource budgets")
      + [Troubleshooting](/en/user-guide/snowflake-cortex/snowflake-cowork/troubleshooting "Troubleshooting")
      + [Reference](/en/user-guide/snowflake-cortex/snowflake-cowork/reference "Reference")
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

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)Snowflake CoWork

# Overview of Snowflake CoWork[¶](#overview-of-snowflake-cowork)

Snowflake CoWork is a ready-to-use agentic application with an intuitive, conversational interface
that helps business users discover and act on deep insights. It lets users interact with their
structured and unstructured enterprise data using natural language. Snowflake CoWork uses
AI-powered “data agents” to:

* Understand questions
* Perform analysis
* Generate trusted insights
* Take action

It bridges the gap between valuable enterprise data and the people who need it, empowering users
to move beyond stale dashboards and rigid reports. Users are empowered to find answers independently,
reducing their reliance on data teams. Insights are trustworthy with full traceability, while
respecting Snowflake’s robust security and governance policies.

## Key capabilities[¶](#key-capabilities)

Business users are often stuck navigating stale dashboards that can’t keep up with their questions
and waiting on data teams for answers. Snowflake CoWork solves this with the following capabilities:

* **Natural Language Interaction**: An intuitive, conversational interface allows users to ask
  questions using natural language and receive deep insights.
* **Unified Data Access**: Analyzes both structured and unstructured data from enterprise sources.
* **Deep, Trustworthy Insights**: Breaks down questions and chooses the best tools to deliver
  accurate, actionable insights. Provides traceability to source data
  and queries, while “Verified Answers” allow data teams to add trusted responses.
* **Built-in Visualization**: Instantly generates and customizes charts to help visualize trends
  and patterns, with clear explanations about how each chart was created. The agent determines
  whether data is best shown as a chart or table based on the query type. Trends and comparisons
  render as visualizations, while detailed lookups return tables. Snowflake CoWork supports
  most [Vega-Lite](https://vega.github.io/vega-lite/examples/) chart types, including
  area charts, heatmaps, box plots, dual-axis and layered charts, faceted small-multiple charts,
  error bars, and text annotations, in addition to bar, line, pie, and scatter charts. Geographic
  map charts are not supported. Users can customize chart preferences through agent instructions,
  including default chart types, colors, and formatting rules. For more information, see
  [Customize charts in Snowflake CoWork](/user-guide/snowflake-cortex/snowflake-cowork/chart-customization).
* **Artifacts**: A persistent chart or table object that Snowflake CoWork generates in response to a question. Save, share, and revisit tables and charts without regenerating them. For more information, see [Artifacts in Snowflake CoWork](/user-guide/snowflake-cortex/snowflake-cowork/artifacts).
* **Skills and plugins**: Discover and install shared Cortex Code skills and plugins directly from Snowflake CoWork. For more information, see [Share skills and plugins](/user-guide/snowflake-cortex/skill-catalog).
* **Seamless Governance**: Automatically inherits and respects all existing Snowflake data governance
  controls, including row-access policies and column-level security.
* **Full Administrative Control**: Administrators can use existing identity providers to give teams
  access only to Snowflake CoWork, making sure users only interact with the data experiences built
  for them.

### Snowflake CoWork Mobile App (iOS)[¶](#snowflake-cowork-mobile-app-ios)

[Preview Feature](/release-notes/preview-features) — Open

Available to all accounts.

The Snowflake CoWork mobile app for iOS is available in Preview on the [App Store](https://apps.apple.com/us/app/snowflake-intelligence/id6755540372). The app supports the same features as the web app, so you can ask questions about your data, continue conversations, and review results from anywhere. It supports chat, agents, file and image attachments, voice input, citations, and role and warehouse selection, extending the core experience to mobile in a secure, touch-first format.

### Additional UI options[¶](#additional-ui-options)

Snowflake CoWork offers the following additional options for users from the UI:

#### Deep Research[¶](#deep-research)

[Preview Feature](/release-notes/preview-features) — Open

Available to all accounts.

Deep Research is an investigation mode for complex, open-ended questions that require multi-step
reasoning across your data. Instead of returning a single result, Snowflake CoWork decomposes the
question into multiple sub-investigations, runs them in parallel across your structured and
unstructured data, and synthesizes the findings into a structured report. Every claim in the
report is traced back to its source data and queries, so you can verify the reasoning and share
results with confidence.

Reach for Deep Research when you need to understand why something happened, when the answer likely
spans multiple tables or domains, or when you want a citable report you can hand to stakeholders.
Examples include questions like “Why has forecast accuracy been declining, and what’s driving the
variance?” or “Which customer segments show early churn signals, and what do they share?”. For
specific lookups, quick metrics, or interactive follow-ups, the standard chat experience is faster
and better suited.

To start an investigation, select the **+** button in the message bar and choose **Deep Research**.
Investigations can take up to 10 minutes to complete. When the report is ready, it stays in context
for the rest of the thread, so follow-up questions such as “break that down by region” run as
standard chat turns without restarting the research.

Deep Research compared to extended thinking

Deep Research and extended thinking solve different problems and can be used together. Extended
thinking is internal reasoning: the agent thinks harder on a single answer, validating SQL logic,
joins, and access controls before execution against the same tools and data. Deep Research is
agentic exploration: the agent runs an autonomous loop that cross-references structured tables,
unstructured data in stages, and external context to explain the *why* behind the numbers. You can
enable extended thinking during a Deep Research investigation to combine deeper reasoning with
wider exploration.

#### Extended thinking[¶](#extended-thinking)

By default, Snowflake CoWork agents balance speed and quality when answering questions.

If users have a complex question or want the agent to explore more options, they can enable
extended thinking in the chat window. With extended thinking, the agent will be more thorough, but
the process might take more time and use more tokens. This setting remains selected.

#### Zero-setup file upload[¶](#zero-setup-file-upload)

Snowflake CoWork supports uploading files directly in the chat interface to provide more
context for the agent. The agent can use the content of the files to answer questions and provide
insights.

When you upload a file, it is automatically saved in your user stage. The file is accessible within the same thread. Documents are automatically cleaned up when threads are deleted, either by the thread delete API or after the thread TTL (time to live) expires.

Snowflake CoWork supports the following file types for zero-setup file upload:

* CSV
* JSON
* PDF
* PPTX
* TXT
* XLSX

Each file must be less than 50 MB, but users can upload up to 5 files.

If the document requires complex processing, the user’s default warehouse might be used to run
Snowpark code for the agent to better analyze and process the data.

Important

Uploaded documents are stored on a personal stage and treated as customer data, following the same data governance and access controls as other Snowflake data. Account administrators have standard access based on existing permissions.

## How it works[¶](#how-it-works)

Snowflake CoWork combines multiple tools with the following architecture:

[![Describes the architecture of Snowflake CoWork, including the Cortex Agent API, the orchestrator, and the tools.](/static/images/snowflake-intelligence-architecture.png)](/static/images/snowflake-intelligence-architecture.png)

When a user asks a question in Snowflake CoWork, Cortex Agents turn
natural language into governed actions and answers. An interaction with Snowflake CoWork
follows this workflow:

1. **User input**: A user submits a natural language question. For example, “How are Q4 sales trending?”.
2. **Cortex Agent API**: The question is routed to the [Cortex Agent API](/user-guide/snowflake-cortex/cortex-agents-rest-api), which powers Snowflake CoWork.
   Agents are AI models that can be connected to one or more semantic views, semantic models, Cortex
   search services, and tools. Agents reason through tasks, choose the right tools, deliver results
   in natural language, and take actions on your behalf. You can create, update, and deploy these
   high-quality agents directly inside your Snowflake environment. Agents integrate
   directly with Snowflake CoWork. For more information, see [Cortex Agents](/user-guide/snowflake-cortex/cortex-agents).
3. **Orchestration**: An LLM model (the orchestrator) interprets intent, selects the right tools, and
   plans the sequence of actions. It may use one tool, chain several together, or decide that
   the question is out of scope.
4. **Tool execution**: Runs the tools selected by the orchestrator and returns results. You can
   integrate tools to give Snowflake CoWork access to structured and unstructured data, as well
   as existing functions and procedures. Cortex Agents support the following tool types:

   * **Cortex Analyst**: Create SQL queries from natural language, then run these queries on your
     semantic views for structured data with [Cortex Analyst](/user-guide/snowflake-cortex/cortex-analyst). Semantic views address the mismatch between how business
     users describe data and how it’s stored in database schemas. With semantic views, you can
     define business metrics and model business entities and their relationships. Cortex Agents
     use these semantic views to enhance data-driven decisions and provide consistent business
     definitions across enterprise applications. For more information, see
     [Overview of semantic views](/user-guide/views-semantic/overview).
   * **Cortex Search**: Search through your unstructured data to return relevant document text with [Cortex Search](/user-guide/snowflake-cortex/cortex-search/cortex-search-overview).
   * **Custom Tools**: Execute user-defined functions or stored procedures to perform actions.
5. **Reflection & response**: The orchestrator reviews and refines results, then generates
   the final answer, including summaries, tables, or charts, in the Snowflake CoWork UI.

## Legal notices[¶](#legal-notices)

Where your configuration of Snowflake CoWork uses a model provided on the
[Model and Service Flow-down Terms](https://www.snowflake.com/en/legal/optional-offerings/offering-specific-terms/ai-features/open-source-model-flow-down-terms/),
your use of that model is further subject to the terms for that model on that page.



The data classification of inputs and outputs are as set forth in the following table.

| Input data classification | Output data classification | Designation |
| --- | --- | --- |
| Usage Data | Customer Data | Covered AI Features [[1]](#footnote-1) |

Expand

Show lessSee more

[1]
Represents the defined term used in the AI Terms and Acceptable Use Policy.

For additional information, refer to [Snowflake AI and ML](/guides-overview-ai-features).

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

1. [Key capabilities](#key-capabilities)
2. [How it works](#how-it-works)
3. [Legal notices](#legal-notices)