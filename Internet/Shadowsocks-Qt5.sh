#!/bin/bash

which ss-qt5
if [[ $? -eq 0 ]]; then
	echo -e "shadowsocks-qt5  already installed........\t\033[32;40;1m【√】\033[0m"
else
	echo -e "Add  source..........................."
	sudo sh -c 'echo "deb http://ppa.launchpad.net/hzwhuang/ss-qt5/ubuntu artful main" >> /etc/apt/sources.list'
	echo -e "Add a key............................"
	sudo gpg --keyserver pgpkeys.mit.edu --recv-key 6DA746A05F00FA99
	sudo gpg -a --export  6DA746A05F00FA99 | sudo apt-key add -
	echo -e "Update your system and install ............................."
	sudo apt-get update && sudo apt-get install shadowsocks-qt5 -y
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
fi
