#!/bin/bash

set -e

[ -z "$WORK_DIR" ] && WORK_DIR=$(pwd)

TEMP_FILE="$WORK_DIR/local.deb"
function cleanup {
  rm -f "$TEMP_FILE"
}
trap cleanup EXIT

wget -O "$TEMP_FILE" 'https://go.microsoft.com/fwlink/?LinkID=760868'
sudo apt install -y "$TEMP_FILE"

