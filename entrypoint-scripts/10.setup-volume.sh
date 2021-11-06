#!/bin/sh

mkdir -p /etc/tor
cp -R /config/* /etc/tor

if [ -z "${ENTRYPOINT_RUN_AS_ROOT:-}" ]; then
    chown -R $DOCKER_USER:$DOCKER_GROUP /var/lib/tor /var/log/tor
fi
