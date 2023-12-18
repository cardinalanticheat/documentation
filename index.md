---
icon: rocket
---

![](static/images/banner.png){ style="width: 70%; display: block; margin-left: auto; margin-right: auto" }

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

> Cardinal is currently unable to run with more than 10 players on a server. 
> It is a concept anticheat with novel approaches and hardly focuses on scalability.
> While this still is a priority, the network latancy it introduces create congestion if more than 10 players are active at the same time.
> This is an issue that needs to be resolved in the future.
> Apart from that, it is lightweight and won't affect your servers TPS etc.

# Welcome

Cardinal Anticheat is a Minecraft anticheat that uses several novel approches to make players have a hard time hacking on your server. 
Each check is unique and designed specifically for Cardinal Anticheat always trying to find methods and ways that haven't been tested before.
This offers a great advantage in keeping your server safe from hackers while known anti-cheats can't do the job.

![](static/images/ezgif.com-gif-maker.gif){ style="width: 100%; height: 250px" }

## Testserver

If you are interested, you are welcome to join the official public testserver and try it yourself!

```
cardinal.micartey.dev
```

!!!
In case the server is offline, please join the official discord server and give me a notice that you want to test the anticheat on the testserver.
!!!


## Features

Apart from detecting cheaters, Cardinal Anticheat also offers a lot of other features that may be useful for you as a server owner.

| Feature             | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ------------------- |--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addons              | Cardinal also allows loading, developing and sharing addons. There are already some addons on my [discord](https://discord.gg/fxTn7v8) server. Furthermore, there is a rather good documentation for developers on how to write your own addons [here](how-to/addons/)                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Report System       | Maybe you don't want a player to be banned right away or lower the chance of banning a legit player. For this reason it makes sense to use Cardinal's report system. Each flag is saved in the database using a [dialect](how-to/addons/dialects/) and based on the number and type of flags, a moderator can decide for himself when a player should be banned. For example, you only ban the 10% of players with the most flags each month etc. Maybe you want to introduce some form of trust factor or scale damage as a result. You might want to let players with similar trust factors play against each other. If you are a developer and want to get to implement such a system, the possibilities are limitless |
| Custom Ban Manager  | By default Cardinal Anticheat doesn't handle a database connection. The reason is fairly easy to understand. Cardinal Anticheat is a close source plugin whose source is never disclosed. This has legitimate security and privacy concerns                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Built-in ban system | As already stated does Cardinal Anticheat not handle any database connections by default, however using the built-in ban system requires you to use a so-called dialect which you have to write yourself. The documentation for writing a dialect is available [here](how-to/addons/dialects/).                                                                                                                                                                                                           |

