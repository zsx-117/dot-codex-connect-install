---
name: dot-codex-install
description: Help install and connect Dot Codex Connect for an existing authorized account. Use for setup, reconnection, or checking installation; this skill does not send tasks or purchase access.
---

# Install Dot Codex Connect

Help the user connect the official Dot Codex Connect service to their own ChatGPT and Codex account. This skill contains setup instructions only. Installing it does not include a service license.

## Installation

1. Check whether the service plugin is already connected before offering another installation. In a supported environment, use the plugin-management installation UI with the published plugin ID from [service setup](https://dot-codex-connect.zhaoyuexuan00.chatgpt.site/setup). If that page does not provide an available installation entry, report that setup is not available yet; do not invent an ID or substitute another plugin.
2. If an installation UI cannot be offered, open the documented installation entry and let the user complete connection in their application. Let the user handle login, account consent and device permissions. Do not read tokens, passwords or local authentication files.
3. The service requires an already active account entitlement and a linked Mac. Follow the account and device setup shown in the service's installation page. Do not initiate a purchase or claim that installation activates the account.
4. Once connected, call the service's available read-only connection and entitlement checks. Report installation, account entitlement and Mac connection separately. Discover the actual tool names available in the current session rather than assuming installation makes them callable.

For reconnection, reuse the existing service plugin and the user's already linked device. If tools are missing, ask the user to reconnect or rescan that plugin. Do not repeatedly reinstall, alter unrelated MCP configuration or create relay chats.

Do not send a task, read any conversation body or perform a communication test as part of installation unless the user specifically asks for it. Do not describe private implementation details or troubleshoot by probing undocumented endpoints. If setup cannot finish, give the visible error and the documented next step.
