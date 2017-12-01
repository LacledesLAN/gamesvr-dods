# Day of Defeat Source Dedicated Server in Docker

## Linux

[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-dods.svg)](https://microbadger.com/images/lacledeslan/gamesvr-dods "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-dods.svg)](https://microbadger.com/images/lacledeslan/gamesvr-dods "Get your own image badge on microbadger.com")

**Download**
```
docker pull lacledeslan/gamesvr-dods
```

**Run Simple Interactive Server**
```
docker run -it --rm --net=host lacledeslan/gamesvr-dods ./srcds_run -game dod +map dod_avalanche +sv_lan 1
```

**Run Self Tests**
```
docker run -t --rm --net=host lacledeslan/gamesvr-dods ./ll-tests/gamesvr-dods.sh
```
