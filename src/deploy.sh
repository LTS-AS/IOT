#!/usr/bin/env bash


echo "Importing marameters init file"
. ../config/init.sh

echo "Updating packages:"
sudo apt-get update && sudo apt-get upgrade -y

echo "Installing new packages"
sudo apt-get install \
  cron-apt \
  curl \
	git \
	vim \
	--assume-yes

#echo "Generating SSH-keys for "$device_name
#ssh-keygen -t ed25519 -C $device_name -f ~/.ssh/id_ed25519 -q -N ""

#echo "Moving list of authorized SSH-users"
#mv ~/IOT/config/authorized_keys ~/.ssh/authorized_keys

#echo "Disabeling password login"
#sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config

#echo "Saving MAC address"
#mac_addr=$(cat /sys/class/net/eth0/address | sed 's/://g')
#echo $mac_addr
