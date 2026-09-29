#!/bin/sh
sed -i "s/8080/$PORT/g" /etc/xray/config.json
sed -i "s/UUID_PLACEHOLDER/$UUID/g" /etc/xray/config.json
sed -i "s|PATH_PLACEHOLDER|$WSPATH|g" /etc/xray/config.json

exec xray run -c /etc/xray/config.json
