#!/bin/bash

echo "Check if it is installed........."
which multibootusb
if [[ $? -eq 0 ]]; then
	echo -e "multibootusb  already installed........\t\033[32;40;1m【√】\033[0m"
	echo -e "--------------------------------------------------------"
	echo -e "  [github]:(https://github.com/mbusb/multibootusb)"
	echo -e "--------------------------------------------------------"
	sleep 2
else
	echo "Download the installation package.........."
	wget https://github.com/mbusb/multibootusb/releases/download/v9.1.0/python3-multibootusb_9.1.0-1_all.deb
	sudo dpkg -i python3-multibootusb_9.1.0-1_all.deb
	sudo apt-get -f install
	which multibootusb
	echo -e "Removing installation package............"
	rm python3-multibootusb_9.1.0-1_all.deb
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
	echo -e "---------------------------------------------------------"
	echo -e "  [github]:(https://github.com/mbusb/multibootusb)"
	echo -e "---------------------------------------------------------"
	sleep 2
fi