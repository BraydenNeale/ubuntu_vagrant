#!/bin/bash

sudo apt-get update

#General
sudo apt-get install -y build-essential curl wget git vim openssl

# # Virtualbox GUI
# sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
# sudo VBoxClient --clipboard --draganddrop --seamless --display --checkhostversion

# # Any user can launch the GUI
# sudo sed -ie 's/allowed_users=.*/allowed_users=anybody/' /etc/X11/Xwrapper.config

# Docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
sudo apt-cache policy docker-engine
sudo apt-get install -y docker-engine

curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# AWS CLI
sudo apt-get install -y python-pip
pip install --upgrade pip
pip install --upgrade --user awscli
