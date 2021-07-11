FROM padhihomelab/alpine-base:3.14.0_0.19.0_0.2

COPY 10-setup-volume.sh /etc/docker-entrypoint.d/

RUN chmod +x /etc/docker-entrypoint.d/* \
 && apk add --update --no-cache \
    tor=0.4.5.9-r0

VOLUME [ "/etc/tor", "/var/lib/tor", "/var/log/tor" ]

CMD tor
