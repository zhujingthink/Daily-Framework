#!/bin/bash
which etcher-electron
if [[ $? -eq 0 ]]; then
	echo "已经安装    √"
else
	echo -e "Add etcher source.................."
	sudo sh -c 'echo "deb https://dl.bintray.com/resin-io/debian stable etcher"' | sudo tee /etc/apt/sources.list.d/etcher.list
	echo -e "Install the GPG key................................."
	sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61
	sudo apt-get update
	sudo apt-get install etcher-electron
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
fi