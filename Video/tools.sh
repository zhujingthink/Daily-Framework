#!/bin/bash
# video tools

#all
function allinstall(){
	sudo apt-get -y install kazam
	sudo apt-get -y install moc moc-ffmpeg-plugin
	sudo apt-get -y install asciinema
	sudo apt-get -y install shutter
	sudo apt-get -y install gnome-screenshot
}

#Desktop recording-------------------------------------------------------------------------------------------------
#kazam 
function kazaminstall(){
	sudo apt-get -y install kazam
	echo "Check if it is installed........."
	which kazam
	if [[ $? -eq 0 ]]; then
		echo -e "kazam  already installed........\t\033[32;40;1m【√】\033[0m"
	fi
cat <<  EOF
--------------------------------------------------------------
	run help：kazam -h
--------------------------------------------------------------
EOF
}

#moc(terminal music)-------------------------------------------------------------------------------------------------
function mocinstall(){
	sudo apt-get -y install moc moc-ffmpeg-plugin
	echo "Check if it is installed........."
	which mocp
	if [[ $? -eq 0 ]]; then
		echo -e "moc  already installed........\t\033[32;40;1m【√】\033[0m"
	fi
cat <<  EOF
--------------------------------------------------------------
	run：mocp
--------------------------------------------------------------
EOF
}



#terminal recording---------------------------------------------------------------------------------------------------
#asciinema
function asciinemainstall(){
	sudo apt-get -y install asciinema
	echo "Check if it is installed........."
	which asciinema
	if [[ $? -eq 0 ]]; then
		echo -e "asciinema  already installed........\t\033[32;40;1m【√】\033[0m"
	fi
cat <<  EOF
--------------------------------------------------------------
	[Official website]:(https://asciinema.org/)
 	[github]:(https://github.com/asciinema/) 
 	[wiki]:(https://github.com/asciinema/asciinema/wiki)
--------------------------------------------------------------
EOF
}

#Video menu-----------------------------------------------------------------------------------------------------------------------
function Videomenu(){
	echo -e "---------------------------video Tools menu------------------------"
	echo -e "\t\t 【1】   install All"
	echo -e "\t\t 【2】   kazam"
	echo -e "\t\t 【3】   shutter"
	echo -e "\t\t 【4】   moc"
	echo -e "\t\t 【5】   asciinema"
	echo -e "\t\t 【6】   netease-cloud-music"
	echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter[*]continue：" videomenu
	case $videomenu in
		1)
		allinstall
		Videomenu
		;;
		2)
		kazaminstall
		Videomenu
		;;
		3)
		sudo apt-get install shutter -y
		sudo apt-get install gnome-screenshot -y
		Videomenu
		;;
		4)
		mocinstall
		Videomenu
		;;
		5)
		asciinemainstall
		Videomenu
		;;
		6)
		./Video/netease-cloud-music.sh
		Videomenu
		;;
		0)
		./install.sh
		;;
		*)
		echo -e "input error\t\t\033[31;40;1m【×】\033[0m"
		sleep 2
		Videomenu
	esac
}
Videomenu