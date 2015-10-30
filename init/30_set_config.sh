#!/bin/bash

[[ ! -f /config/wsdata.json ]] && mv /app/websync/dist/wsdata.json /config/wsdata.json
[[ ! -L /app/websync/dist/wsdata.json ]] && ln -s /config/wsdata.json /app/websync/dist/wsdata.json

chown -R abc:abc /app /config
