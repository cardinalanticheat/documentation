# Addons

To get started, you need to add the extension api to your build file.
Make sure to **NOT** export the source into your addon but use `compileOnly` for gradle and `provide` for maven.
Exporting the source will result in an error or potentially a JVM crash!

+++ Gradle

```js
repositories {
    mavenCentral()
    
    ivy {
        url = 'https://raw.githubusercontent.com/cardinalanticheat/addon-api/e52c2ef713232a33e7faeb053bd449e414406cfa/'
        patternLayout {
            artifact '[artifact].[ext]'
        }
        metadataSources {
            artifact()
        }
    }
}

dependencies {
    compileOnly name: 'addon-api', ext: 'jar', changing: true
}

configurations.all {
    resolutionStrategy.cacheChangingModulesFor 0, 'seconds'
}
```

When you want to use a newer version, you need to update the hash in the ivy repository url.
You need to use the fully qualified name of the commit in question.

+++ Maven

The simplest method for maven is to install the addon api locally by running the following snippet:

```bash
wget https://raw.githubusercontent.com/cardinalanticheat/addon-api/refs/heads/master/addon-api.jar

mvn install:install-file \
   -Dfile=addon-api.jar \
   -DgroupId=cardinalanticheat \
   -DartifactId=addon-api \
   -Dversion=1.0 \
   -Dpackaging=jar
```

And then add the required dependency.
You can do that **only** after you have completed the first step.

```xml
<dependencies>
    <dependency>
        <groupId>cardinalanticheat</groupId>
        <artifactId>addon-api</artifactId>
        <version>1.0</version>
        <scope>provided</scope>
    </dependency>
</dependencies>
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

When an addon does not load, make sure that this file is present in the actual jar at root level.
This process is equal to the `plugin.yml` that you need for bukkit plugins!
