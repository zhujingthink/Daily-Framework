#!/bin/bash
#MenuMenu
function MenuMenu(){
	clear
	echo -e "\t-------------------------------------------------------------"
	echo -e "\t-\t\t\033[34;47;1m Main Menu\033[0m"
	echo -e "\t-------------------------------------------------------------\n"
	echo -e "\t\t 【1】   Desktop Art"
	echo -e "\t\t 【2】   System Tools"
	echo -e "\t\t 【3】   Office"
	echo -e "\t\t 【4】   Programming"
	echo -e "\t\t 【5】   Internet"
	echo -e "\t\t 【6】   Video Tools"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Exit\033[0m "
	echo -e "\033[30;44;1m PS:添加更多应用请联系作者\033[0m"
	echo -e "\033[30;44;1m By:GoldKing   QQ:354096994\033[0m"
	read -p "please enter[*]continue：" Mainmenu
	case $Mainmenu in
		1)
		./Gnome-desktop/desktop-art.sh
		;;
		2)
		./System-Tools/small-tools.sh
		;;
		3)
		./office/install-menu.sh
		;;
		4)
		./Programming/install-tools.sh
		;;
		5)
		./Internet/internet.sh
		;;
		6)
		./Video/tools.sh
		;;
		0)
		echo -e "Exit.................."
		exit
		;;
		*)
		echo -e "input error\t\t\033[31;40;1m【×】\033[0m"
		sleep 2
		MenuMenu
	esac
}
MenuMenu