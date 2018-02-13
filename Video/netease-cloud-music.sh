#!/bin/bash
#网易云音乐

function cloudmusic(){
	echo "Download the installation package.........."
	wget http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb
	sudo dpkg -i netease-cloud-music_1.1.0_amd64_ubuntu.deb
	sudo apt-get -f install
	which netease-cloud-music
	echo -e "Removing installation package............"
	rm netease-cloud-music_1.1.0_amd64_ubuntu.deb
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
	sleep 2
	./Video/tools.sh
}

echo "Check if it is installed........."
which netease-cloud-music
if [[ $? -eq 0 ]]; then
	echo -e "netease-cloud-music  already installed........\t\033[32;40;1m【√】\033[0m"
	sleep 2
	./Video/tools.sh
else
	cloudmusic
fi
