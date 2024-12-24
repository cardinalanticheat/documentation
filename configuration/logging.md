---
icon: note
author:
  name: micartey
  avatar: https://github.com/micartey.png
---

Cardinal logs exceptions to `/plugins/CAC/logs` and creates a file for each day.
In case you run into any kind of bug, please create an issue on github and append the log file.

If you want to disable logging, you can simply add the following JVM flag:

```bash
-DCardinalLoggingLevel=none
```

However, in most cases you don't need to disable logging.
Only exceptions are logged and they hardly occure.
They mainly occure when the bukkit api changes things in releases and these changes haven't been reflected in the code base.
Therefore, these exceptions are very important for the further development of Cardinal.