#!/bin/bash

if [[ -d "/files" ]]; then
    exec "/usr/app/node_modules/http-server/bin/http-server" "/files" "-c-1" "-p 80"
else
    echo "/files doesn't exist"
    exit 1
fi

