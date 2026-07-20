FROM lacledeslan/steamcmd:linux as dods-builder

# Copy cached build files (if any)
COPY /build-cache /output

# Download Day of Defeat: Source
RUN /app/steamcmd.sh +force_install_dir /output +login anonymous +app_update 232290 validate +quit;

COPY ./dist/linux/ll-tests /output/ll-tests

#=======================================================================
FROM debian:bookworm-slim

ARG BUILD_NODE=unspecified
ARG GIT_REVISION=unspecified

HEALTHCHECK NONE

LABEL architecture="i386" \
    com.lacledeslan.build-node="$BUILD_NODE" \
    maintainer="Laclede's LAN <contact@lacledeslan.com>" \
    org.opencontainers.image.description="Day of Defeat: Source Dedicated Server" \
    org.opencontainers.image.revision="$GIT_REVISION" \
    org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-dods" \
    org.opencontainers.image.vendor="Laclede's LAN"

RUN dpkg --add-architecture i386 && \
    apt-get update && apt-get install -y \
        ca-certificates lib32gcc-s1 libncurses5:i386 libsdl2-2.0-0:i386 libstdc++6 libstdc++6:i386 locales locales-all tmux && \
    apt-get clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*;

ENV LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8


# Set up Enviornment
RUN useradd --home /app --gid root --system DODS && \
    mkdir -p /app/.steam/sdk32 && \
    chown DODS:root -R /app;

COPY --chown=DODS:root --from=dods-builder /output /app

RUN chmod +x /app/ll-tests/*.sh && \
    echo $'\n\nLinking steamclient.so to prevent srcds_run errors' && \
    ln -s /app/bin/steamclient.so /app/.steam/sdk32/steamclient.so

USER DODS

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
