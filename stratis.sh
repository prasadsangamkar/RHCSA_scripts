#!/bin/bash
echo "###########################################################"
echo "Enter Your Name:-"
read First_Name
echo
echo "Enter Your Email:-"
read email_ip
echo
echo "Enter College Name:-"
read college
echo
echo "======================   Result   ========================="
echo "Name: $First_Name"
echo "Email: $email_ip"
echo "College: $college"
FILE1="/stratis/my_pool_1"
FILE2="/stratis/my_pool_1/filesystem-1"
FILE3="/etc/fstab"
STRING1="/stratis_mount  xfs     defaults        0       0"
if [[ -d $FILE1 ]] && [[ -L $FILE2 ]] && grep -wq "$STRING1" "$FILE3"; then
   echo -e "\e[1;32mYour task is successfully Completed !!\e[0m";
else
  echo -e "\e[1;31mSomething went wrong, Please try again !!\e[0m";
fi
echo "***********************************************************"
