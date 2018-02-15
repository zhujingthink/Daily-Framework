#!/bin/bash

#vscode
function vscodeinstall(){
	sudo apt-get install apt-transport-https -y
	echo -e "Install the GPG key................................."
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	echo 'Update apt sources and install Sublime Text..................................'
	sudo apt-get update && sudo apt-get install code -y # or code-insiders
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
}
vscodeinstall