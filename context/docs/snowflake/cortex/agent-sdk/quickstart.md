# Cortex Agent SDK quickstart

In this quickstart, you build a small application that starts an agent turn, reads events and structured results, and continues the conversation on a persistent thread.

## Prerequisites

TypeScriptPython

* **Node.js 22.22 or later**
* A **Snowflake account** with Cortex Agents available
* A **programmatic access token (PAT)**, or another supported credential type described in [Authenticate Cortex Agent SDK requests](https://docs.snowflake.com/user-guide/snowflake-cortex/cortex-agent-sdk/authentication)

* Python 3.10 or later
* A Snowflake account and authentication token
* The Cortex Agent SDK for Python

## Setup

TypeScriptPython

```
mkdir agent-quickstart && cd agent-quickstart
npm init -y
npm install "@snowflake/cortex-agent-sdk@>=1.0.0"
npm install --save-dev typescript tsx @types/node
```

Set `"type": "module"` in `package.json` so you can use `import` syntax:

```
{ "type": "module" }
```

```
export SNOWFLAKE_ACCOUNT="myaccount"
export SNOWFLAKE_PAT="<your-programmatic-access-token>"
```

The SDK expands `SNOWFLAKE_ACCOUNT` to the Snowflake API host. If the account identifier contains an underscore (`_`),
the SDK uses Snowflake’s canonical hyphenated host form.

```
python -m venv .venv
source .venv/bin/activate
pip install --upgrade "snowflake-cortex-agent-sdk>=1.0.0"
export SNOWFLAKE_ACCOUNT="<account_identifier>"
export SNOWFLAKE_PAT="<programmatic_access_token>"
```

The SDK expands `SNOWFLAKE_ACCOUNT` to the Snowflake API host. If the account identifier contains an underscore (`_`),
the SDK uses Snowflake’s canonical hyphenated host form.

## Step 1: Send your first turn

TypeScriptPython

Create `agent.ts`:

```
import { CortexAgentClient, type AgentResponse, type Conversation, type Turn } from "@snowflake/cortex-agent-sdk";

const client: CortexAgentClient = new CortexAgentClient({ account: process.env.SNOWFLAKE_ACCOUNT!, auth: process.env.SNOWFLAKE_PAT! });
const conversation: Conversation = await client.conversations.create({
  thread: { origin_application: "agent-quickstart" },
  agent: { type: "inline", spec: { models: { orchestration: "claude-sonnet-4-5" } } },
});
const turn: Turn = await conversation.send("Explain Snowflake micro-partitions in three sentences.");
console.log(`Conversation ID: ${conversation.id}`);
const answer: AgentResponse = await turn.result();
console.log(answer.text);
```

Run `npx tsx agent.ts`.

```
import os
from snowflake.cortex.agents import AgentResponse, Conversation, CortexAgentClient, Turn

client: CortexAgentClient = CortexAgentClient(account=os.environ["SNOWFLAKE_ACCOUNT"], auth=os.environ["SNOWFLAKE_PAT"])
conversation: Conversation = client.conversations.create(
    origin_application="cortex_agent_sdk",
    agent={"type": "inline", "spec": {"models": {"orchestration": "auto"}}},
)
turn: Turn = conversation.send("In one sentence, what is Snowflake?")
answer: AgentResponse = turn.result()
print(answer.text)
```

`send()` starts durable asynchronous work and returns after Snowflake accepts the turn. If a previous turn on
this conversation is still running, `send()` waits for that turn to finish first. The SDK manages the thread ID,
parent message ID, run ID, and `background` and `stream` flags. `turn.id` is the server-assigned run ID;
`result()` waits for the final assistant response.

## Step 2: Read events as they arrive

TypeScriptPython

```
for await (const event of turn.events()) {
  if (event.event === "response.text.delta") process.stdout.write(event.text ?? "");
}
const answer: AgentResponse = await turn.result();
```

```
turn: Turn = conversation.send("Name two Snowflake features.")
for event in turn.events():
    print(event)
answer: AgentResponse = turn.result()
```

Events are replayable, so reading them does not replace `result()`. Call `result()`, `events()`, and `cancel()` on the `Turn` returned by `send()`.

## Step 3: Read structured results

TypeScriptPython

```
const view: AgentResponse = await turn.result();
console.log(view.text);
console.log(view.content);
console.log(view.usage);
console.log(view.requestId);
```

`AgentResponse` also exposes `toolUses`, `toolResults`, `tables`, `charts`, and `messageId` when the agent response
contains those values.

```
answer: AgentResponse = turn.result()
print(answer.text)
print(answer.content)
print(answer.tables)
print(answer.charts)
print(answer.tool_uses)
print(answer.usage)
```

## Step 4: Send a follow-up

The same conversation retains history across turns. You can attach to `conversation.id` later to continue the same
thread from another process. The agent from `create()` is not stored on the thread. Pass it again on each `send()`
after `attach()`.

TypeScriptPython

```
const second: Turn = await conversation.send("Which concept did you mention first, and why?");
const secondAnswer: AgentResponse = await second.result();
const history = await conversation.history();
const resumed: Conversation = await client.conversations.attach(conversation.id);
```

`conversation.id` is the thread ID. `history()` returns `Promise<ConversationMessage[]>`, newest first.

```
second: Turn = conversation.send("Which concept did you mention first, and why?")
second_answer: AgentResponse = second.result()
history = conversation.history()
resumed: Conversation = client.conversations.attach(conversation.id)
```

## Step 5: Handle failures

TypeScriptPython

```
import { AuthenticationError, CortexAgentAPIError, RateLimitError } from "@snowflake/cortex-agent-sdk";

try {
  const turn: Turn = await conversation.send("Analyze Q1 revenue.", { agent: { type: "inline", spec: {} } });
  console.log((await turn.result({ streamReadTimeoutMs: 180_000 })).text);
} catch (error) {
  if (error instanceof AuthenticationError) console.error("Token expired or invalid.");
  else if (error instanceof RateLimitError) console.error("Rate limited. Back off and retry.");
  else if (error instanceof CortexAgentAPIError) console.error(`API error ${error.status} (request ${error.requestId}):`, error.body);
  else throw error;
}
```

```
from snowflake.cortex.agents import AuthenticationError, CortexAgentAPIError, RateLimitError

try:
    turn: Turn = conversation.send(
        "Analyze Q1 revenue.",
        agent={"type": "inline", "spec": {}},
    )
    print(turn.result().text)
except AuthenticationError:
    print("Token expired or invalid.")
except RateLimitError:
    print("Rate limited. Back off and retry.")
except CortexAgentAPIError as error:
    print(f"API error {error.status} (request {error.request_id}): {error.body}")
```

## Next steps

* [Authenticate Cortex Agent SDK requests](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/authentication): Configure PAT, OAuth, key-pair JWT, Snowflake session token, and custom authentication.
* [Conversations](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/conversations): Branch, search, and manage multi-turn state.
* [Direct Agent API](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/running-agents): Use low-level run, thread, and agent-object resources.
* [SDK reference](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/sdk-reference): Configure retries, errors, and request options.

## Legal notices

Where your configuration of Cortex Code uses a model provided on the
[Model and Service Pass-Through Terms](https://www.snowflake.com/en/legal/optional-offerings/offering-specific-terms/ai-features/model-pass-through-terms/),
your use of that model is further subject to the terms for that model on that page.

The data classification of inputs and outputs are as set forth in the following table.

| Input data classification | Output data classification | Designation |
| --- | --- | --- |
| Usage Data | Customer Data | Covered AI Features [[1]](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-agent-sdk/quickstart#footnote-1) |

[1]
Represents the defined term used in the AI Terms and Acceptable Use Policy.

For additional information, refer to [Snowflake AI and ML](https://docs.snowflake.com/guides-overview-ai-features).
