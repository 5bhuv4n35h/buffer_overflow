#!/bin/bash
##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal
echo -e "${GREEN}"
##################################installation starts ######################################
options=("create unique pattern for buffer overflow " "locate patter offset for bufer overflow"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
    
    "create unique pattern for buffer overflow ")              
        echo -e "${GREEN} "
                  /usr/bin/msf-pattern_create -h
         read -p "enter the  length of buffer" lent
         /usr/bin/msf-pattern_create -l  $lent

             ;;
    "locate patter offset for bufer overflow")
           /usr/bin/msf-pattern_offset -h
           echo -e "\n remember the length of buffer from previous step && copy the stringfrom eip"
           read -p "enter the length of buffer " lenb
           read -p "enter the eip string " eipb
           /usr/bin/msf-pattern_offset -l $lenb -q $eipb
         ;;  
   
    
    "Quit")
       break
       ;;
    
    *) 
     echo invalid option
     ;;
  esac
done
