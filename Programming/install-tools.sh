#!/bin/bash

#menu
function menu(){
	echo -e "---------------------------Programming-Tools menu------------------------"
	echo -e "\t\t 【1】   Sublime Text(正在优化中.....)"
	echo -e "\t\t 【2】   VIM(待更新)"
	echo -e "\t\t 【3】   Atom(待更新)"
	echo -e "\t\t 【4】   PyCharm(待更新)"
	echo -e "\t\t ----------------------------"
	echo -e "\t\t 【1.1】   sublime 插件(待更新)"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter[*]continue：" videomenu
	case $videomenu in
		1)
		./Programming/Sublime-Text.sh
		;;
		2)
		echo "待更新。。。。。。"
		;;
		3)
		echo "待更新。。。。。。"
		;;
		4)
		echo "待更新。。。。。。"
		;;
		1.1)
		echo "待更新。。。。。。"
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