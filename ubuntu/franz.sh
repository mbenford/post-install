#!/bin/bash

set -e

[ -z "$WORK_DIR" ] && WORK_DIR=$(pwd)

TEMP_FILE="$WORK_DIR/local.deb"
function cleanup {
  rm -f "$TEMP_FILE"
}
trap cleanup EXIT

wget -O "$TEMP_FILE" 'https://github.com/meetfranz/franz/releases/download/v5.5.0/franz_5.5.0_amd64.deb'
sudo apt install -y "$TEMP_FILE"

