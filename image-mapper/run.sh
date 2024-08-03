#!/bin/bash

die () {
    echo "$1"
    exit 1
}

src="/src"
dst="/dst"

if [[ ! -d "$src" ]]; then
    die "src does not exist"

elif [[ -z "$( ls -A $src )" ]]; then
    die "src is empty"

elif [[ ! -d "$dst" ]]; then
    die "dst does not exist"

elif [[ -z "${QUALITY}" ]]; then
    die "QUALITY env not set"

elif [[ -z "${VIDEOS}" ]]; then
    die "VIDEOS env not set"

elif [[ -z "${TIME}" ]]; then
    die "TIME env not set"

else
    if [[ "$VIDEOS" = "true" ]]; then
        videos="--include-videos"
    fi

    while :
    do
        image_mapper "$src" "$dst" "$QUALITY" $videos --verbose
        echo "Sleeping $TIME seconds before converting again"
        sleep $TIME
    done
fi

