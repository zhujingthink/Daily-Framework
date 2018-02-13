#!/bin/bash
#office - install menu
function menu(){
	echo -e "---------------------------Office - menu------------------------"
	echo -e "\t\t 【1】   WPS office"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter[*]continue：" officemenu
	case $officemenu in
		1)
		./office/wps.sh
		menu
		;;
		0)
		./install.sh
		;;
		*)
		echo -e "input error\t\t\033[31;40;1m【×】\033[0m"
		sleep 2
		menu
	esac
}
menu