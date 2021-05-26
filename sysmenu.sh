#!bin/bash
p=$1
if [[ $p -eq 1 ]]
then
	while true
	do
	  clear
	  echo -e "\t\tSYSTEM STATUS COMMANDS"
	  echo -e "\n"
	  echo "1 -- Display the current date and time"
	  echo "2 -- Current disk usage"
	  echo "3 -- List current local and environmental"
	  echo "4 -- Display process status information"
	  echo "5 -- Exit Program"
	  echo -e "\t\t  Enter your choice:"
	  read a
	  case "$a" in
	  	1) date +%F 
		   date +%r ;;
	  	2) du -h;;
	  	3) compgen -v;;
	  	4) ps ;; 
	  	5) exit ;;
	  esac
  	  sleep 5s
	done
fi

if [[ $p -eq 0 ]]
then
	while true
	do
	  clear
	  echo -e "\t\tSYSTEM STATUS COMMANDS"
	  echo -e "\n"
	  echo "1 -- Display the current date and time"
	  echo "2 -- Current disk usage"
	  echo "3 -- List current local and environmental"
	  echo "4 -- Display process status information"
	  echo "5 -- Quit -- Return to Main Menu"
	  echo -e "\n"
	  echo -e "\t\t  Enter your choice:"
	  read a
	  case "$a" in
	  	1) date +%F 
	     	   date +%r ;;
	  	2) du -h;;
	  	3) compgen -v;;
	  	4) ps ;; 
	  	5) flag=0
		   break
 	  esac
  	  sleep 5s
	done
fi

if [ $flag -eq 0 ]
then
bash myHelp.sh
fi
