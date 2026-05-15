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

      + [Tutorial](/en/user-guide/snowflake-cortex/ai-observability/tutorial "Tutorial")
      + [Evaluate AI applications](/en/user-guide/snowflake-cortex/ai-observability/evaluate-ai-applications "Evaluate AI applications")
      + [Reference](/en/user-guide/snowflake-cortex/ai-observability/reference "Reference")
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

[Guides](/en/guides)[Snowflake AI & ML](/en/guides-overview-ai-features)AI Observability

# AI Observability in Snowflake Cortex[¶](#ai-observability-in-snowflake-cortex)

Use AI Observability in Snowflake Cortex to evaluate and trace your generative AI applications.
With AI Observability, you can make your applications more trustworthy and transparent.
Use it to measure the performance of your AI applications by running systematic evaluations.
You can use the information from the evaluations to iterate on your application configurations and optimize performance.
You can also use it to log application traces for debugging purposes.

Use AI Observability to benchmark performance, thus making your applications trustworthy and providing greater confidence for production deployments.

AI Observability has the following features:

* **Evaluations:** Use AI Observability to systematically evaluate the performance of your generative AI applications and agents using the LLM-as-a-judge technique.
  You can use metrics, such as accuracy, latency, usage, and cost, to quickly iterate on your application configurations and optimize performance.
* **Comparison:** Compare multiple evaluations side by side and assess the quality and accuracy of responses. You can analyze the responses across different LLMs, prompts, and inference configurations to identify the best configuration for production deployments.
* **Tracing:** Trace every step of application executions across input prompts, retrieved context, tool use, and LLM inference. Use it to debug individual records and refine the app for accuracy, latency, and cost.

AI Observability can be used to evaluate a variety of task types, such as retrieval-augmented generation (RAG) and summarization. For example, the context relevance score can help you detect the quality of the search results retrieval corresponding to a user query. You can use the answer relevance and groundedness scores to detect the truthfulness and relevance of the final response based on the retrieved context.

For summarization, you can measure the factual correctness and comprehensiveness of the LLM-generated summaries based on original input and avoid prompts and LLMs that have a higher frequency of hallucinations in your generative AI applications.

To get started, learn about the [Key concepts](#label-ai-observability-key-concepts), and then take a quick walkthrough with the [AI Observability Tutorial](/user-guide/snowflake-cortex/ai-observability/tutorial). You can then use the information in [Evaluate AI applications](/user-guide/snowflake-cortex/ai-observability/evaluate-ai-applications) for an in-depth walkthrough.

To review a specific concept, see the [Snowflake AI Observability Reference](/user-guide/snowflake-cortex/ai-observability/reference). For querying `AI_OBSERVABILITY_EVENTS` with SQL for a Cortex Agent (pass `CORTEX AGENT` as `agent_type`) or an External Agent application (pass `EXTERNAL AGENT` as `agent_type`), see [Monitor Cortex Agent requests](/user-guide/snowflake-cortex/cortex-agents-monitor), [GET\_AI\_OBSERVABILITY\_EVENTS (SNOWFLAKE.LOCAL)](/sql-reference/functions/get_ai_observability_events-snowflake-local), and [External Agent commands](/sql-reference/commands-external-agent).

Visibility of **unredacted** raw fields in monitoring and in observability user-defined table function results is covered by the **READ UNREDACTED AI OBSERVABILITY EVENTS TABLE** account privilege; it does not apply to **Cortex Agent evaluation** runs or the **External AgentEvaluations** experience. For more details, please see [Account Privilege READ UNREDACTED AI OBSERVABILITY EVENTS TABLE](/release-notes/bcr-bundles/un-bundled/bcr-read-unredacted-ai-observability-events) and [Monitor Cortex Agent requests](/user-guide/snowflake-cortex/cortex-agents-monitor).

## Access control and prerequisites[¶](#access-control-and-prerequisites)

Before you start using AI Observability:

1. To create and execute runs, your role must have the following roles or privileges granted. For more information, see [Required privileges](/user-guide/snowflake-cortex/ai-observability/reference#label-ai-observability-required-privileges):

   * CORTEX\_USER database role
   * CREATE EXTERNAL AGENT privilege on the schema
   * CREATE TASK privilege on the schema
   * EXECUTE TASK global privilege
2. Install the following Trulens Python packages in your Python project:

   * `trulens-core`
   * `trulens-connectors-snowflake`
   * `trulens-providers-cortex`

   The version of the package that you’re using in your Python project should be version 2.1.2 or later.

TruLens is the platform that Snowflake uses to track your applications. For more information, see the [TruLens documentation](https://trulens.org/getting_started).

## Key concepts[¶](#key-concepts)

### Applications[¶](#applications)

An application is an end-to-end generative AI application that is designed using multiple components such as LLMs, tools (such as search retrievers or APIs), and additional custom logic. For example, an application can contain a RAG pipeline with retrievers, re-rankers, and LLMs chained together. You can enable AI observability for applications that can run in any environment (such as Snowflake, cloud, or on-premises).

### External Agent[¶](#external-agent)

Applications are represented in Snowflake as External Agent objects. An External Agent object is used to store application and evaluation metadata (such as the application name, version name, or run name). It does not store the application code, application definition, execution traces, or evaluation results. While the application can be hosted in any environment (such as Snowflake, cloud, or on-premises), the execution traces and evaluation results are stored in an event table in your Snowflake account. For more information, see [Observability data](/user-guide/snowflake-cortex/ai-observability/reference#label-ai-observability-data).

In addition to storing application and evaluation metadata, the External Agent object is also used to govern access to the traces and evaluation results for the application.
For more information, see [Required privileges](/user-guide/snowflake-cortex/ai-observability/reference#label-ai-observability-required-privileges).

The TruLens SDK automatically creates External Agent objects when you register an application (for example, using `TruApp()`,
`TruChain`, `TruGraph`, or `TruLlama`). Running an evaluation can also create an External Agent if one does not already exist
for the specified application name.

You can also manage external agents using SQL commands. For more information, see [External Agent commands](/sql-reference/commands-external-agent).

Important

External Agent objects share a namespace with [model](/sql-reference/sql/create-model) objects. You cannot create an
external agent with the same name as an existing model in the same schema, and vice versa. If a name collision occurs
(for example, when an evaluation and a model share the same name), you must rename or drop the conflicting object before
proceeding.

### Versions[¶](#versions)

Applications can have multiple versions. Each version represents a different implementation. For example, these versions can represent different retrievers, prompts, LLMs or inference configurations.

### Dataset[¶](#dataset)

A dataset represents a set of inputs. You can configure it to also represent a set of expected outputs (the ground truth) to test the application. Using the dataset, you can invoke the application to do the following tasks:

* Generate the output.
* Capture the traces.
* Compute evaluation metrics.

You can use a dataset containing both the inputs and the generated outputs to compute the evaluation metrics without invoking the application. For a list of fields supported in the dataset, see [Dataset and attributes](/user-guide/snowflake-cortex/ai-observability/reference#label-ai-observability-dataset-and-attributes).

### Runs[¶](#runs)

A run is an evaluation job. It uses the dataset and the application version that you’ve specified to compute evaluation metrics.

A run has an invocation stage and a computation stage. The invocation stage triggers the application to generate the output and corresponding traces. The computation stage computes the evaluation metrics specified for the run. Multiple computations can be performed to add new metrics to an existing run. For the list of statuses associated with the execution of a run, see [Runs](/user-guide/snowflake-cortex/ai-observability/reference#label-ai-observability-runs).

### Metrics[¶](#metrics)

Evaluation metrics are scores that you use to assess generative AI application performance based on your own criteria. These metrics use LLMs to grade outputs and provide detailed scoring information. For a comprehensive list of metrics and their definitions, see [Evaluation metrics](/user-guide/snowflake-cortex/ai-observability/reference#label-ai-observability-evaluation-metrics).

### Traces[¶](#traces)

Traces are comprehensive records that capture the inputs, outputs, and intermediate steps of the interactions with an LLM application.
Traces provide a detailed view of the application’s execution. Use traces to analyze and understand the model’s behavior at each stage.
You can compare the traces of different application versions to identify improvements, debug issues, and verify intended performance. For information about accessing traces associated with each record, see [Evaluate AI applications](/user-guide/snowflake-cortex/ai-observability/evaluate-ai-applications).

## Pricing[¶](#pricing)

AI Observability uses LLM judges to compute the evaluation metrics. For server-side evaluations, LLMs on Cortex AI are used as LLM judges. The LLM judges are invoked via the [AI\_COMPLETE](/sql-reference/functions/ai_complete) function to perform evaluations.
You incur charges for the Cortex Complete function calls. The LLM used to perform the evaluations determines how much you’re charged.
Additionally, you’re charged the following:

* Warehouse charges for tasks used to manage evaluation runs
* Warehouse charges for queries used to compute evaluation metrics
* Storage charges for the evaluation results
* Warehouse charges to retrieve the evaluation results to be viewed in Snowsight

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

1. [Access control and prerequisites](#access-control-and-prerequisites)
2. [Key concepts](#key-concepts)
3. [Pricing](#pricing)