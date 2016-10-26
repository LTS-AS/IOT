#!/usr/bin/env bash
. ~/IOT/config/init.sh

sudo apt-get install vim \
  git \
  --assume-yes

echo "Generating SSH-keys for "$device_name
ssh-keygen -t ed25519 -C $device_name -f ~/.ssh/id_ed25519 -q -N ""

echo "Moving list of authorized SSH-users"
mv ~/IOT/config/authorized_hosts ~/.ssh/authorized_hosts
