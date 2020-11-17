#!/bin/bash

source functions.sh

apt_install "build-essential"

curl -sL https://deb.nodesource.com/setup_lts.x | bash -

apt_update

apt_install "nodejs"