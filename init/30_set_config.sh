#!/bin/bash

[[ ! -f /config/wsdata.json ]] && cp /defaults/default.wsdata.json /config/wsdata.json
[[ ! -L /app/websync/wsdata.json ]] ln -s /config/wsdata.json /app/websync/wsdata.json

chown -R abc:abc /app /config
