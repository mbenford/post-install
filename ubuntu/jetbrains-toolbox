#!/bin/bash

set -e

[ -z "$WORK_DIR" ] && WORK_DIR=$(pwd)

TEMP_DIR="$WORK_DIR/jetbrains"
TEMP_FILE="$TEMP_DIR/local"
function cleanup {
  rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

mkdir -p "$TEMP_DIR"
wget -O "$TEMP_FILE" "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar zxvf "$TEMP_FILE" -C "$TEMP_DIR"

(cd $(ls -d $TEMP_DIR/*/ | head -n1) && ./jetbrains-toolbox)

