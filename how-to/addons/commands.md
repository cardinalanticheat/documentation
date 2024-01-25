---
icon: codescan
author:
  name: micartey
  avatar: https://github.com/micartey.png
tags: 
    - addons
    - commands
---

# Commands

To handle commands you have to implement [Command](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/command/Command.html)

```java
public interface Command {

    boolean execute(CommandSender sender, String command, String[] arguments, String raw);

}
```

## Register Commands

You can register commands just like [events](Events.md) with `Extension.registerCommand`

```java
import me.clientastisch.cardinal.extension.Extension;
import me.clientastisch.cardinal.extension.impl.Addon;

public class Core implements Addon {

    @Override
    public void onEnable() throws Exception {
        Extension.registerCommand(this, new MyWonderfulCommand());
    }

    @Override
    public void onDisable() throws Exception {

    }
}
```