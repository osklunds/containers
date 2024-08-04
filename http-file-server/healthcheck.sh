#!/bin/bash

if [[ ! -d "/files" ]]; then
    exit 1
fi

curl -f http://127.0.0.1:80 || exit 1
