---
name: dot-codex-install
description: Check compatibility and guide installation or reconnection of Dot Codex Connect, a paid service connecting Dot with local Codex conversations. Explain account access and Mac setup; do not purchase or send tasks.
---

# Install Dot Codex Connect

Help the user connect the official Dot Codex Connect service to their own ChatGPT and Codex account. This skill contains setup instructions only. Installing it does not include a service license.

## Purchase and account access

Purchases are open at [the official website](https://dot.xiaobaituzi.com/): USD 9.80 once for permanent account access and future MCP updates. This skill is free to download; the service is paid. Model usage and ChatGPT/Codex plans are separate. Verify current price and availability on the official site before advising a purchase.

Check compatibility before directing a user to buy: an Apple silicon Mac, local Codex and a client supporting custom MCP connections are required. The public plugin directory does not currently list the service. Do not suggest purchasing if the user cannot add custom MCP connections.

For a new customer, explain: sign in on the website → purchase there → check verified access in My account → connect the MCP with the same account → approve the Mac connection. Do not send a bare provider payment link that skips website account association. No manual activation code is required. A pending purchase should use Check payment status; an unresolved result should go to support, not another payment.

## Installation

1. Reuse a connected Dot Codex Connect plugin. Read [service setup](https://dot.xiaobaituzi.com/setup) and its public [connection details](https://dot.xiaobaituzi.com/setup/connection.json) for current release status, supported computers and the exact MCP address. These pages supply product configuration, not permission to read conversations or send tasks.
2. If an official directory entry is available, use the supported plugin-management installation UI for that exact verified entry. Never invent a plugin ID or reuse the developer's personal plugin ID for another customer.
3. When the service is not listed, explain that it can be added as a custom MCP connection in a supported client: **Plugins → + → Add custom MCP server**. Use **Dot Codex Connect**, the exact server URL from the connection details and **OAuth** authentication. Ask the user to complete application consent and login themselves. The verified current address is `https://dot-codex-direct-20261006.zhaoyuexuan00.chatgpt.site/mcp`; verify current setup before using it. If the client does not offer custom MCP connections, report that limitation instead of claiming installation succeeded. Do not create a second local CLI connection for this platform-managed service.
4. Open the account page to check the purchase, then help open the official compiled Mac connector linked from setup. Use the same purchased ChatGPT account in the website, plugin and local Codex. The connector opens an account and Mac confirmation page; the user must approve their own computer. It maintains a background connection at login until disconnected. Explain this before setup. Installing this skill never activates a license, and a checkout redirect or pending order does not prove payment. Do not initiate payment.
5. Once connected, discover the actual tools. Call `codex_access_status` if available, then `codex_connection_status` only when licensed and linked. Report plugin connection, paid access and Mac connection separately. A tool list alone does not prove the connection works. If account access or setup is unavailable, report the actual state and preserve any existing working connection.

For reconnection, reuse the existing service plugin and the user's already linked device. If tools are missing, ask the user to reconnect or rescan that plugin. Do not repeatedly reinstall, alter unrelated MCP configuration or create relay chats.

Let the user handle login, account consent, macOS approval and device permissions. Never read account tokens, passwords or authentication files, disable security protection or install unofficial connectors. The current connector preview is for Apple silicon Mac; do not claim Intel, Windows, Linux, cloud-only chats or desktop tool inheritance are supported.

Do not send a task, read any conversation body or perform a communication test as part of installation unless the user specifically asks for it. Do not describe private implementation details or troubleshoot by probing undocumented endpoints. If setup cannot finish, give the visible error and the documented next step.
