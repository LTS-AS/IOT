#!/usr/bin/env bash
. ~/IOT/config/init.sh

sudo apt-get install vim \
  git \
  --assume-yes

echo "Generating SSH-keys for "$device_name
ssh-keygen -t ed25519 -C $device_name -f ~/.ssh/id_ed25519 -q -N ""
