#!/bin/bash

#small-tools

#hollywood
function hollywoodinstall(){
	echo "Check if it is installed........."
	which hollywood
	if [[ $? -eq 0 ]]; then
		echo -e "hollywood  already installed........\t\033[32;40;1m【√】\033[0m"
		sleep 3
		menu
	else
		echo "Download the installation package.........."
		wget http://ppa.launchpad.net/hollywood/ppa/ubuntu/pool/main/h/hollywood/hollywood_1.14-0ubuntu1~xenial_all.deb
		sudo dpkg -i hollywood_1.14-0ubuntu1~xenial_all.deb
		sudo apt-get -f install
		which hollywood
		echo -e "Removing installation package............"
		rm hollywood_1.14-0ubuntu1~xenial_all.deb
		echo " "
		echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
		echo -e "\t---------------------------------------------------------------------------------"
		echo -e "\t\t[PPA]:(https://launchpad.net/~hollywood/+archive/ubuntu/ppa)"
		echo -e "\t---------------------------------------------------------------------------------"
		sleep 2
		menu
	fi
}



#all----------------------------------------------------------------------------------------------------------
function allinstall(){
	sudo apt-get -y install htop
	sudo apt-get -y install screenfetch
	sudo apt-get -y install sl
	sudo apt-get -y install yes
	sudo apt-get -y install fortune
	sudo apt-get -y install figlet
	sudo apt-get -y install toilet
	sudo apt-get -y install cowsay
	sudo apt-get -y install xcowsay
	sudo apt-get -y install cmatrix
	sudo apt-get -y install oneko
	sudo apt-get -y install lolcat
	hollywoodinstall

}

#menu
function Smenu(){
	echo -e "---------------------------System-Tools menu------------------------"
	echo -e "\t\t 【1】   All small-tools"
	echo -e "\t\t 【2】   input (sogoupinyin)"
	echo -e "\t\t 【3】   multibootusb"
	echo -e "\t\t 【4】   VirtualBox"
	echo -e "\t\t 【5】   VMware-Workstation Pro"
	echo -e "\t\t 【6】   Htop"
	echo -e "\t\t 【7】   Google translate (translate-shell)"
	echo -e "\t\t 【8】   Etcher"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter[*]continue：" systemmenu
	case $systemmenu in
		1)
		allinstall
		Smenu
		;;
		2)
		./System-Tools/input.sh
		Smenu
		;;
		3)
		./System-Tools/multibootusb.sh
		Smenu
		;;
		4)
		./System-Tools/VirtualBox.sh
		Smenu
		;;
		5)
		./System-Tools/VMware-Workstation.sh
		Smenu
		;;
		6)
		sudo apt-get install htop -y
		Smenu
		;;
		7)
		./Accessories.sh
		Smenu
		;;
		8)
		./System-Tools/etcher.sh
		Smenu
		;;
		0)
		./install.sh
		;;
		*)
		echo -e "input error\t\t\033[31;40;1m【×】\033[0m"
		sleep 2
		Smenu
	esac
}
Smenu