#!/usr/bin/env bash
. ../config/init.sh

sudo apt-get install vim \
  git \
  --assume-yes

echo "Generating SSH-keys for "$device_name
ssh-keygen -t Curve25519 -C $device_name
