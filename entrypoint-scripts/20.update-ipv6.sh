#!/bin/sh

if [ "$AUTO_IPv6" == 1 ]; then
    for provider in ipv6.whatismyip.akamai.com \
                    api64.ipify.org \
                    ipv6.icanhazip.com \
                    ifconfig.co
    do
      IPv6_FOUND="$(curl -6 -s "$provider" | tr -d "[:space:]")"
      if [ -n "$IPv6_FOUND" ]; then
        echo "Address $IPv6_FOUND" >> /etc/tor/torrc
        exit 0
      fi
    done

    echo "Could not detect external IPv6!"
fi
