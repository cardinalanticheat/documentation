---
title: Monitoring
icon: grafana-grafana
author:
  name: micartey
  avatar: https://github.com/micartey.png
---

Cardinal now supports pushing logs to loki.
Here is a simple template you can use with docker to receive logs and flag information:

```bash
git clone git@github.com:cardinalanticheat/grafana-loki.git
cd grafana-loki
docker compose up -d
```

After deploying the docker compose infrastructure, head over to Cardinal config and enable Loki:

```yaml
Loki:
    enabled: true                # <-- This should be true
    url: "http://localhost:3100" # <-- No need for changes when using the docker compose file
```

You can access the using `admin` for both username and password under the following url:

- [http://localhost:3002/](http://localhost:3002/d/cardinal-flags/cardinal-anticheat-flags-overview)

It comes pre-configured with a simple dashboard to visualize the logs.

![](../static/images/grafana.png){ style="width: 100%; border-radius: 10px; filter: drop-shadow(0 0 0.45rem black);" }

You can use the top bar to filter for checks, player names and categories.
This will allow you to find blatant cheaters and - depending on the configured retention time - understand appeals.
