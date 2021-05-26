#!bin/bash
p=$1
if [[ $p -eq 1 ]]
then
	while true
	do
  	  clear
  	  echo -e "\t\tFILE AND DIRECTORY MANAGEMENT COMMANDS"
	  echo -e "\n"
	  echo "1 -- Display the contents of a file"
	  echo "2 -- Remove a file"
	  echo "3 -- Copy a file"
	  echo "4 -- List a file"
	  echo "5 -- Size of a file"
	  echo "6 -- Exit Program"
	  echo -e "\t\t  Enter your choice:"
	  read a
  	  case "$a" in
		  1) echo "Name of the file that you want to display:"
		     read z 
		     cat $z ;;
		  2) echo "Name of file to be deleted:"
		     read m
		     rm $m ;;
		  3) echo "Name of the file to be copied:"
		     read b
		     echo "Destination where you want to copy:"
		     read c
		     cp $b $c ;;
		  4) echo "Enter the file name:"
		     read v
		     cat v ;;
		  5) echo "Enter name of the file:"
		     read x
		     du -sh $x | awk '{print $1}' ;;
		  6) exit ;;
 	  esac
  	    sleep 5s
	done
fi
if [[ $p -eq 0 ]]
then
	while true
	do
	  clear
	  echo -e "\tFILE AND DIRECTORY MANAGEMENT COMMANDS"
	  echo -e "\n"
	  echo "1 -- Display the contents of a file"
	  echo "2 -- Remove a file"
	  echo "3 -- Copy a file"
	  echo "4 -- List a file"
	  echo "5 -- Size of a file"
	  echo "6 -- Quit -- Return to main Menu"
	  echo -e "\n"
	  echo -e "\t\tEnter your choice:"
	  read a
	  case "$a" in
		  1) echo "Name of the file that you want to display:"
		     read z 
		     cat $z ;;
		  2) echo "Name of file to be deleted:"
		     read m
		     rm $m ;;
		  3) echo "Address of the file to be copied:"
		     read b
		     echo "Destination address where you want to copy:"
		     read c
		     cp $b $c ;;
		  4) echo "Enter the file name:"
		     read v
		     cat $v ;;
		  5) echo "Write the file name:"
		     read x
		     du -sh $x | awk '{print $1}' ;;
		  6) flag=0
		     break
  	 esac
  	 sleep 5s
       done
fi
if [ $flag -eq 0 ]
then
bash myHelp.sh
fi
