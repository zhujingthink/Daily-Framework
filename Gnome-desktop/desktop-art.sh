#!/bin/bash

#all
function allinstall(){
	./Gnome-desktop/terminal.sh
	./Gnome-desktop/install-theme.sh
	./Gnome-desktop/gnome-shell-expand.sh
	sudo apt-get install cairo-dock* -y
}

#menu-----------------------------------------------------------------------------------------------------------------------
function menu(){
	echo -e "---------------------------Gnome Art menu------------------------"
	echo -e "\t\t 【1】   install All"
	echo -e "\t\t 【2】   Terminal "
	echo -e "\t\t 【3】   Gnome3 Themes"
	echo -e "\t\t 【4】   gnome shell Expand"
	echo -e "\t\t 【5】   GRUb Themes"
	echo -e "\t\t 【6】   cairo-dock"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter[*]continue：" gnomemenu
	case $gnomemenu in
		1)
		allinstall
		menu
		;;
		2)
		./Gnome-desktop/terminal.sh
		menu
		;;
		3)
		./Gnome-desktop/install-theme.sh
		menu
		;;
		4)
		./Gnome-desktop/gnome-shell-expand.sh
		menu
		;;
		5)
		echo -e "[GRUB Themes]:https://www.gnome-look.org/browse/cat/109/"
		echo -e "[GRUB Themes]:https://www.opendesktop.org/browse/cat/109/ord/latest/"
		menu
		;;
		6)
		which cairo-dock
		if [[ $? -eq 0 ]]; then
			echo -e "cairo-dock  already installed........\t\033[32;40;1m【√】\033[0m"
		else
			sudo apt-get install cairo-dock* -y
		fi
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