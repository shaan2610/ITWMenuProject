#!/bin/bash
clear
if [[ "$#" -eq "1" ]]
  then 
  	case "$*" in
		help) clear
		      bash help.sh ;;			 
		file) bash filemenu.sh 1 ;;
		text) bash textmenu.sh 1 ;;
		status) bash sysmenu.sh 1 ;;
	esac
  else
  	echo "            UNIX HELP MAIN MENU"
  	echo -e "\n"
  	echo "1 -- File and Directory Management Commands"
  	echo "2 -- Text Processing Commands"
  	echo "3 -- System Status Commands"
  	echo "4 -- EXIT "
  	echo -e "\n"
  	echo -e "             Enter your choice:"
  	read answer 
  	case "$answer" in
   		1) bash filemenu.sh 0 ;;
   		2) bash textmenu.sh 0 ;;
   		3) bash sysmenu.sh 0 ;;
   		4) exit 1 ;;
  	esac
fi

