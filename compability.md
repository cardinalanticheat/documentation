---
icon: dependabot
author:
  name: micartey
  logo: https://github.com/micartey.png
tags: config
---

![](static/images/banner.png)

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

# Compability

Cardinal supports all versions between 1.8 and 1.19.

However, sometimes it can happen that it is currently broken on certain versions due to the use of packetevents which sometimes publishes untested releases.
The following table will contain all versions that are **currently broken** and **not working**:

| Version | Spigot Forks | Notice                                                                                                                                                                |
| ------- | ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1.18+   | Probably all | PacketEvents has a compability [issue](https://github.com/retrooper/packetevents/issues/580) <br/> with the used netty version resulting in a server crash on startup |
