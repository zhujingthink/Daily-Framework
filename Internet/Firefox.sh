#!/bin/bash

echo "Check if it is installed........."
which firefox
if [[ $? -eq 0 ]]; then
	echo -e "Firefox  already installed........\t\033[32;40;1m【√】\033[0m"
else
	echo "Download the installation package.........."
	wget "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=zh-CN" -O "firefox.tar.bz2"
	tar -jxvf firefox.tar.bz2
	sudo mv firefox /opt/
	echo -e "Create a link................................."
	sudo ln -s /opt/firefox/firefox-bin /usr/bin/firefox-bin
	echo "Create a desktop shortcut.................................."
	sudo cp -r ./x/firefox.desktop /usr/share/applications/
	echo -e "Removing installation package............"
	rm firefox.tar.bz2
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
fi