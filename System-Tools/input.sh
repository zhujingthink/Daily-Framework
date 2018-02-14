#!/bin/bash

#sogou
function sogouinstall(){
	which sogou-diag sogou-qimpanel-watchdog sogou-sys-notify sogou-qimpanel sogou-session fcitx
	if [[ $? -eq 0 ]]; then
		echo -e "sogoupinyin  already installed........\t\033[32;40;1m【√】\033[0m"
	else
		echo -e "Install the GPG key................................."
		sudo cp -r ./x/sogou/keyrings/sogou-archive-keyring.gpg /usr/share/keyrings/
		sudo cp -r ./x/sogou/keyrings/sogou-archive-keyring.gpg /etc/apt/trusted.gpg.d/
		sudo sh -c 'echo "deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main"' | sudo tee /etc/apt/sources.list.d/sogoupinyin.list
		sudo echo "deb http://mirrors.aliyun.com/debian stretch main" >> /etc/apt/sources.list
		echo 'Update apt sources and install sogoupinyin..................................'
		sudo apt-get update
		sudo apt-get install sogoupinyin -y
		sudo sed -i 's/deb http:\/\/mirrors.aliyun.com\/debian stretch main/ /' /etc/apt/sources.list
		echo " "
		echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
		sleep 2
		fi
}
sogouinstall