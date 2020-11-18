#!/bin/bash

source functions.sh

apt_install curl

curl -L "https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb" -o ./temp/steam.deb

dpkg_install ./temp/steam.deb