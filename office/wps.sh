#!/bin/bash
#wps
echo "WPS Office"

function wpsinstll(){
	echo "Download the installation package.........."
	wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
	wget http://kr.archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb
	sudo dpkg -i libpng12-0_1.2.54-1ubuntu1_amd64.deb
	sudo dpkg -i wps-office_10.1.0.5707~a21_amd64.deb
	#fonts
	echo "installation WPS_fonts.................."
	sudo cp -r ./x/wps-fonts/* /usr/share/fonts/
	which wps
	echo -e "Removing installation package............"
	rm wps-office_10.1.0.5707~a21_amd64.deb
	rm libpng12-0_1.2.54-1ubuntu1_amd64.deb
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
}
echo "Check if it is installed........."
which wps
if [[ $? -eq 0 ]]; then
	echo -e "WPS  already installed........\t\033[32;40;1m【√】\033[0m"
else
	wpsinstll
fi