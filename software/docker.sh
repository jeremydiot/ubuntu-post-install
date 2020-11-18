#!/bin/bash

source functions.sh

curl -fsSL https://get.docker.com -o ./temp/get-docker.sh
sudo sh ./temp/get-docker.sh

sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose