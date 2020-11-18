#!/bin/bash

source functions.sh

apt_install chromium-browser
apt_install chromium-browser-l10n

update-alternatives --set x-www-browser /usr/bin/chromium-browser
xdg-settings set default-web-browser chromium-browser.desktop