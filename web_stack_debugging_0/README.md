# Web Stack Debugging #0

## I Love Debugging

This project is part of the Webstack Debugging series, focused on developing the skills needed to debug a web stack. Broken or misconfigured web stacks are provided, and the goal is to identify the issue, fix it manually, and document the exact commands used to bring the stack to a working state.

## Description

This repository contains debugging exercises where a Docker container running a broken web server setup is provided. The task is to:

1. Investigate the container to determine why the web server isn't working as expected.
2. Apply the necessary fix(es) manually inside the container.
3. Document the commands used to fix the issue in the corresponding answer file.

## Requirements

- All files are interpreted on Ubuntu 14.04 LTS.
- All files end with a new line.
- Bash scripts:
  - Start with `#!/usr/bin/env bash`
  - Include a comment on the second line explaining what the script does
  - Must be executable
  - Must pass `Shellcheck` without errors
  - Must run without error

## Tasks

### 0. Give me a page!

Fixed Apache inside the provided Docker container so that querying the root of the server returns a page containing `Hello Holberton`.

**File:** `web_stack_debugging_0/0-give_me_a_page`

## Author: Pauline Moraa
##Github: pmiyienda-dotcom
