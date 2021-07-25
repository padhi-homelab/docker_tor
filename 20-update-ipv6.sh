#!/bin/sh

if [ "$ENABLE_IPv6" == "1" ]; then
    for provider in ipv6.whatismyip.akamai.com \
                    api64.ipify.org \
                    ipv6.icanhazip.com \
                    ifconfig.co
    do
      IPv6_FOUND="$(curl -6 -s "$provider" | tr -d "[:space:]")"
      if [ -n "$IPv6_FOUND" ]; then
        sed -i 's;^ORPort \[.*:.*\].*;;' /etc/tor/torrc
        PORT_FOUND="$(grep "ORPort" /etc/tor/torrc | awk '{print $2}')"
        echo "ORPort [$IPv6_FOUND]:$PORT_FOUND" >> /etc/tor/torrc
        exit 0
      fi
    done

    echo "Could not detect external IPv6!"
    exit 1
fi
