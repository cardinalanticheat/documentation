---
icon: git-branch
author:
  name: micartey
  avatar: https://github.com/micartey.png
---

# Versioning

> Cardinal uses by default the latest nightly release

### Stay on a fixed version

Cardinal consists of a loader that always uses the latest release so that you don't have to download newer versions.
To stay on a fixed version, you only have to set an environment variable before starting the server:

```shell
export CARDINAL_HASH=<hash>
```

The current hash can be shown by executing the `cac` command and save the last 8 characters.

### Use unreleased versions

While stable versions are more beneficial, you might want to test out newer features, detections or fixes before it has been rolled-out.
You can do this by setting another environment variable:

```shell
export CARDINAL_BRANCH=stable # nightly (default), stable
```

Alternatively, you can specify the branch using a jvm flag.
Using an environment variable will have a higher priority.

```shell
java -jar -DCardinalBranch=nightly -Xmx...
```