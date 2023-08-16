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
If you want to use more advanced features that surpase the capabilities of spigot, you can take a look at the [tcpdump section](#allow-tcpdump).

### Download Community Edition

You can download the latest community version of Cardinal [here](https://github.com/micartey/Cardinal-Anticheat/releases).
Please keep in mind that the community version is limited to 10 players and does not support the use of addons as well as banning players.
The community version is only meant for testing purposes as well as to be able to give me feedback and report bugs.
Really active community members can receive a free license key for the pro edition.

[!file](https://github.com/micartey/Cardinal-Anticheat/releases)

### Buy Pro Edition

You can purchase a copy on [builtbybit](https://builtbybit.com/resources/cardinal-anticheat-cac.26622/) (also known as McMarket) or discord.
Afterwards join my discord and notify **micartey** to receive your license key and being able to use all the features Cardinal provides.
Until you receive your license key you can use the community edition to be able to configure Cardinal to your liking.

### Active a license key

To active the license key you have to edit the `Config.yml` and change the last line to include your license key.
Restart the server and you are ready to go.

### Run on Java 9+ Module System 

Cardinal uses [JCloak](https://micartey.github.io/jCloak/) a project which aims to secure the jar file by providing additional runtime and decompiliation features.
Because JCloak uses reflection and Java 9+ introduced a new module system the following JVM flag is **mandatory** for Java 9 and above:

```shell
$ java --add-opens=java.base/java.lang=ALL-UNNAMED -jar <file>
```

It is overall questionable why Java 9+ introduced this module system in the first place as it breaks a lot of exisiting code.


### Configure Netty for Cardinal

Cardinal still has (as of the 4.x release) some performance issues while handling the packets. 
These issues have no impact on the servers tps.
Some packets (e.g. movement packets) trigger an environment update to be able to accuratly evaluate the players actions.
These updates may take a few millisecounds (~2-5ms). While this is not a lot, it can sum up when a lot of players are on the same thread resulting in a negative balance.

To fix this, simply edit the `Spigot.yml` and change the `netty-threads` to 3 times the expected amount players.
This will assure a smooth gaming experience and fix any lags you would've faced.

### Send to many Packets

Cardinal sends a lot of packets to keep track of entity positions on the client side and other actions.
Some Spigots and ViaVersion kicks the player when they send a certain amount of packets per tick resulting in a kick.
You can either increase the amount of packets or disable the tracking as Cardinal takes care of *packet spamming*

### Allow tcpdump

Cardinal uses the `tcpdump` command to capture network packets at hardware layer.
This may or may not create new possibilities for detecting cheaters.
Currently tcpdump is only being used to detect blink. 
This command is not available on non-root users by default.
To allow its use, you have execute the following command on your linux server:

```shell
$ sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump
```

In case tcpdump is not installed, you can install it by executing the following command:

```shell
$ sudo apt-get install tcpdump
```