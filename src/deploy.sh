#!/usr/bin/env bash
. ../config/init.sh

sudo apt-get install vim \
  git \
  --assume-yes

echo "Generating SSH-keys for "$device_name
ssh-keygen -t ed25519 -C $device_name -f /tmp/sshkey -q -N ""
