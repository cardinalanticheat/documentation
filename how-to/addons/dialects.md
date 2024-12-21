---
icon: database
author:
  name: micartey
  avatar: https://github.com/micartey.png
tags: 
    - addons
---

# Dialects

> Cardinal has a ready-to-use mysql dialact available.
> 
> Use `/cac addon get` and look for the necessary dialects.
> Executing the entire command with the required dialect will automatically install the dialect.

Cardinal Anticheat doesn't handle a database connection.
The reason is fairly easy to understand. Cardinal Anticheat is a close source plugin whose source is never on the server physically. This has legitimate security and privacy concerns.
However, Cardinal Anticheat still has a build in ban system and other features, such as storing flags as so-called reports.

A dialect is used to abstract the database handling by loading the dialect in form of an addon. Creating your own dialect secures the data usage and guarantees the protection of sensitive data, since Cardinal has neither access to the connection nor to any credentials which are typically required. In addition, this gives you the opportunity to migrate to any form of database you desire.

## Implement a dialect

You simply have to create a class and implement [PunishDialect](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/dialects/PunishDialect.html) for bans and [VialationDialect](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/dialects/ViolationDialect.html) for reports. Both interfaces will require you to implement some methods but the implementation is up to you. You can use any database or file system to write and retrieve the information.

## Register the interfaces

Registering a dialect is similar to any other event or command you're trying to register. Therefore, you need to get the static reference of Extension and call the method registerDialect with the required arguments.

```java
import me.clientastisch.cardinal.extension.Extension;
import me.clientastisch.cardinal.extension.impl.Addon;

public class Core implements Addon {

    @Override
    public void onEnable() throws Exception {
        Extension.registerDialect(this, new Punishment());
        Extension.registerDialect(this, new Violation());
    }

    @Override
    public void onDisable() throws Exception {

    }
}
```