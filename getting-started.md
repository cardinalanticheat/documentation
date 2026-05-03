---
icon: bookmark
order: 2
author:
    - name: micartey
      avatar: https://github.com/micartey.png
---

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

!!!info

If you are familiar with e.g. opencode, you can use the following snippet to let agents make the changes which will reduce the likelyhood that you miss something.

```bash
opencode run \ 
    "Disable the packet limit of viaversion, paper, spigot, ... It is usually called 'max-pps' where pps means packets per second, 'pps-tracking-period', 'max-packet-rate' etc... You need to change the value to -1. They appear only in yml/yaml files"
```

_(Note that you need to have opencode installed to be able to use the snippet - the free models are sufficient)_
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

## tpcdump Capabilities

`tcpdump` is used to detect blink and other network based cheats.
It works by checking the SYN/ACK packages on layer 3 before they are processed by the server and therefore allow the anticheat to determin if a packetloss is faked or not.
However, it only works on non-proxied servers.
The proxy creates a new TCP connection which is local and does not have any packet loss.

```bash
sudo groupadd pcap
sudo usermod -aG pcap <your-username>
sudo chgrp pcap $(which tcpdump)
sudo chmod 750 $(which tcpdump)
sudo setcap cap_net_raw,cap_net_admin=eip $(which tcpdump)
```

_(This step is optional)_

## Further Steps

- [Versioning](checklist/versioning.md)
- [Commands](checklist/commands.md)
- [Permissions](checklist/permission.md)
- [Bedrock Support](checklist/bedrock.md)
- [Create Addons](how-to/addons)
- [FAQ](FAQ.md)
