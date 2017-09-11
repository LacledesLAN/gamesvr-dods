# Day of Defeat Source Server in Docker

## Linux

[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-dods.svg)](https://microbadger.com/images/lacledeslan/gamesvr-dods "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-dods.svg)](https://microbadger.com/images/lacledeslan/gamesvr-dods "Get your own image badge on microbadger.com")

**Download**
```
docker pull lacledeslan/gamesvr-dods
```

**Run self tests**
```
NOT YET IMPLEMENTED
```

**Run simple interactive server**
```
docker run -t --rm --net=host lacledeslan/gamesvr-dods ./srcds_run -game dod +map dod_avalanche -console -usercon +sv_lan 1
```

# Build Triggers
Automated builds of this image can be triggered by the following sources:
* [Commits on GitHub](https://github.com/LacledesLAN/gamesvr-srcds-dods)
* [Builds of llgameserverbot/dods-watcher](https://hub.docker.com/r/llgameserverbot/dods-watcher/)
