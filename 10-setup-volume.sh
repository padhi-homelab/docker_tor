#!/bin/sh

if [ -z "${ENTRYPOINT_RUN_AS_ROOT:-}" ]; then
    chown -R $DOCKER_USER:$DOCKER_GROUP /var/lib/tor /var/log/tor
fi
