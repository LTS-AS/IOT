#!/usr/bin/env bash

DEVICE_NAME="pi3.lts.no"

echo "Updating packages:"
sudo apt-get update && sudo apt-get upgrade -y

echo "Installing new packages"
sudo apt-get install \
	git \
	vim \
	--assume-yes
#	openssh-server \
#	curl \
#	cron-apt \

echo "Cloning key repo"
git clone https://github.com/LTS-AS/key-management.git

echo "Generating SSH-keys"
ssh-keygen -t ed25519 -C DEVICE_NAME -f ~/.ssh/id_ed25519 -q -N ""

echo "Adding trusted SSH-keys"
cp ./key-management/ssh/authorized_keys ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
