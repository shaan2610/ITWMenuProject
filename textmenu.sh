#!/bin/bash
p=$1
if [[ $p -eq 1 ]]
then
	while true
	do
	   clear
	   echo -e "\t\tTEXT PROCESSING COMMANDS"
	   echo -e "\n"
	   echo "1 -- Search a file for a pattern"
	   echo "2 -- Count lines, words, and characters in specified files"
	   echo "3 -- Display line differences between two files"
	   echo "4 -- Exit"
	   echo -e "\t\t  Enter your choice:"
	   read a
	   case "$a" in
		   1) echo "Type full name of the file in which you want to find the pattern:"
	      	   read myf
		   echo "Type the pattern which you want to search:"
		   read pat
		   grep $pat $myf 
		   sleep 1s ;;
		2) echo "Type the name of the file:"
		   read myf1
		   wc $myf1 
		   sleep 1s ;;
	    	3) echo "Type the name of first file:"
		   read myf1
		   echo "Type the name of second file:"
		   read myf2
		   diff $myf1 $myf2 
		   sleep 1s;;
		4) exit 1 ;;
   	   esac
	   sleep 4s
	done
fi
if [[ $p == 0 ]]
then
	while true
	do
	   clear
	   echo -e "\t\tTEXT PROCESSING COMMANDS"
	   echo -e "\n"
	   echo "1 -- Search a file for a pattern"
	   echo "2 -- Count lines, words, and characters in specified files"
	   echo "3 -- Display line differences between two files"
	   echo "4 -- Quit -- Return to Main Menu"
	   echo -e "\n"
	   echo -e "\t\t  Enter your choice:"
	   read a
	   case "$a" in
	   	1) echo "Type full name of the file in which you want to find the pattern:"
	      	   read myf
		   echo "Type the pattern which you want to search:"
		   read pat
		   grep $pat $myf 
		   sleep 1s ;;
		2) echo "Type the name of the file:"
		   read myf1
		   wc $myf1 
		   sleep 1s ;;
	    	3) echo "Type the name of first file:"
		   read myf1
		   echo "Type the name of second file:"
		   read myf2
		   diff $myf1 $myf2 
		   sleep 1s;;
	   	4) flag=0
		   break
   	   esac
  	   sleep 4s
	done
fi

if [ $flag -eq 0 ]
then
bash myHelp.sh
fi

      
