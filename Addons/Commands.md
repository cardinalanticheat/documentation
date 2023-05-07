---
author:
  name: micartey
  logo: https://github.com/micartey.png
category: [addons, commands]
---

![](../static/images/banner.png)
![](https://img.shields.io/discord/647922123192533022?color=212121&label=Discord&logo=discord&logoColor=212121&style=for-the-badge)

# Command System

To handle commands you have to implement [Command](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/command/Command.html)

```java
public interface Command {

    boolean execute(CommandSender sender, String command, String[] arguments, String raw);

}
```

## Register Commands

You can register commands just like [events](Events.md) with `Extension.registerCommand`

```java
import me.clientastisch.extension.Extension;
import me.clientastisch.extension.impl.Addon;

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