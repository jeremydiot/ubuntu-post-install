#!/bin/bash

source functions.sh


apt_install "libappindicator1"
apt_install "libc++1"
apt_install "curl"

curl -L "https://discord.com/api/download?platform=linux&format=deb" -o ./temp/discord.deb

dpkg -i ./temp/discord.deb
