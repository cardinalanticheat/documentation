---
icon: database
author:
  name: micartey
  logo: https://github.com/micartey.png
tags: 
    - addons
---

![](../static/images/banner.png){ style="width: 70%; display: block; margin-left: auto; margin-right: auto" }

<div align="center" style="margin-bottom: 2rem">
    <img
        src="https://img.shields.io/badge/Written%20in-java-%23EF4041?style=for-the-badge"
        height="30"
        style="margin-left: 3px"
    />
    <a href="https://discord.gg/fxTn7v8">
        <img 
            src="https://img.shields.io/discord/647922123192533022?color=212121&label=Discord&logo=discord&logoColor=212121&style=for-the-badge"
            height="30"
            style="margin-left: 3px"
        />
    </a>
    <a href="https://cardinalanticheat.github.io/addon-api/docs/" target="_blank">
        <img
            src="https://img.shields.io/badge/javadoc-reference-5272B4.svg?style=for-the-badge"
            height="30"
            style="margin-left: 3px"
        />
    </a>
</div>

# Dialects

As already mentioned, Cardinal Anticheat doesn't handle a database connection.
The reason is farily easy to understand. Cardinal Anticheat is a close source plugin whose source is never on the server physically. This has legitimate security and privacy concerns.
However, Cardinal Anticheat still has a build in ban system and other features, such as storing flags as so called reports.

A dialect is used to abstract the database handling by loading the dialect in form of an addon. Creating your own dialect secures the data usage and guarantees the protection of sensitive data, since Cardinal has neither access to the connection nor to any credentials which are typically required. In addition, this gives you the opportunity to migrate to any form of database you desire.

## Getting Started

You simply have to create a class and implement [PunishDialect](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/dialects/PunishDialect.html) for bans and [VialationDialect](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/dialects/ViolationDialect.html) for reports. Both interfaces will require you to implement some methods but the implementation is up to you. You can use any database or filesystem to write and retrive the informations.

## Register a dialect

Registering a dialect is similar to any other event or command you're trying to register. Therefore you need to get the static reference of Extension and call the method registerDialect with the required arguments.

```java
import me.clientastisch.extension.Extension;
import me.clientastisch.extension.impl.Addon;

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