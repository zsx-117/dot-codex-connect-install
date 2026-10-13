# Dot Codex Connect

**Give Dot the task. Continue it in Codex. Get the reply back.**

Keep the conversation with Dot while your connected Mac does the development work. Ask Dot to pass an authorized task to a chosen local Codex conversation, then bring its response back—without copying messages between apps.

**Purchases are now open · $9.80 USD once · Permanent account access · Future MCP updates included**

[Buy permanent access](https://dot.xiaobaituzi.com/?utm_source=github&utm_campaign=readme#purchase) · [Installation guide](https://dot.xiaobaituzi.com/setup) · [Check your account](https://dot.xiaobaituzi.com/account)

## What you can do

- Continue work in an existing local Codex conversation with its project context.
- Ask Dot to send instructions and bring back task status and replies.
- Return to saved task progress after a temporary disconnect.

Your Mac must stay awake and online. This is not a cloud computer rental or a replacement for your own ChatGPT/Codex plan.

## What am I buying?

You buy access to the **closed-source Dot Codex Connect service**, associated with your signed-in ChatGPT account. The price is a one-time payment, not a subscription. Future MCP updates are included; model usage and your own ChatGPT/Codex plans are separate.

The **installation skill is free to download**. It helps your assistant guide setup; it is not the MCP service, a license key, or a way to bypass payment. This repository contains installation instructions only—no private service source code.

## From purchase to your first connection

1. **Check compatibility first.** You need an Apple silicon Mac, local Codex, and a ChatGPT client that supports adding custom MCP servers. The service is not yet in the public plugin directory. If your client does not offer custom MCP connections, do not purchase for that client yet.
2. **Buy on the official website.** Sign in with the ChatGPT account you intend to use, then complete the $9.80 checkout. Purchase through the website so the order can be linked to your account.
3. **Check your access.** Return to [My account](https://dot.xiaobaituzi.com/account). Access activates after the payment is verified. If it is still pending, use **Check payment status**; do not pay again. Contact support if verification cannot finish.
4. **Connect the MCP and your Mac.** Follow [the setup guide](https://dot.xiaobaituzi.com/setup), use the same account, and complete the login and Mac-connection approval yourself. The compiled Mac connector is downloaded separately from that guide.
5. **Confirm access and connection.** Ask Dot to check your account access and Mac status. Then choose a conversation and authorize the task you want to run.

No manual activation code is needed. Downloading the skill, paying for access, and connecting your Mac are separate steps.

## Install this skill

Ask your coding assistant:

> Install the `skills/dot-codex-install` skill from `zsx-117/dot-codex-connect-install` on GitHub.

Then ask:

> Use $dot-codex-install to check compatibility and help me connect Dot Codex Connect.

Or download the [installation skill ZIP](https://github.com/zsx-117/dot-codex-connect-install/releases/latest/download/dot-codex-install.zip), unzip it, and put the `dot-codex-install` folder in your assistant's skills directory. Keep its `SKILL.md` and `agents` folder together. In Codex, the default location is `~/.codex/skills/`.

The skill explains the purchase and setup steps. It does not purchase access, silently approve permissions, read your conversations, or send tasks as part of installation. It sends no automatic installation telemetry.

## Compatibility and limits

The current release connects **one authorized Apple silicon Mac and its saved local Codex conversations**. Intel Macs, Windows, Linux, additional devices and cloud-only conversations are not included. The connector is currently distributed as a preview; follow the official setup instructions and keep macOS security protections enabled.

Browser automation and desktop-control tools are not inherited by this connection. A connected plugin does not by itself prove that a task has completed. Authorize each task and check its actual result.

## Help

[Setup and current connection details](https://dot.xiaobaituzi.com/setup) · [Terms](https://dot.xiaobaituzi.com/terms) · [Privacy](https://dot.xiaobaituzi.com/privacy) · [Email support](mailto:tianwangzh4@gmail.com)

GitHub views, clones and downloads do not measure verified installations or paid activations. An optional installation self-report is available on the setup page.

Independent software. Not affiliated with or endorsed by OpenAI.
