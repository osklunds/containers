#!/bin/bash

die () {
    echo "$1"
    exit 1
}

thumbnail="/thumbnail"
full="/full"

if [[ ! -d "$thumbnail" ]]; then
    die "thumbnail does not exist"

elif [[ ! -d "$full" ]]; then
    die "full does not exist"

else
    exec "HTTPImageServer" "$thumbnail" "$full" 80
fi

