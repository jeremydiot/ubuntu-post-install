#!/bin/bash

source functions.sh

apt_install "chromium-browser"
apt_install "chromium-browser-l10n"

echo_action "set chromium to default web browser"

update-alternatives --set x-www-browser /usr/bin/chromium-browser
xdg-settings set default-web-browser chromium-browser.desktop