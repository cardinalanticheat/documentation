---
icon: workflow
tags: 
  - addons
author:
  name: micartey
  avatar: https://github.com/micartey.png
---

# Addons

To get started, you need to add the extension api to your build file:

1. Add the JitPack repository to your build file
2. Add the dependency

Make sure to **NOT** export the source into your addon but use `compileOnly` for gradle and `provide` for maven.

+++ Maven

```xml
<repositories>
  <repository>
      <id>jitpack.io</id>
      <url>https://jitpack.io</url>
  </repository>
</repositories>
```

```xml
<dependency>
    <groupId>com.github.cardinalanticheat</groupId>
    <artifactId>addon-api</artifactId>
    <version>master-SNAPSHOT</version>
</dependency>
```

+++ Gradle

```js
allprojects {
    repositories {
        maven { url 'https://jitpack.io' }
    }
}
```

```js
dependencies {
    compileOnly 'com.github.cardinalanticheat:addon-api:master-SNAPSHOT'
}
```

+++

After adding the addon api as a dependency, start by implementing [Addon](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/extension/impl/Addon.html).

```java
import me.clientastisch.cardinal.extension.Extension;
import me.clientastisch.cardinal.extension.impl.Addon;

public class Core implements Addon {

    @Override
    public void onEnable() throws Exception {

    }

    @Override
    public void onDisable() throws Exception {

    }
}
```

Unlike spigot, a file called `addon.json` must be created like following:

```json
{
  "name": "MyAwesomeAddon",
  "author": "Me",
  "main": "my.path.to.Core",
  "version": "v1.0"
}
```