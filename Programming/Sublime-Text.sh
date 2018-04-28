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
			sudo sed -i 's/exec \/opt\/sublime_text\/sublime_text \"$@\"/LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text \"$@\"/' /usr/bin/subl
			#修改/usr/share/applications/sublime_text.desktop
			sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text %F/Exec=bash -c \"LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text %F\"/' /usr/share/applications/sublime_text.desktop
			sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text -n/Exec=bash -c \"LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text -n\"/' /usr/share/applications/sublime_text.desktop
			sudo sed -i 's/Exec=\/opt\/sublime_text\/sublime_text --command new_file/Exec=bash -c \"LD_PRELOAD=\/opt\/sublime_text\/libsublime-imfix.so exec \/opt\/sublime_text\/sublime_text --command new_file\"/' /usr/share/applications/sublime_text.desktop
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

function ikey(){
echo "正在激活sublime........"
subl
sleep 2
killall sublime_text

cat >> ~/.config/sublime-text-3/Local/License.sublime_license << EOF
—– BEGIN LICENSE —– 
Die Socialisten GmbH 
10 User License 
EA7E-800613 
51311422 E45F49ED 3F0ADE0C E5B8A508 
2F4D9B65 64E1E244 EDA11F0E F9D06110 
B7B2E826 E6FDAA72 2C653693 5D80582F 
09DCFFB5 113A940C 5045C0CD 5F8332F8 
34356CC6 D96F6FDB 4DEC20EA 0A24D83A 
2C82C329 E3290B29 A16109A7 EC198EB9 
F28EBB17 9C07403F D44BA75A C23C6874 
EBF11238 5546C3DD 737DC616 445C2941 
—— END LICENSE ——
EOF
echo "sublime 激活成功     \033[32;40;1m【√】\033[0m"
}

function sublinstall(){
	sudo apt-get install apt-transport-https -y
	echo -e "Install the GPG key................................."
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	echo 'Update apt sources and install Sublime Text..................................'
	sudo apt-get update && sudo apt-get install sublime-text -y
	ikey
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
