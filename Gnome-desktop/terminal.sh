#!/bin/bash

#config
function config(){
	sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel9k\/powerlevel9k\"\nPOWERLEVEL9K_MODE=\"awesome-fontconfig\"\nPOWERLEVEL9K_TIME_FORMAT=\"%D{%H:%M}\"\nPOWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir dir_writable vcs)\nPOWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)\nPOWERLEVEL9K_SHOW_CHANGESET=true\n/' ~/.zshrc
}

#install
function ohmyzshintall(){
	#oh-my-zsh installd
	sudo apt-get install zsh -y
	echo "Install for Oh-My-ZSH............................................"
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
	echo "powerlevel9k Themes installd....................................."
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	echo "install Powerline fonts.........................................."
	sudo apt-get install fonts-powerline -y
	echo "awesome-terminal-fonts installd...................................."
	git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
	./awesome-terminal-fonts/install.sh
	rm -rf awesome-terminal-fonts/
	config
	zsh --version
	chsh -s $(which zsh)
	echo " "
	echo -e "Successful installation  \t\033[32;40;1m【√】\033[0m"
}
ohmyzshintall