#!/usr/bin/env bash
source ../config/init.sh

sudo apt-get install vim \
  git \
  --assume-yes

ssh-keygen -t Curve25519 -C $device_name
