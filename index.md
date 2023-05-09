---
icon: rocket
author:
  name: micartey
  logo: https://github.com/micartey.png
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

# Welcome

Cardinal Anticheat is a minecraft anticheat that uses more than a hundred different checks to make players have a hard time hacking on your server. 
Each check is unique and designed specifically for Cardinal Anticheat. 
So there are currently no hack clients that can easily bypass Cardinal Anticheat. 
This offers a great advantage in keeping your server safe from hackers while known anti-cheats can't do the job.

<div align="center">
    <img src="static/images/ezgif.com-gif-maker.gif">
</div>

## Testserver

If you are interested but don't want to buy a license right away try, you are welcome to join the official public testserver

```
cardinal.micartey.dev
```

!!!
In case the server is offline, please join the official discord server and give me a notice that you want to test the anticheat on the testserver.
!!!

## Custom ban manager

By default Cardinal Anticheat doesn't handle a database connection. The reason is farily easy to understand. Cardinal Anticheat is a close source plugin whose source is never on the server physically. This has legitimate security and privacy concerns. 

That's why you can tell cardinal anticheat in the `Config.yml` which commands should be executed in case of a ban etc.

## Built-in ban system

As already stated does Cardinal Anticheat not handle any database connections by default, however using the build-in ban system requires you to use a so called dialect which you have to write yourself. The documentation for writing a dialect is available [here](./Addons/index.md).

Due to inquiries I have already written a dialect for the mongo and mysql driver. You can download them [here]([./Addons/Dialects.md](https://github.com/micartey/Cardinal-Anticheat/tree/master/dialects))

## Report system

Maybe you don't want a player to be banned right away or lower the chance of banning a legit player. For this reason it makes sense to use Cardinal's report system. Each flag is saved in the database using a [dialect](./Addons/index.md) and based on the number and type of flags, a moderator can decide for himself when a player should be banned. For example you only ban the 10% of players with the most falgs each month etc. Maybe you want to introduce some form of trust factor and scale damage and recoil as a result. You might want to let players with similar trust factors play against each other. If you are a developer and want to get to implement such a system, the possibilities are limitless.

## Addons

Cardinal also allows loading, developing and sharing addons. There are already some addons on my [discord](https://discord.gg/fxTn7v8) server. Furthermore, there is a rather good documentation for developsers on how to write your own addons [here](./Addons/index.md).