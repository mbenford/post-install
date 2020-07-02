#!/bin/bash

set -e

sudo echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list
sudo get -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -

sudo apt update
sudo apt install -y enpass

