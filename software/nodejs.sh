#!/bin/bash

source functions.sh

apt_install build-essential
apt_install curl

curl -sL https://deb.nodesource.com/setup_lts.x | bash -

apt_install nodejs