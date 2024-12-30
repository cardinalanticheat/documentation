---
icon: bookmark
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
4. [Bedrock Support](configuration/bedrock.md)
5. [Create Addons](how-to/addons)

## Disable packet limit

Cardinal sends a lot of transaction packets to confirm chunks, block placements, entity movements, etc.
These packets can - especially on join - exceed the limit.
Therefore, you **need** to disable the packet limiter.

Do not worry, Cardinal has checks for that in-place.

### ViaVersion

In case you are using ViaVersion, you need to disable the following two options:

- **max-pps**
- **pps-tracking-period**

By setting both fields to `-1`

### Paper Servers

1. Navigate to your server root
2. Navigate into **config**
3. Open **paper-global.yml**
4. Set **max-packet-rate** to `-1` (2-times)

### Other Servers

The process for other servers is similar to that for paper servers.
The file might just be located somewhere else and named differently.
