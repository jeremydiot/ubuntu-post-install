#!/bin/bash

source functions.sh

apt_install curl

curl -L "https://discord.com/api/download?platform=linux&format=deb" -o ./temp/discord.deb

dpkg_install ./temp/discord.deb
