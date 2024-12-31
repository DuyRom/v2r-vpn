#!/bin/sh

envsubst < /etc/v2ray/config.json > /etc/v2ray/config.json.tmp
mv /etc/v2ray/config.json.tmp /etc/v2ray/config.json

exec "$@"
