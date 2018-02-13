#!/bin/bash

which vmware
if [[ $? -eq 0 ]]; then
	echo -e "VMware-Workstation  already installed........\t\033[32;40;1m【√】\033[0m"
else
	echo "Download the VMware-Workstation installation package......................................."
	wget "https://www.vmware.com/go/getworkstation-linux" -O "VMware-Workstation-Full.x86_64.bundle"
	echo "Install the VMware-Workstation-Full............................."
	sudo apt-get update
	sudo apt-get install linux-headers-$(uname -r)
	chmod +x VMware-Workstation-Full.x86_64.bundle
	sudo ./VMware-Workstation-Full.x86_64.bundle
	echo "Removing installation package............"
	rm VMware-Workstation-Full.x86_64.bundle
	echo "Enter the serial number........................"
	echo "Enter the serial number........................"
	echo "Enter the serial number........................"
	# 永久许可证激活密钥
	# FF31K-AHZD1-H8ETZ-8WWEZ-WUUVA
	# CV7T2-6WY5Q-48EWP-ZXY7X-QGUWD
	sudo /usr/lib/vmware/bin/vmware-vmx --new-sn FF31K-AHZD1-H8ETZ-8WWEZ-WUUVA
	echo -e "Successful Enter the serial number  \t\033[32;40;1m【√】\033[0m"
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
fi