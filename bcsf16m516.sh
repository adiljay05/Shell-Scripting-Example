RED='\033[0;31m'
LRED='\033[1;31m'
YELLOW='\033[1;33m'
NC='\033[0m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'



bash -c "clear"
echo -e "======================================================"			#printing the main menu for my program
echo -e "|  ${LRED}Welcome to shell scripting tutorials  ${NC}             | "
echo -e "======================================================"
echo -e "|  1: ${GREEN}Print a statement of your own choice${NC}            |"
echo -e "|  2: ${GREEN}do some calculations using my calculator ${NC}       |"
echo -e "|  3: ${GREEN}print numbers to a specific range ${NC}              |"
echo -e "|  4: ${GREEN}execute a list of commands which I have stored ${NC} |"
echo -e "|  5: ${GREEN}view source code of current script ${NC}             |"
echo -e "|  6: ${GREEN}Write text to file using terminal ${NC}              |"
echo -e "|  7: ${GREEN}view contents of a file in trminal ${NC}             |"
echo -e "|  8: ${LRED}terminate the program ${NC}                          |"
echo -e "======================================================"
echo -e "Select your option                                 "
read choice					#reading user choice for above menu
while [ $choice -gt 0 ]
do
if [ $choice == 1 ]			#user will write a statment and that statement will be printed (this shows the use of variables)
then
	bash -c "clear"
	echo -e "======================================================"
	echo -e "|    ${LRED}            Print Statement menu  ${NC}               |"
	echo -e "======================================================"
	echo -e "Enter your statement"
	read state 			   #taking an input string from user
	echo -e "Your Statement is : ${CYAN}"
	echo -e $state
	echo -e "${NC}"
	echo -e ""
	echo -e "Press enter to continue"
	echo -e ""
	read fileName1			#this is the test character which will be used to take input from user so that the next loop will continue and the screen is cleared 
elif [ $choice == 2 ]		#this is the menu for calculator and our calculator will do some basic operations like addition,subtraction,multiplication or division
then
	bash -c "clear"
	echo -e "======================================================"
	echo -e "|               ${LRED}  Calculator Menu	${NC}	       |"
	echo -e "======================================================"
	echo -e "1: ${YELLOW}Addition${NC}"
	echo -e "2: ${YELLOW}Subtraction${NC}"
	echo -e "3: ${YELLOW}Multiplication${NC}"
	echo -e "4: ${YELLOW}Division${NC}"
	echo -e "Select your option"			#sub menu for calculator
	read option
	if [ $option == 1 ]			#if selected option is addition
	then
		bash -c "clear"
    	echo -e "======================================================"
    	echo -e "|                  ${LRED}   Addition		       ${NC}   |"
    	echo -e "======================================================"
		echo -e -n "enter first value : "
		read first				#first operand
		echo -e -n "enter second value : "
		read second				#second operand
		sum=$((first + second))
		echo -e "${CYAN}sum is : "$sum
		echo -e "${NC}"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1			#this is again the same test character
	elif [ $option == 2 ]		#if the subtraction option is choosed
	then
		bash -c "clear"
		echo -e "======================================================"
		echo -e "|                ${LRED}     Subtraction		      ${NC}    |"
		echo -e "======================================================"
		echo -e -n "enter first value : "
		read first				#first operand
		echo -e -n "enter second value : "
		read second				#second operand
		sub=$((first - second))
		echo -e "${CYAN}subtraction is : "$sub
		echo -e "${NC}"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1			#again test charcter
	elif [ $option == 3 ]		#if the multiplication is selected
	then
		bash -c "clear"
		echo -e "======================================================"
		echo -e "|                 ${LRED}    Multipication		 ${NC}     |"
		echo -e "======================================================"
		echo -e -n "enter first value : "
		read first				#first operand
		echo -e -n "enter second value : "
		read second				#second operand
		mul=$((first * second))
		echo -e "${CYAN}Multiplication is : "$mul
		echo -e "${NC}"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	elif [ $option == 4 ]		#if division is selected
	then
		bash -c "clear"
		echo -e "======================================================"
		echo -e "|                 ${LRED}    Division	    		  ${NC}   |"
		echo -e "======================================================"
		echo -e -n "enter numerator : "
		read first				#first operand
		echo -e -n "enter denumerator : "
		read second				#second operand
		div=$((first / second))
		echo -e "${CYAN}Division is : "$div
		echo -e "${NC}"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	fi
elif [ $choice == 3 ]			#this will tell you how the while loop works
then
	bash -c "clear"
	echo -e "======================================================"
	echo -e "|             ${LRED}   Print a Range of Numbers        ${NC}     |"
	echo -e "======================================================"
	echo -e -n "enter starting point of range : "
	read start 					#taking input of starting of range
	echo -e -n "enter ending point of range : "
	read end 					#taking input of ending of range
	end=`expr $end + 1`
	while [ $start -lt $end ]	#printing the numbers with this loop
	do
		echo -e $start
		start=`expr $start + 1`
	done
	echo -e ""
	echo -e ""
	echo -e "Press enter to continue"
	echo -e ""
	read fileName1
elif [ $choice == 4 ]			#if users select to execute some commands
then
bash -c "clear"
echo -e "======================================================"
echo -e "|${LRED}    Running linux commands using shell scripting   ${NC}  |"
echo -e "======================================================"
echo -e "1: ls (show contents of a disrectory)"
echo -e "2: cat (show contents of a file on terminal)"
echo -e "3: mkdir (make a directory)"
echo -e "4: rmdir (remove a directory)"
echo -e "5: man (manual of a command)"
echo -e "6: Check present working directory"
echo -e "7: Change current user password"
echo -e "8: Running whoami command"
echo -e "9: Copy files from one place to another using cp command"
echo -e "10: Moving files from one place to another using mv command"
echo -e "11: Creating a .tar backup"
echo -e "12: Creating a .gz fle using gzip command"
echo -e "13: enter your own command"
echo -e "======================================================"
echo -e "Selct an option "
read command
   	if [ $command == 1 ]		#if ls command is selected
   	then
   		bash -c "clear"
   		echo -e "======================================================"
		echo -e "| ${LRED}   Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running ls Command : "
		echo -e -n "enter switch if any (Hit enter if there is no switch) : "		#checking if user want to enter a switch
		read switch
		cmd="ls"
		bash -c "$cmd $switch"
		echo -e ""
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	elif [ $command == 2 ]		#if cat command is slected
	then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting   ${NC}  |"
		echo -e "======================================================"
		echo -e "Running cat Command : "		
		echo -e -n "file name : "
		read fname
		cmd="cat"
		bash -c "$cmd $fname"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	elif [ $command == 3 ]		#if mkdir is selected
	then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting   ${NC}  |"
		echo -e "======================================================"
		echo -e "Running mkdir Command : "		
		echo -e -n "enter directory name : "
		read dirnaam
		cmd="mkdir"
		bash -c "$cmd $dirnaam"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	elif [ $command == 4 ]		#id rmdir is slected
	then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting   ${NC}  |"
		echo -e "======================================================"
		echo -e "Running rmdir Command : "		
		echo -e -n "enter directory name : "
		read dirnaam
		cmd="rmdir -r"
		bash -c "$cmd $dirnaam"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	elif [ $command == 5 ]		#if man is selected
	then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running man Command : "		
		echo -e -n "enter command name : "
		read cmdname
		cmd="man"
		bash -c "$cmd $cmdname"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 6 ]		#if man is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running pwd Command : "
		echo -e -n "Present working directory is : "
		cmd="pwd"
		bash -c "$cmd"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 7 ]		#if pwd is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running passwd Command : "
		cmd="passwd"
		bash -c "$cmd"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 8 ]		#if woami is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running whoami Command : "
		cmd="whoami"
		bash -c "$cmd"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 9 ]		#if copy files is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running copy(cp) Command : "
		cmd="cp"
		echo -e -n "Enter source path with file name(E.g : /root/Desktop/some_file.txt) : "
		read source
		echo -e -n "Enter destination path (E.g : /root/Desktop/jawad) : "
		read destination
		bash -c "$cmd $source $destination"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 10 ]		#if move file is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Running move(mv) Command : "
		cmd="mv"
		echo -e -n "Enter source path with file name(E.g : /root/Desktop/some_file.txt) : "
		read source
		echo -e -n "Enter destination path (E.g : /root/Desktop/jawad) : "
		read destination
		bash -c "$cmd -i $source $destination"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 11 ]		#if tar is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Making a backup with tar command : "
		cmd="tar"
		echo -e -n "Enter backup name with .tar :  "
		read name
		echo -e -n "Enter source (E.g : /root/Desktop/jawad) : "
		read path
		bash -c "$cmd -cvf $name.tar $path"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
		elif [ $command == 12 ]		#if creating .gz is selected
		then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "|  ${LRED}  Running linux commands using shell scripting  ${NC}   |"
		echo -e "======================================================"
		echo -e "Making a .gz file with gzip command : "
		cmd="gzip"
		echo -e -n "Enter file name to be compressed :  "
		read name
		bash -c "$cmd $name "
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	elif [ $command == 13 ]		#prompting user if he/she wants to run his/her own commands
	then
		bash -c "clear"
   		echo -e "======================================================"
		echo -e "| ${LRED}   Running linux commands using shell scripting   ${NC}  |"
		echo -e "======================================================"
		echo -e -n "enter your own command to execute : "
		read cmdname
		bash -c "$cmdname"
		echo -e ""
		echo -e "Press enter to continue"
		echo -e ""
		read fileName1
	fi
elif [ $choice == 5 ]			#printing the source code of the shell script file
then
	bash -c "clear"
	echo -e "======================================================"
	echo -e "| ${LRED}   Printing the code of source file 		   ${NC}  |"
	echo -e "======================================================"
	cmd="cat bcsf16m516.sh"		
	bash -c "$cmd"
	echo -e ""
	echo -e "Press enter to continue"
	echo -e ""
	read fileName1
elif [ $choice == 6 ]			#storing data in file using terminal
then
	echo -e "Enter file name"
	read fileName
	echo -e "Enter text you want to write in file"
	read text
	echo -e $text > $fileName
	echo -e ""
	echo -e "Press enter to continue"
	echo -e ""
	read fileName1
elif [ $choice == 7 ]			#displaying data from a file to the terminal
then
	echo -e -n "enter file name : "
	read fileName1
	bash -c "cat $fileName1"
	echo -e ""
	echo -e ""
	echo -e "Press enter to continue"
	echo -e ""
	read fileName1
elif [ $choice == 8 ]			#exiting from the program
then
	bash -c "clear"
	break;
else
	echo -e " " 
	echo -e " " 
	echo -e "please enter a corerct choice"
	echo -e " " 
	echo -e " " 
	read k
fi
   #echo -e $choice
   #choice=`expr $choice - 1`
bash -c "clear"
echo -e "======================================================"			#printing the main menu for my program
echo -e "|  ${LRED}Welcome to shell scripting tutorials  ${NC}             | "
echo -e "======================================================"
echo -e "|  1: ${GREEN}Print a statement of your own choice${NC}            |"
echo -e "|  2: ${GREEN}do some calculations using my calculator ${NC}       |"
echo -e "|  3: ${GREEN}print numbers to a specific range ${NC}              |"
echo -e "|  4: ${GREEN}execute a list of commands which I have stored ${NC} |"
echo -e "|  5: ${GREEN}view source code of current script ${NC}             |"
echo -e "|  6: ${GREEN}Write text to file using terminal ${NC}              |"
echo -e "|  7: ${GREEN}view contents of a file in trminal ${NC}             |"
echo -e "|  8: ${LRED}terminate the program ${NC}                          |"
echo -e "======================================================"
echo -e "Select your option                                 "
read choice
done
