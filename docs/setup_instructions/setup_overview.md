---
title: Pre-workshop setup
nav_title: Setup
---

This will be a hands-on workshop, so to maximize our time, we would like you to arrive having completed a number of setup tasks, namely setting up accounts and installing software that we will be using.

We will _not_ have time to do all of the setup on the day of the workshop and accomplish all of our goals for the workshop!
Please be aware this setup process may take 1-2 hours to complete if you are using Windows, and somewhat less on a Mac.

If you need any assistance with the installation, do not hesitate to reach out to the Data Lab team by email, or, even better, in the [Cancer Data Science Slack](http://ccdatalab.org/slack)!
We will add you to a training-specific channel after you join the Slack community.

{% if site.include_openrrp %}
**Table of contents**

* TOC goes here
{:toc}
{% endif %}


## Workshop software requirements

You will need to install R, RStudio, several R packages, GitKraken, and a suitable text editor, as well as any system dependencies required for these programs.
For Windows users, you will also need to install Windows Subsystem for Linux (WSL 2).

You may already have some of this software installed, but we encourage you to read through all of the instructions at the links below that pertain to your system.
This is especially important for Windows users given the WSL 2 setup, which can be quite time-consuming.

Please follow the instructions below for your given operating system:

- [macOS installation instructions](mac_installation_instructions.md)
- [Windows installation instructions](windows_installation_instructions.md)

As part of this setup, you will also need to create a [GitHub.com](https://github.com) account if you do not already have one.
You will also need to [configure the GitKraken application](github_gitkraken_setup_instructions.md) to interact with GitHub.

{% if site.include_openrrp %}
    {% include_relative openrrp-setup.md %}
{% endif %}
