#!/bin/bash

#sogou
function sogouinstall(){
	which sogou-diag sogou-qimpanel-watchdog sogou-sys-notify sogou-qimpanel sogou-session fcitx
	if [[ $? -eq 0 ]]; then
		echo -e "sogoupinyin  already installed........\t\033[32;40;1m【√】\033[0m"
	else
		echo -e "Install the GPG key................................."
		wget -qO - http://archive.ubuntukylin.com:10006/ubuntukylin/dists/xenial/Release.gpg | sudo apt-key add -
		sudo sh -c 'echo "deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main"' | sudo tee /etc/apt/sources.list.d/sogoupinyin.list
		echo 'Update apt sources and install Sublime Text..................................'
		sudo apt-get update
		sudo apt-get install sogoupinyin -y
		echo " "
		echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
		sleep 2
		fi
}
sogouinstall