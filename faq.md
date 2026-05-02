# FAQ

> A list of frequently asked questions.
> As these questions have been answered a number of times, they are documented here.

## I get kicked for exceeding the packet limit

Disabling the packet limit has been part of the [getting started guide](getting-started/#disable-packet-limit).

If you have not done so yet, I urge you to go though it to ensure proper functionality.

## How do I use nightly?

This is documented in [Versioning](checklist/versioning.md).

If you are unsure what an environment variable is, you can google it and / or ask an LLM.
Beware, that environment variables and their format change depending on operating systems.

## Why can't players move on join?

Players can move after the initial chunks have been confirmed.
That should happen in the first _100ms_.
Once player try to move after the confirmation, they will be able to.

This behavior can be changed, by updating the following config option to `false`:

```yaml
Anticheat:
  ...

  # The anticheat holds a clone of the world for each player in-sync with what he is supposed to have locally
  # Here are some actions you can take to adjust and alter the behavior of the lag-compensated world to e.g. improve performance
  environment:
    # When a player joins, movements are blocked until first chunks have been received and confirmed
    block-initial-movement: true
```

## Mvml configuration could not be loaded

In that case error appears and you are ansure why, you should delete the config file(s).
As Cardinal does use its own flavor of yaml, it is very keen of the format and spaces:

- 2 spaces
- No list support
- Strings must be enclosed in quotation marks

## Could not determine server version. Falling back to retrive bukkit version

This message is not of any concern but more of a debug message.
It will be visible for all newer versions than 1.8.

As long as the listed version is correct, there is no need to report this.

## tcpdump could not be found / accessed without root

tcpdump is a command that allows you to inspect the network traffic at hardware level.
It is an optional feature that only works for non-proxied servers (typically vanilla servers).

This message states the the current context does not have the privileges to access the command.
You should add linux capabilities to allow the current user to execute this command without sudo.
To do that, ask an LLM such as ChatGPT for a step by step guide for your distrobution.

## Can I get a refund?

Depending on the purchase method, it is not possible.
[BBB](https://builtbybit.com/wiki/terms/#5-purchases-and-refunds-8203) does not offer refunds - and neither can an author enforce them.

If the author decides to do so - it is against the TOS and it would be at a financial loss, as the money will be taxed thrice and therefore the author would never receive the amount that the puchase costed in the first place.

## What are the plans for EOL?

Every product has a life cycle.
At some point in time development will end.

The plugin will remain usable as the server infrastructure will still be used.
Many of the required components serve multiple projects and purposes.
Before shutting any of these components down, they would be migrated and / or removed from the plugin via updates to ensure usability.

At last, if the servers shutdown, you will receive further notice on how to run the plugin without any of this infrastructure.
Such behavior has been planned for and is already supported.
