# Getting Started

!!!danger
**PLEASE READ THIS PAGE IN ITS ENTIRETY**

Any questionts, that appear to provide a lack of knowledge that has been provided in this documentation, will be ignored or pointed to the documentation.

Go through this page **step-by-step**!
!!!

## Download Cardinal

[!file anticheat-loader.jar](https://cdn.micartey.dev/api/v1/download/blob/anticheat-loader.jar)

Alternative, you can use `wget` to download the plugin on your server.

```bash
wget https://cdn.micartey.dev/api/v1/download/blob/anticheat-loader.jar
```

You have to update this binary rarely, as this is only a loader for the actual anticheat.
That means, that the newest version will always be used.

## Disable packet limit

!!!warning
**This step is not optional**

Ignoring this will lead to seemingly random kicks for exceeding the packet limit.
!!!

Cardinal sends a lot of transaction packets to confirm chunks, block placements, entity movements, etc.
These packets can - especially on join - exceed the limit.
Therefore, you **need** to disable the packet limiter.

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

## Further Steps

- [Versioning](checklist/versioning.md)
- [Commands](checklist/commands.md)
- [Permissions](checklist/permission.md)
- [Bedrock Support](checklist/bedrock.md)
- [Create Addons](how-to/addons)
- [FAQ](FAQ.md)
