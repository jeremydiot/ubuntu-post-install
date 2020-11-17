#!/bin/bash

source functions.sh

apt_repository "ppa:inkscape.dev/stable"
apt_update
apt_install "inkscape"
