# Dot Codex Connect

Send a task from Dot to a chosen Codex conversation and get its reply back.

**A paid, closed-source service. USD 9.80 once, permanent account access and future MCP updates included.** This repository contains only the installation skill and customer instructions. Installing the skill does not activate the service.

[Explore the service and permanent access](https://dot.xiaobaituzi.com/?utm_source=github&utm_campaign=readme)

## Install the skill

Use your coding assistant's skill installer to install `skills/dot-codex-install` from this repository, then ask:

> Use $dot-codex-install to help me connect my account.

You can also copy the `skills/dot-codex-install` folder into your own Codex skills directory. Keep the directory name and its `SKILL.md` together.

Or download the [skill ZIP](https://github.com/zsx-117/dot-codex-connect-install/releases/download/v0.2.0/dot-codex-install.zip), unzip it, and copy `dot-codex-install` into your skills directory. The ZIP contains setup instructions only.

After installation, you may optionally [confirm you installed the skill](https://dot.xiaobaituzi.com/setup?utm_source=github&utm_campaign=skill_setup). This is an anonymous self-report; no automatic telemetry is sent by the skill.

## Add the service before directory listing

The service has not yet been published in OpenAI's public plugin directory. The skill guides setup using the official custom MCP connection flow; it does not silently install an application or approve access for you.

In a client that supports this option, choose **Plugins → + → Add custom MCP server**, enter **Dot Codex Connect** and the exact address in [connection details](https://dot.xiaobaituzi.com/setup/connection.json), select **OAuth**, then complete login and consent yourself. Follow [the three-step setup guide](https://dot.xiaobaituzi.com/setup) for purchase-account access and your own Mac connection. If your client lacks this option, setup cannot be completed there yet.

## Requirements

Use your own ChatGPT and Codex accounts, an active service license and a linked Mac. The connector preview supports Apple silicon Macs; Intel, Windows, Linux and cloud-only conversations are not part of this release. Your Mac must stay awake and online. Desktop browser and computer-control tools are not inherited. Check the [installation page](https://dot.xiaobaituzi.com/setup) for release and compatibility details.

Model usage belongs to your own accounts and is not included in this purchase. Permanent service access belongs to your ChatGPT account; computer pairing connects your workspace.

**Release status:** the website is running a purchase-interest preview. You can try the checkout steps, but payment processing has not opened: no money is collected, no real order is placed, and no service access is granted. Customer service activation is still being prepared.

GitHub views, clones, ZIP downloads and optional installation reports measure different things. None is a verified paid activation count.

This is an independent product and is not made or endorsed by OpenAI.
