# Day of Defeat: Source Dedicated Server in Docker

Day of Defeat: Source is a team-based online first-person multiplayer shooter. Set in World War II, the game is a remake of Day of Defeat. The game itself revolves around two teams, the U.S. Army and the Wehrmacht, each with access to six player classes, fighting in a variety of scenarios inspired by World War II engagements in the European Theatre of 1944. Players select from one of six classes to play as, each with its own role within the team. The game's levels are based after real battles in the Allied campaigns in Italy, Sicily and France, such as the Falaise pocket or the beach landings of Operation Shingle at Anzio, as well as fictional battles. Combat can take place in several environments, such as city streets, buildings and sewers. Each online game can sustain a maximum of 32 players.

![Day of Defeat: Source Screenshot](https://raw.githubusercontent.com/LacledesLAN/gamesvr-dods/master/.misc/screenshot1.jpg "Day of Defeat: Source Screenshot")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are intended to be bare-bones and used as a stock server. For examples of building a customized server from this Docker image browse its related child-project [gamesvr-dods-freeplay](https://github.com/LacledesLAN/gamesvr-dods-freeplay). If any documentation is unclear or it has any issues please see [CONTRIBUTING.md](./CONTRIBUTING.md).

## Linux

[![linux/amd64](https://github.com/LacledesLAN/gamesvr-dods/actions/workflows/build-linux-image.yml/badge.svg?branch=master)](https://github.com/LacledesLAN/gamesvr-dods/actions/workflows/build-linux-image.yml)

### Download

```shell
docker pull lacledeslan/gamesvr-dods;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -t --rm --net=host lacledeslan/gamesvr-dods ./ll-tests/gamesvr-dods.sh;
```

### Run Simple Interactive Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-dods ./srcds_run -game dod +map dod_avalanche +sv_lan 1
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
