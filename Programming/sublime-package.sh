#!/bin/bash
#https://packagecontrol.io/browse/labels

function Call() { #Seti_ST3
		git clone https://github.com/ctf0/Seti_ST3.git ~/.config/sublime-text-3/Packages/Seti_ST3
 		#Package Control
		wget -P ~/.config/sublime-text-3/Installed\ Packages/  https://packagecontrol.io/Package%20Control.sublime-package
 		#Chinese​Localizations
		git clone https://github.com/rexdf/ChineseLocalization.git ~/.config/sublime-text-3/Packages/Chinese​Localizations
 		#notes
		git clone https://github.com/tbh1/sublime-notes.git ~/.config/sublime-text-3/Packages/sublime-notes
 		#Emmet
		git clone https://github.com/sergeche/emmet-sublime.git ~/.config/sublime-text-3/Packages/Emmet
 		#Side​Bar​Enhancements
		git clone https://github.com/SideBarEnhancements-org/SideBarEnhancements.git ~/.config/sublime-text-3/Packages/SideBarEnhancements
 		#SublimeLinter
		git clone https://github.com/SublimeLinter/SublimeLinter.git ~/.config/sublime-text-3/Packages/SublimeLinter
 		#BracketHighlighter
		git clone https://github.com/facelessuser/BracketHighlighter.git ~/.config/sublime-text-3/Packages/BracketHighlighter
 		#SublimeCodeIntel
		git clone https://github.com/SublimeCodeIntel/SublimeCodeIntel.git ~/.config/sublime-text-3/Packages/SublimeCodeIntel
 		#Alignment
		git clone https://github.com/wbond/sublime_alignment.git ~/.config/sublime-text-3/Packages/sublime_alignment
		#Color​Picker
		git clone https://github.com/weslly/ColorPicker.git ~/.config/sublime-text-3/Packages/ColorPicker
		#Git
		git clone https://github.com/kemayo/sublime-text-git.git ~/.config/sublime-text-3/Packages/sublime-text-git
		#DocBlockr
		git clone https://github.com/spadgos/sublime-jsdocs.git ~/.config/sublime-text-3/Packages/sublime-jsdocs
		#ConvertToUTF8
		git clone https://github.com/seanliang/ConvertToUTF8.git ~/.config/sublime-text-3/Packages/ConvertToUTF8
		git clone https://github.com/seanliang/Codecs33.git ~/.config/sublime-text-3/Packages/Codecs33
		#ColorHighlighter
		git clone https://github.com/Monnoroch/ColorHighlighter.git ~/.config/sublime-text-3/Packages/ColorHighlighter
		#AutoFileName
		git clone https://github.com/BoundInCode/AutoFileName.git ~/.config/sublime-text-3/Packages/AutoFileName
		#GitGutter
		git clone https://github.com/jisaacks/GitGutter.git ~/.config/sublime-text-3/Packages/GitGutter
		#SublimeAllAutocomplete
		git clone https://github.com/alienhard/SublimeAllAutocomplete.git ~/.config/sublime-text-3/Packages/SublimeAllAutocomplete
		#SublimeREPL
		git clone https://github.com/wuub/SublimeREPL.git ~/.config/sublime-text-3/Packages/SublimeREPL
		#MarkdownPreview
		git clone https://github.com/revolunet/sublimetext-markdown-preview.git ~/.config/sublime-text-3/Packages/MarkdownPreview
		#Markdown​Editing
		git clone https://github.com/SublimeText-Markdown/MarkdownEditing.git ~/.config/sublime-text-3/Packages/Markdown​Editing
		#Terminal
		git clone https://github.com/wbond/sublime_terminal.git ~/.config/sublime-text-3/Packages/Terminal
		#Advanced​New​File
		git clone https://github.com/skuroda/Sublime-AdvancedNewFile.git ~/.config/sublime-text-3/Packages/Advanced​New​File
}
function Fall(){
		#前端============================================================================================
 		#HTMLPrettify
		git clone https://github.com/victorporof/Sublime-HTMLPrettify.git ~/.config/sublime-text-3/Packages/HTMLPrettify
 		#CSS3
		git clone https://github.com/y0ssar1an/CSS3.git ~/.config/sublime-text-3/Packages/CSS3
 		#j​Query
		git clone https://github.com/SublimeText/jQuery.git ~/.config/sublime-text-3/Packages/j​Query
 		#Java​Script Completions
		git clone https://github.com/pichillilorenzo/JavaScript-Completions.git ~/.config/sublime-text-3/Packages/Java​Script\ Completions
 		#Pretty JSON
		git clone https://github.com/dzhibas/SublimePrettyJson.git ~/.config/sublime-text-3/Packages/Pretty\ JSON
 		#HTMLBeautify
		git clone https://github.com/victorporof/Sublime-HTMLPrettify.git ~/.config/sublime-text-3/Packages/HTMLPrettify
 		#Angular​JS
		git clone https://github.com/angular-ui/AngularJS-sublime-package.git ~/.config/sublime-text-3/Packages/Angular​JS
}
function Aall(){
	#Python=============================================================================================
 		#Anaconda
		git clone https://github.com/DamnWidget/anaconda.git ~/.config/sublime-text-3/Packages/Anaconda
 		#Python 3
		git clone https://github.com/petervaro/python.git ~/.config/sublime-text-3/Packages/Python\ 3
}
function Pall(){
	#PHP==================================================================================================
 		#Phpcs
		git clone https://github.com/benmatselby/sublime-phpcs.git ~/.config/sublime-text-3/Packages/Phpcs
 		#SublimeLinter-php
		git clone https://github.com/SublimeLinter/SublimeLinter-php.git ~/.config/sublime-text-3/Packages/SublimeLinter-php
}

function sublpmenu(){
cat << EOF
======================================================================
=					Sublime Text - Package
======================================================================
[主题]                           [前端]
T1 ) Seti_ST3                   .
--------------------------------F1) HTMLPrettify
[基本]                           F2) CSS3
C1 ) Package Control            F3) j​Query
C2 ) Chinese​Localizations       F4) Java​Script Completions
C3 ) notes                      F5) Pretty JSON
C4 ) Emmet                      F6) HTMLBeautify
C5 ) Side​Bar​Enhancements        F7) Angular​JS
C6 ) SublimeLinter              --------------------------------------
C7 ) BracketHighlighter         [Python] 
C8 ) SublimeCodeIntel           A1) Anaconda(全功能的Python IDE)
C9 ) Alignment                  A2) Python 3
C10) Color​Picker                -------------------------------------- 
C11) Git                        [PHP] 
C12) DocBlockr                  P1) Phpcs
C13) ConvertToUTF8              P2) SublimeLinter-php
C14) ColorHighlighter 			
C15) AutoFileName 				
C16) GitGutter 					
C17) SublimeAllAutocomplete		
C18) SublimeREPL
C19) MarkdownPreview
C20) Markdown​Editing
C21) Terminal
C22) Advanced​New​File
ALL) install ALL   CA) ALL 基本插件  FA) ALL 前端插件
AA) ALL Python     PA) ALL PHP
EOF
echo -e "\t\t \033[36;40;1m【0】\033[0m  \033[31;40;1m Return to the main menu\033[0m "
	read -p "please enter *)continue：" SPmenu
	case $SPmenu in
		T1) #Seti_ST3
		git clone https://github.com/ctf0/Seti_ST3.git ~/.config/sublime-text-3/Packages/Seti_ST3
		sublpmenu
		;;
		C1) #Package Control
		wget -P ~/.config/sublime-text-3/Installed\ Packages/  https://packagecontrol.io/Package%20Control.sublime-package
		sublpmenu
		;;
		C2) #Chinese​Localizations
		git clone https://github.com/rexdf/ChineseLocalization.git ~/.config/sublime-text-3/Packages/Chinese​Localizations
		sublpmenu
		;;
		C3) #notes(笔记语言)
		git clone https://github.com/tbh1/sublime-notes.git ~/.config/sublime-text-3/Packages/sublime-notes
		sublpmenu
		;;
		C4) #Emmet
		git clone https://github.com/sergeche/emmet-sublime.git ~/.config/sublime-text-3/Packages/Emmet
		sublpmenu
		;;
		C5) #Side​Bar​Enhancements(边栏增强)
		git clone https://github.com/SideBarEnhancements-org/SideBarEnhancements.git ~/.config/sublime-text-3/Packages/SideBarEnhancements
		sublpmenu
		;;
		C6) #SublimeLinter(代码框架)
		git clone https://github.com/SublimeLinter/SublimeLinter.git ~/.config/sublime-text-3/Packages/SublimeLinter
		sublpmenu
		;;
		C7) #BracketHighlighter(托架和标签荧光笔)
		git clone https://github.com/facelessuser/BracketHighlighter.git ~/.config/sublime-text-3/Packages/BracketHighlighter
		sublpmenu
		;;
		C8) #SublimeCodeIntel(代码智能引擎)
		git clone https://github.com/SublimeCodeIntel/SublimeCodeIntel.git ~/.config/sublime-text-3/Packages/SublimeCodeIntel
		sublpmenu
		;;
		C9) #Alignment(轻松对齐多个选择和多行选择)
		git clone https://github.com/wbond/sublime_alignment.git ~/.config/sublime-text-3/Packages/sublime_alignment
		sublpmenu
		;;
		C10) #Color​Picker(多平台颜色选择器插件)
		git clone https://github.com/weslly/ColorPicker.git ~/.config/sublime-text-3/Packages/ColorPicker
		sublpmenu
		;;
		C11) #Git
		git clone https://github.com/kemayo/sublime-text-git.git ~/.config/sublime-text-3/Packages/sublime-text-git
		sublpmenu
		;;
		C12) #DocBlockr
		git clone https://github.com/spadgos/sublime-jsdocs.git ~/.config/sublime-text-3/Packages/sublime-jsdocs
		sublpmenu
		;;
		C13) #ConvertToUTF8
		git clone https://github.com/seanliang/ConvertToUTF8.git ~/.config/sublime-text-3/Packages/ConvertToUTF8
		git clone https://github.com/seanliang/Codecs33.git ~/.config/sublime-text-3/Packages/Codecs33
		sublpmenu
		;;
		C14) #ColorHighlighter
		git clone https://github.com/Monnoroch/ColorHighlighter.git ~/.config/sublime-text-3/Packages/ColorHighlighter
		sublpmenu
		;;
		C15) #AutoFileName
		git clone https://github.com/BoundInCode/AutoFileName.git ~/.config/sublime-text-3/Packages/AutoFileName
		sublpmenu
		;;
		C16) #GitGutter
		git clone https://github.com/jisaacks/GitGutter.git ~/.config/sublime-text-3/Packages/GitGutter
		sublpmenu
		;;
		C17) #SublimeAllAutocomplete(全文件检索，可选)
		git clone https://github.com/alienhard/SublimeAllAutocomplete.git ~/.config/sublime-text-3/Packages/SublimeAllAutocomplete
		sublpmenu
		;;
		C18) #SublimeREPL
		git clone https://github.com/wuub/SublimeREPL.git ~/.config/sublime-text-3/Packages/SublimeREPL
		sublpmenu
		;;
		C19) #MarkdownPreview
		git clone https://github.com/revolunet/sublimetext-markdown-preview.git ~/.config/sublime-text-3/Packages/MarkdownPreview
		sublpmenu
		;;
		C20) #Markdown​Editing
		git clone https://github.com/SublimeText-Markdown/MarkdownEditing.git ~/.config/sublime-text-3/Packages/Markdown​Editing
		sublpmenu
		;;
		C21) #Terminal
		git clone https://github.com/wbond/sublime_terminal.git ~/.config/sublime-text-3/Packages/Terminal
		sublpmenu
		;;
		C22) #Advanced​New​File
		git clone https://github.com/skuroda/Sublime-AdvancedNewFile.git ~/.config/sublime-text-3/Packages/Advanced​New​File
		sublpmenu
		;;
#前端============================================================================================
		F1) #HTMLPrettify
		git clone https://github.com/victorporof/Sublime-HTMLPrettify.git ~/.config/sublime-text-3/Packages/HTMLPrettify
		sublpmenu
		;;
		F2) #CSS3
		git clone https://github.com/y0ssar1an/CSS3.git ~/.config/sublime-text-3/Packages/CSS3
		sublpmenu
		;;
		F3) #j​Query
		git clone https://github.com/SublimeText/jQuery.git ~/.config/sublime-text-3/Packages/j​Query
		sublpmenu
		;;
		F4) #Java​Script Completions
		git clone https://github.com/pichillilorenzo/JavaScript-Completions.git ~/.config/sublime-text-3/Packages/Java​Script\ Completions
		sublpmenu
		;;
		F5) #Pretty JSON
		git clone https://github.com/dzhibas/SublimePrettyJson.git ~/.config/sublime-text-3/Packages/Pretty\ JSON
		sublpmenu
		;;
		F6) #HTMLBeautify
		git clone https://github.com/victorporof/Sublime-HTMLPrettify.git ~/.config/sublime-text-3/Packages/HTMLPrettify
		sublpmenu
		;;
		F7) #Angular​JS
		git clone https://github.com/angular-ui/AngularJS-sublime-package.git ~/.config/sublime-text-3/Packages/Angular​JS
		sublpmenu
		;;
#Python=============================================================================================
		A1) #Anaconda(全功能的Python IDE)
		git clone https://github.com/DamnWidget/anaconda.git ~/.config/sublime-text-3/Packages/Anaconda
		sublpmenu
		;;
		A2) #Python 3
		git clone https://github.com/petervaro/python.git ~/.config/sublime-text-3/Packages/Python\ 3
		sublpmenu
		;;
#PHP==================================================================================================
		P1) #Phpcs
		git clone https://github.com/benmatselby/sublime-phpcs.git ~/.config/sublime-text-3/Packages/Phpcs
		sublpmenu
		;;
		P2) #SublimeLinter-php
		git clone https://github.com/SublimeLinter/SublimeLinter-php.git ~/.config/sublime-text-3/Packages/SublimeLinter-php
		sublpmenu
		;;
		ALL) #all
		Call
		Fall
		Aall
		Pall
		sublpmenu
		;;
		CA) #
		Call
		sublpmenu
		;;
		AA) #
		Aall
		sublpmenu
		;;
		PA) #
		Pall
		sublpmenu
		;;
		FA) #
		Fall
		sublpmenu
		;;
		0)
		./install.sh
		;;
		*)
		echo -e "input error\t\t\033[31;40;1m【×】\033[0m"
		sleep 2
		sublpmenu
	esac

}
sublpmenu