---
icon: package-dependents
author:
  name: micartey
  avatar: https://github.com/micartey.png
tags: 
    - addons
    - events
---

# Events

As you already know, you have to implement `Listener` to use bukkit events. 
In case you also want to use the [build-in events](https://cardinalanticheat.github.io/addon-api/docs/me/clientastisch/events/event/Event.html) of Cardinal-Anticheat you have to implement `EventListener`. 
That's because Cardinal-Anticheat has an entirely different event-system. 
It's possible to use bukkit events and cardinal events in the same class by implementing both classes.

```java
import me.clientastisch.cardinal.extension.impl.event.EventListener;

public class MyWonderfulEvent implements EventListener {

}
```

The next difference is that Cardinal-Anticheat uses the annotation `@EventManager.Target` above methods.
To make the events asynchronous, you can set the `isAsync` parameter to `true` (default is `false`).

```java
import me.clientastisch.cardinal.events.EventManager

@EventManager.Target
public void onFlag(CheckFireEvent event) {
    event.cancelled();
}
```

Keep in mind, that asynchronous events **cannot** be cancelled.
For a complete overview of all events, visit the [javadoc](https://cardinalanticheat.github.io/addon-api/docs/) reference.

## Register Events

You can register events by calling `Extension.registerListener`

```java
import me.clientastisch.cardinal.extension.Extension;
import me.clientastisch.cardinal.extension.impl.Addon;

public class Core implements Addon {

    @Override
    public void onEnable() throws Exception {
        Extension.registerListener(this, new MyWonderfulEvent());
    }

    @Override
    public void onDisable() throws Exception {

    }
}
```