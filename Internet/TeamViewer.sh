#!/bin/bash

echo "Check if it is installed........."
which teamviewer
if [[ $? -eq 0 ]]; then
	echo -e "TeamViewer  already installed........\t\033[32;40;1m【√】\033[0m"
else
	sudo sh -c 'echo "deb http://linux.teamviewer.com/deb stable main"' | sudo tee /etc/apt/sources.list.d/teamviewer.list
	sudo apt-get update
	sudo apt-get install teamviewer -y
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
fi