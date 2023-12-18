---
icon: book
author:
  name: micartey
  avatar: https://github.com/micartey.png
order: 1
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

# Getting Started

Cardinal requires Java 8 or above to run. You can download the latest version of Java [here](https://adoptopenjdk.net/).
For Java 9 and above take a look at the [Run on Java 9+ Module System](#run-on-java-9-module-system) section.
If you want to use more advanced features that surpass the capabilities of spigot, you can take a look at the [tcpdump section](#allow-tcpdump).

## Choose an Edition

There are currently two editions available. They are different in features and pricing. Please check out the [pricing](/pricing) page to check out all the available information on the different editions.

### Download Community Edition

You can download the latest community version of Cardinal [here](https://github.com/micartey/Cardinal-Anticheat/releases).
The community edition contains most of the features but is limited in mainly support and the lack of a ban system.

[!file](https://github.com/micartey/Cardinal-Anticheat/releases)

### Buy Pro Edition

You can purchase a copy on [builtbybit](https://builtbybit.com/resources/cardinal-anticheat-cac.26622/) (also known as McMarket) or discord.
Until you receive your license key you can use the community edition to be able to configure Cardinal to your liking.

[!file Cardinal.jar](https://builtbybit.com/resources/cardinal-anticheat-cac.26622/)

To activate the license key you have to edit the `Config.yml` and change the last line to include your license key.
Restart the server and you are ready to go.

## Configuration

While Cardinal is mostly plug-and-play, there are a few things that need to be considered or done. 
Please read through the following steps and make changes if needed. 

### Run on Java 9+ Module System 

Cardinal uses [JCloak](https://micartey.github.io/jCloak/) a project which aims to secure the jar file by providing additional runtime and decompiliation features.
Because JCloak uses reflection and Java 9+ introduced a new module system the following JVM flag is **mandatory** for Java 9 and above:

```shell
$ java --add-opens=java.base/java.lang=ALL-UNNAMED -jar <file>
```

It is overall questionable why Java 9+ introduced this module system in the first place as it breaks a lot of existing code.

### Stay on a fixed version

Cardinal consists of a loader that always uses the latest release so that you don't have to download newer versions. 
While each release is always tested and walks through several stages you might want to wait to verify that a new version is compatible and stable.
To stay on a fixed version, you only have to set an environment variable before starting the server:

```shell
export CARDINAL_HASH=<hash>
```

The current hash can be shown by executing the `cac` command and save the last 8 characters.

### Use unreleased versions

While stable versions are more beneficial, you might want to test out newer features, detections or fixes before it has been rolled-out.
You can do this by setting another environment variable:

```shell
export CARDINAL_BRANCH=nightly # nightly, alpha, beta, stable (default)
```

### Use caching to recuce startup time

As Cardinal always loads the jar from the cloud, it sometimes can take quite some time to start the server.
This time can be reduced by enabling caching.
This will use the Stale-While-Revalidate strategy and load the newest version for the next startup

```shell
export CARDINAL_CACHE=true
```

### Allow tcpdump

Cardinal uses the `tcpdump` command to capture network packets at hardware layer.
This may or may not create new possibilities for detecting cheaters.
Currently, tcpdump is only being used to detect blink. 
This command is not available on non-root users by default.
To allow its use, you have to execute the following command on your Linux server:

```shell
$ sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump
```

In case tcpdump is not installed, you can install it by executing the following command:

```shell
$ sudo apt-get install tcpdump
```