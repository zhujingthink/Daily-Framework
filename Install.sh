#!/usr/bin/env bash

#Colors
cyan='\e[1;36m'
green='\e[1;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'

xcyan='\e[0;36m'
xgreen='\e[0;32m'
xlightgreen='\e[0;32m'
xwhite='\e[0;37m'
xred='\e[0;31m'
xyellow='\e[0;33m'
xblue='\e[0;34m'

name="\e[1;34mDaily-Framework" #Name
Ver="\e[1;31mV1.0.0\033[0m" # Version
#系统与其他---------------------------------------------------------------------------------------
function Systems(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}系统|其他"
	echo -e """
	$xcyan 1)$xgreen ✔  VMware			$xcyan 【小工具】$xgreen ✔  
	$xcyan 2)$xgreen ✔  VirtualBox		$xcyan 7)$xgreen ✔  screenfetch|neofetch
	$xcyan 3)$xgreen ✔  multibootusb		$xcyan 8)$xgreen ✔  sl|yes|fortune|figlet
	$xcyan 4)$xgreen ✔  etcher			$xcyan 9)$xgreen ✔  toilet|cowsay|xcowsay
	$xcyan 5)$xgreen ✔  搜狗输入法	       $xcyan 10)$xgreen ✔  oneko|lolcat
	$xcyan 6)$xgreen ✔  Htop 		       $xcyan 11)$xgreen ✔  cmatrix|hollywood
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/Systems > $red"
	read -e system
	case $system in
		1 )
		. module/system/VMware
		sleep 3 && Systems
			;;
		2 )
		. module/system/VirtualBox
		sleep 3 && Systems
			;;
		3 )
		. module/system/multibootusb
		sleep 3 && Systems
			;;
		4 )
		. module/system/etcher
		sleep 3 && Systems
			;;
		5 )
		. module/system/sogoupinyin
		sleep 3 && Systems
			;;
		6 )
		. module/system/Htop
		sleep 3 && Systems
			;;
		7 )
		. module/system/fetch
		sleep 3 && Systems
			;;
		8 )
		. module/system/sl-yes-fortune-figlet
		sleep 3 && Systems
			;;
		9 )
		. module/system/toilet-cowsay-xcowsay
		sleep 3 && Systems
			;;
		10)
		. module/system/oneko-lolcat
		sleep 3 && Systems
			;;
		11)
		. module/system/cmatrix-hollywood
		sleep 3 && Systems
			;;
		"0" )
		main_mmenu
			;;
		* )
		Systems
			;;
	esac
}

#编程开发-----------------------------------------------------------------------
function P_d(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}编程开发"
	echo -e """
	$xcyan 1)$xgreen ✔  Sublime		$xcyan 7)$xgreen ✔  Navicat  
	$xcyan 2)$xgreen ✔  Gedit		$xcyan 8)$xgreen ✔  DBeaver
	$xcyan 3)$xgreen ✔  VIM		$xcyan 9)$xgreen ✔  shc
	$xcyan 4)$xgreen ✔  Atom		$xcyan 9)$xgreen ✔  更多......
	$xcyan 5)$xgreen ✔  PyCharm	       $xcyan 10)$xgreen ✔  更多......
	$xcyan 6)$xgreen ✔  VScode	       $xcyan 11)$xgreen ✔  更多......
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/P-Development > $red"
	read -e Pd
	case $Pd in
		1 )
		. module/P-development/Sublime-Text_3
		sleep 3 && 	P_d
			;;
		2 )
		. module/P-development/gedit && echo ".待更新"
		sleep 3 && 	P_d
			;;
		3 )
		. module/P-development/vim && echo "VIM .待更新"
		sleep 3 && 	P_d
			;;
		4 )
		. module/P-development/Atom && echo "Atom .待更新"
		sleep 3 && 	P_d
			;;
		5 )
		. module/P-development/PyCharm && echo "PyCharm .待更新"
		sleep 3 && 	P_d
			;;
		6 )
		. module/P-development/VScode
		sleep 3 && 	P_d
			;;
		7 )
		. module/P-development/Navicat && echo "Navicat .待更新"
		sleep 3 && 	P_d
			;;
		8 )
		. module/P-development/DBeaver
		sleep 3 && 	P_d
			;;
		9 )
		. module/P-development/shc
		sleep 3 && 	P_d
			;;
		0 )
		main_mmenu
			;;
		* )
		P_d
			;;
	esac
}

#网络|传输|通讯---------------------------------------------------------------------------------------------
function Network(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}网络|传输|通讯"
	echo -e """
	$xcyan 1)$xgreen ✔  Google-chrome		$xcyan 7)$xgreen ✔  QQ(多版本)
	$xcyan 2)$xgreen ✔  Firefox(多版本)		$xcyan 8)$xgreen ✔  Tim(多版本)
	$xcyan 3)$xgreen ✔  tor-browser		$xcyan 9)$xgreen ✔  微信(多版本)
	$xcyan 4)$xgreen ✔  searx			$xcyan 10)$xgreen ✔  Telegram
	$xcyan 5)$xgreen ✔  magic-wormhole	       $xcyan 11)$xgreen ✔  discord
	$xcyan 6)$xgreen ✔  TeamViewer	       $xcyan 12)$xgreen ✔  更多......
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/Network > $red"
	read -e Net
	case $Net in
		1 )
		. module/Network/Google-chrome
		sleep 3 && Network
			;;
		2 )
		. module/Network/Firefox
		sleep 3 && Network
			;;
		3 )
		. module/Network/tor-browser
		sleep 3 && Network
			;;
		4 )
		. module/Network/searx
		sleep 3 && Network
			;;
		5 )
		. module/Network/magic-wormhole
		sleep 3 && Network
			;;
		6 )
		. module/Network/TeamViewer
		sleep 3 && Network
			;;
		7 )
		. module/Network/QQ
		sleep 3 && Network
			;;
		8 )
		. module/Network/Tim
		sleep 3 && Network
			;;
		9 )
		. module/Network/wechat
		sleep 3 && Network
			;;
		10)
		. module/Network/Telegram
		sleep 3 && Network
			;;
		11)
		. module/Network/discord
		sleep 3 && Network
			;;
		0 )
		main_mmenu
			;;
		* )
		Network
			;;
	esac
}

#影音|图像|教育---------------------------------------------------------------------------------------------
function A-V_I_E(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}影音|图像|教育"
	echo -e """
	$xcyan 1)$xgreen ✔  MPlayer			$xcyan 6)$xgreen ✔  shutter
	$xcyan 2)$xgreen ✔  mocp			$xcyan 7)$xgreen ✔  Fbgs(已删除并弃用)
	$xcyan 3)$xgreen ✔  网易云音乐(多版本)	$xcyan 8)$xgreen ✔  asciinema
	$xcyan 4)$xgreen ✔  Gimp			$xcyan 9)$xgreen ✔  kazam	
	$xcyan 5)$xgreen ✔  gnome-screenshot	       $xcyan 10)$xgreen ✔  更多......
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/A-V_I_E > $red"
	read -e AVIE
	case $AVIE in
		1 )
		. module/AVIE/MPlayer
		sleep 3 && A-V_I_E
			;;
		2 )
		. module/AVIE/mocp
		sleep 3 && A-V_I_E
			;;
		3 )
		. module/AVIE/Netease-Cloud-Music && echo " .待更新..."
		sleep 3 && A-V_I_E
			;;
		4 )
		. module/AVIE/Gimp
		sleep 3 && A-V_I_E
			;;
		5 )
		. module/AVIE/gnome-screenshot
		sleep 3 && A-V_I_E
			;;
		6 )
		. module/AVIE/shutter
		sleep 3 && A-V_I_E
			;;
		7 )
		 echo " 弃用"
		sleep 3 && A-V_I_E
			;;
		8 )
		. module/AVIE/asciinema
		sleep 3 && A-V_I_E
			;;
		9 )
		. module/AVIE/kazam
		sleep 3 && A-V_I_E
			;;
		0 )
		main_mmenu
			;;
		* )
		A-V_I_E
			;;
	esac
}

#办公---------------------------------------------------------------------------------------------
function Offices(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}办公"
	echo -e """
	$xcyan 1)$xgreen ✔  WPS			
	$xcyan 2)$xgreen ✔  translate-shell			
	$xcyan 3)$xgreen ✔  更多......			
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/Offices > $red"
	read -e office
	case $office in
		1 )
		. module/Offices/WPS
		sleep 3 && Offices
			;;
		2 )
		. module/Offices/translate-shell
		sleep 3 && Offices
			;;
		0 )
		main_mmenu
			;;
		* )
		Offices
			;;
	esac
}

#桌面美化---------------------------------------------------------------------------------------------
function Beautify(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}桌面美化"
	echo -e """
	$xcyan 1)$xgreen ✔  主题-图标-光标(整套)
	$xcyan 2)$xgreen ✔  终端美化-[zsh+oh-my-zsh+powerlevel9k]
	$xcyan 3)$xgreen ✔  更多......
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/Beautify > $red"
	read -e beautify
	case $beautify in
		1 )
		. module/Beautify/desktop
		sleep 3 && Beautify
			;;
		2 )
		. module/Beautify/Terminal
		sleep 3 && Beautify
			;;
		0 )
		main_mmenu
			;;
		* )
		Beautify
			;;
	esac
}

#Proxy---------------------------------------------------------------------------------------------
function NetProxy(){
	logoss
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}网络代理"
	echo -e """
	$xcyan 1)$xgreen ✔  electron-ssr
	$xcyan 2)$xgreen ✔  Shadowsocks-Qt5
	$xcyan 3)$xgreen ✔  V2ray
	$xcyan 4)$xgreen ✔  Brook
	$xcyan 5)$xgreen ✔  Goflyway
	$xcyan 6)$xgreen ✔  dragonite-java
	$xcyan ()$xgreen ✔  更多......
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
	echo -n -e "${cyan}module/NetProxy > $red"
	read -e Proxy
	case $Proxy in
		1 )
		. module/NetProxy/electron-ssr
		sleep 3 && NetProxy
			;;
		2 )
		. module/NetProxy/Shadowsocks-Qt5
		sleep 3 && NetProxy
			;;
		3 )
		. module/NetProxy/V2ray && echo " .待更新..."
		sleep 3 && NetProxy
			;;
		4 )
		. module/NetProxy/Brook && echo " .待更新..."
		sleep 3 && NetProxy
			;;
		5 )
		. module/NetProxy/Goflyway && echo " .待更新..."
		sleep 3 && NetProxy
			;;
		6 )
		. module/NetProxy/dragonite-java && echo " .待更新..."
		sleep 3 && NetProxy
			;;
		0 )
		main_mmenu
			;;
		* )
		NetProxy
			;;
	esac
}

#mian menu===========================================================================================
# ๑۩۞۩๑
#  ______              _    __             
# |_   _ \`.           (_)  [  |            
#   | | \`. \  ,--.    __    | |    _   __  
#   | |  | | \`'_\ :  [  |   | |   [ \ [  ] 
#  _| |_.' / // | |,  | |   | |    \ '/ /  
# |______.'  \'-;__/ [___] [___] [\_:  /   
#                                 \__.' 


function logoss(){
	clear
	echo -e """$yellow
◥█▄▃▁   ▁▂▂▃▃▂▂▂▂▂▂▂▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▅                    
.......◥█☆█▅▄▃▁▁▁▁▁▃▄▅▅▅▅▅▅▅▅▅▅▅▅▅▅▄▁█▅●   
〓▇█████ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███▅▄▃███●  
 〓〓.|^|^|^|^|.█████████████████████◤  
   ◥█████████◤ ◥     ◢◤  
     ◥██████◤    ◥  ◢◤  
       ████◤██████◤  
       █▓▓▓▓██◤   ______              _    __             
      █▓▓▓██◆  	 |_   _ \`.           (_)  [  |            
     █▓▓▓██◆       | | \`. \  ,--.    __    | |    _   __  
    █▓▓▓██◆  	   | |  | | \`'_\ :  [  |   | |   [ \ [  ] 
   █▓▓▓██◆  	  _| |_.' / // | |,  | |   | |    \ '/ /  
  █▓▓▓██◆  	 |______.'  \'-;__/ [___] [___] [\_:  /   
 █▓▓ ██◆  		     		         \__.' 
█▓▓ ██◆  
≡≡≡≡≡		${name} ${Ver}
PS：不仅仅是installd(多版本)，还有配置、以及更多...
"""
}
function main_mmenu(){
	logoss
	echo -e """				$cyan Linux $blue日常化\n
	$xcyan 1)$xgreen ✔  系统|其他			$xcyan 5)$xgreen ✔  办公
	$xcyan 2)$xgreen ✔  编程开发				$xcyan 6)$xgreen ✔  桌面美化|终端
	$xcyan 3)$xgreen ✔  网络|传输|通讯			$xcyan 7)$xgreen ✔  Network Proxy
	$xcyan 4)$xgreen ✔  影音|图像|教育			$xcyan 0)$xred ⏎ 退出 
	"""
	echo -n -e "${cyan}请选择 ：> ${red}"
	read -e mmenu
	case $mmenu in
		1 )
		Systems
			;;
		2 )
		P_d
			;;
		3 )
		Network
			;;
		4 )
		A-V_I_E
			;;
		5 )
		Offices
			;;
		6 )
		Beautify
			;;
		7 )
		NetProxy
			;;
		0 )
		exit
			;;
		* )
		main_mmenu
			;;
	esac
}
main_mmenu