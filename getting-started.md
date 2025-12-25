---
icon: bookmark
order: 2
author:
    - name: micartey
      avatar: https://github.com/micartey.png
---

# Getting Started

This site serves as a general guide to get Cardinal up and running.

1. [Download Cardinal](https://github.com/micartey/Cardinal-Anticheat/releases)
2. [Versioning](checklist/versioning.md)
3. [Commands](checklist/commands.md)
4. [Permissions](checklist/permission.md)
5. [Bedrock Support](checklist/bedrock.md)
6. [Create Addons](how-to/addons)

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
