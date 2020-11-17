#!/bin/bash

source functions.sh

apt_install "apt-transport-https"
apt_install "ca-certificates"
apt_install "curl"
apt_install "gnupg-agent"
apt_install "software-properties-common"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

apt_repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt_update

apt_install "docker-ce"
apt_install "docker-ce-cli"
apt_install "containerd.io"

usermod -aG docker $USER

curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose