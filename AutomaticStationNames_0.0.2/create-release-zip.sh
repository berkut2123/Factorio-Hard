#!/bin/sh

set -e

POS="${0%/*}"; test "$POS" = "$0" && POS=.
cd "$POS"

if [ "$#" != 1 ]; then
    echo "Usage: create-release-zip.sh <1.2.3>" >&2
    exit 1
fi
VERSION="$1"

VERSION2="$(git cat-file blob "release-$1:info.json" | jq -r .version)"
if [ "$VERSION" != "$VERSION2" ]; then
    echo "Error: Version mismatch: Version in info.json is '$VERSION2', but file version is '$VERSION'"
    exit 1
fi

mkdir -p releases

git archive -o "releases/AutomaticStationNames_$1.zip" --prefix="AutomaticStationNames_$1/" "release-$1"
