---
icon: file-diff
author:
  name: micartey
  avatar: https://github.com/micartey.png
---

## Default Configs

There are a few default configs which are more of a quick setting for the anticheat.
They mostly transform the state of checks, change punishment or disable kicks etc.

| Config     | Description                                                                          |
| ---------- | ------------------------------------------------------------------------------------ |
| *SILENT*   | Silent will disable punishments and set the ban-type to none                         |
| *SETBACK*  | Movement checks will all be set to punishment setback                                |
| *KICK*     | Kick will set the ban-type to kick for all checks                                    |
| *DISABLED* | Disable will set all checks to disabled                                              |
| *MITIGATE* | Will reset all the checks punishments to default values and set the ban-type to none |

## Insecure Configs

Insecure configs are basically entire plugin configurations.
They do not just modify the state of checks, but also touch the main config.
Hence: "incesure".

Here is an overview of available insecure configurations:

| Config           | Description                                                                                                           |
| ---------------- | --------------------------------------------------------------------------------------------------------------------- |
| *INSECURE_LOBBY* | A default config meant for lobby servers. It will disable combat checks and will apply some performance optimizations |