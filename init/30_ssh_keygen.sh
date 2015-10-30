#!/bin/bash

mkdir -p /config/keys /app/.ssh

if [ ! -f /config/keys/id_rsa -o  ! -f /config/keys/id_rsa.pub ]; then
ssh-keygen -t rsa -N "" -f /app/.ssh/id_rsa
cp /app/.ssh/* /config/keys
else
cp /config/keys/id_rsa.pub /config/keys/id_rsa /app/.ssh/
fi

