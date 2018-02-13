#!/bin/bash

#all install
function allinstall(){
	./Internet/QQ.sh
	sudo apt-get install telegram-desktop -y
	./Internet/Shadowsocks-Qt5.sh
	./Internet/TeamViewer.sh
	./Internet/Google-chrome.sh
	./Internet/Firefox.sh
}

#menu
function Internetmenu(){
	echo -e "---------------------------Internet menu------------------------"
	echo -e "\t\t 【1】   install All"
	echo -e "\t\t 【2】   qq+Tim+d+w"
	echo -e "\t\t 【3】   Telegram"
	echo -e "\t\t 【4】   Shadowsocks-Qt5(推荐方案：ss-qt5+proxychains)"
	echo -e "\t\t 【5】   TeamViewer"
	echo -e "\t\t 【6】   Firefox"
	echo -e "\t\t 【7】   Google chrome"
	echo -e "\t\t 【8】   Google chrome + Firefox  扩展推荐"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter[*]continue：" netmenu
	case $netmenu in
		1)
		allinstall
		Internetmenu
		;;
		2)
		./Internet/QQ.sh
		Internetmenu
		;;
		3)
		sudo apt-get install telegram-desktop -y
		Internetmenu
		;;
		4)
		./Internet/Shadowsocks-Qt5.sh
		Internetmenu
		;;
		5)
		./Internet/TeamViewer.sh
		Internetmenu
		;;
		6)
		./Internet/Firefox.sh
		Internetmenu
		;;
		7)
		./Internet/Google-chrome.sh
		Internetmenu
		;;
		8)
		./Internet/Firefox-Plug.sh
		Internetmenu
		;;
		0)
		./install.sh
		;;
		*)
		echo -e "input error\t\t\033[31;40;1m【×】\033[0m"
		sleep 2
		Internetmenu
	esac
}
Internetmenu