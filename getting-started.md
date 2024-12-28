---
icon: bookmark-fill
order: 2
author:
    - name: micartey
      avatar: https://github.com/micartey.png
---

# Getting Started

This site serves as a general guide to get Cardinal up and running.

1. [Download Cardinal](configuration/versioning.md)
2. [Commands](configuration/commands.md)
3. [Permissions](configuration/permission.md)
4. [Create Addons](how-to/addons)

## Running 1.20+ Server

When you run version 1.20 or abov, you need to set the following property:

```bash
-Dpaper.disablePluginRemapping=true
```

This will prevent paper from trying to do some unwanted bytecode manipulation.
However, this **might break** some legacy plugins that rely on the remapping to work.