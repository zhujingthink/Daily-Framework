#!/bin/bash

#修复SublimeText 2/3的CJK输入法问题
function inputx(){
 	which fcitx
 	if [[ $? -eq 0 ]]; then
 		read -p "是否修复sublime的输入法问题 ? [Y/n]:" Wfcitx
	 	case $Wfcitx in
	 		y)
	 		sudo cp -r ./x/subl-src/libsublime-imfix.so /opt/sublime_text/
			#修改/usr/bin/subl
			sudo sed -i 's/1,exec \/opt\/sublime_text\/sublime_text \"$@\"/LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text \"$@\"/' /usr/bin/subl
			#修改/usr/share/applications/sublime_text.desktop
			sudo sed -i 's/1,Exec=\/opt\/sublime_text\/sublime_text %F/Exec=bash -c \"LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text %F\"/' /usr/share/applications/sublime_text.desktop
			sudo sed -i 's/1,Exec=\/opt\/sublime_text\/sublime_text -n/Exec=bash -c \"LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text -n\"/' /usr/share/applications/sublime_text.desktop
			sudo sed -i 's/1,Exec=\/opt\/sublime_text\/sublime_text --command new_file/Exec=bash -c \"LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text --command new_file\"/' /usr/share/applications/sublime_text.desktop
	      	echo -e "Repair successfully  \t\033[32;40;1m【√】\033[0m"
	 		;;
	 		n)
	 		#exit
	 		./install.sh
	 		;;
	 	esac
 	else
 		echo " "
 		sudo apt-get install fcitx -y
 		echo " "
 		inputx
 	fi
}

function sublinstall(){
	sudo apt-get install apt-transport-https -y
	echo -e "Install the GPG key................................."
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	echo 'Update apt sources and install Sublime Text..................................'
	sudo apt-get update && sudo apt-get install sublime-text -y
	inputx
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
}

echo "Check if it is installed.............................."
 which subl
 if [[ $? -eq 0 ]]; then
 	echo -e "sublime-text  already installed........\t\033[32;40;1m【√】\033[0m"
 	inputx
 else
 	sublinstall
 fi
