---
author:
  name: micartey
  logo: https://github.com/micartey.png
category: addons
---

![](static/images/banner.png)
![](https://img.shields.io/discord/647922123192533022?color=212121&label=Discord&logo=discord&logoColor=212121&style=for-the-badge)

# Addons

To get a Git project into your build:

1. Add the JitPack repository to your build file
2. Add the dependency

Make sure to **NOT** export the source into your addon but use compileOnly for gradle and provided for maven.

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
import me.clientastisch.extension.Extension;
import me.clientastisch.extension.impl.Addon;

public class Core implements Addon {

    @Override
    public void onEnable() throws Exception {

    }

    @Override
    public void onDisable() throws Exception {

    }
}
```

Unlike spigot, a file called addon.json must be created like following:

```json
{
  "name": "MyAwesomeAddon",
  "author": "Me",
  "main": "my.path.to.Core",
  "version": "v1.0"
}
```