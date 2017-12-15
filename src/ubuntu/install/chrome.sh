#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Chromium Browser"
apt-get update 
apt-get install -y chromium-browser chromium-browser-l10n chromium-codecs-ffmpeg \
	ttf-ubuntu-font-family fonts-wqy-microhei language-pack-zh-hant language-pack-gnome-zh-hant
apt-get clean -y
#ln -s /usr/bin/chromium-browser /usr/bin/google-chrome
### fix to start chromium in a Docker container, see https://github.com/ConSol/docker-headless-vnc-container/issues/2
echo "CHROMIUM_FLAGS='--start-maximized --user-data-dir'" > $HOME/.chromium-browser.init
