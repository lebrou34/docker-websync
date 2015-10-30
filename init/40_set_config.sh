#!/bin/bash

[[ ! -L /app/websync/dist/wsdata.json && -f /app/websync/dist/wsdata.json ]] && rm /app/websync/dist/wsdata.json

[[ ! -f /config/wsdata.json ]] && cp /defaults/wsdata.json /config/wsdata.json

[[ ! -L /app/websync/dist/wsdata.json ]] && ln -s /config/wsdata.json /app/websync/dist/wsdata.json

chown -R abc:abc /app /config
