#!/usr/bin/env bash
set -e
TAG="frosty-cedar-bright-badger"
LIB="bold-chord.a"
URL="https://github.com/dearfkfie/mildhallwaykit/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -O2 -pthread -std=c++17 main.cpp "$LIB" && ./app
