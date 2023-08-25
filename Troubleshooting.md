---
icon: question
---


### Sending to many Packets

Cardinal sends a lot of packets to keep track of entity positions on the client side and other actions.
Some Spigot forks and plugins like ViaVersion kick the player when they send a certain amount of packets per tick resulting in a kick.
You can either increase the amount of packets or disable the tracking as Cardinal takes care of *packet spamming*.

### Everything is borken

If you have the feeling that everyting is broken and you are getting flagged without reason, there might be a plugin that prevents Cardinal from correctly processing packets.

To figure out which plugins is interfering, remove all plugins except Cardinal and add them one by one when until you find out which plugins is the cultprint. 
It is very likely, that the developer of that plugin is not following any convetions. 
In that case, create an issue and wait until that issue is fixed. 

If you are unsure - create an issue [here](https://github.com/micartey/Cardinal-Anticheat/issues) and I'll create an issue and link it when it truly is not caused by Cardinal.
Should the project be discontinued or the release depricated, consider upgrading or using a different plugin instead.
