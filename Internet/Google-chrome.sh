#!/bin/bash
which google-chrome google-chrome-stable
if [[ $? -eq 0 ]]; then
	echo -e "google-chrome  already installed........\t\033[32;40;1m【√】\033[0m"
else
	echo -e "add sources.list..........................."
	sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
	sudo wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
	echo -e "Update your system and install ............................."
	sudo apt-get update && sudo apt-get install google-chrome-stable -y
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
fi