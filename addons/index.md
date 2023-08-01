---
icon: workflow
tags: 
  - addons
---

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

Unlike spigot, a file called `addon.json` must be created like following:

```json
{
  "name": "MyAwesomeAddon",
  "author": "Me",
  "main": "my.path.to.Core",
  "version": "v1.0"
}
```