FROM padhihomelab/alpine-base:3.14.2_0.19.0_0.2

ENV AUTO_IPv6=0

COPY entrypoint-scripts \
     /etc/docker-entrypoint.d/99-extra-scripts

RUN chmod +x /etc/docker-entrypoint.d/99-extra-scripts/*.sh \
 && apk add --update --no-cache \
    curl \
    tor=0.4.5.10-r0

VOLUME [ "/config", "/var/lib/tor", "/var/log/tor" ]

CMD tor
