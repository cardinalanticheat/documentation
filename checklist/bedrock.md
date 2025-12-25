---
icon: bug
order: 0
author:
    - name: micartey
      avatar: https://github.com/micartey.png
---

> Bedrock support is experimental but stable
>
> That means that you can use it without worries, but decisions about banning **should not** be made automatically

## Setup

1. [Download GeyserMc](https://geysermc.org/download)
2. [Download Floodgate](https://geysermc.org/download?project=floodgate)

### Configure Geyser to use Floodgate

After starting your server once, it will generate the Geyser-Spigot config in your plugins directory.
Please be aware that details may wary - make sure to compare this information with the official Flodgate documentation.

Edit the config:

```yaml #5
remote:

    # Change the auth-type to "floodgate" like below
    # This value is by default "online"
    auth-type: floodgate
```
