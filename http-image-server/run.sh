#!/bin/bash

die () {
    echo "$1"
    exit 1
}

thumbnail="/thumbnail"
full="/full"

if [[ ! -d "$thumbnail" ]]; then
    die "thumbnail does not exist"

elif [[ -z "$( ls -A $thumbnail )" ]]; then
    die "thumbnail is empty"

elif [[ ! -d "$full" ]]; then
    die "full does not exist"

elif [[ -z "$( ls -A $full )" ]]; then
    die "full is empty"

else
    exec "HTTPImageServer" "$thumbnail" "$full" 80
fi

