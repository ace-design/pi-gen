#!/bin/sh

DATADIR="data_iot"

mkdir -p "$DATADIR"
./geth --datadir "$DATADIR" init genesis.json
./geth --datadir "$DATADIR" account new --password password.txt