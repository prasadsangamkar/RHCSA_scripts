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
ps cax | grep httpd >/dev/null
FILE1=/var/www/html/index.html
if [ $? -eq 0 ] && [[ -f $FILE1 ]] && grep -iq "It Work's" "$FILE1" && curl -s localhost >/dev/null ; then
  echo -e "\e[1;32mYour task is successfully Completed !!\e[0m";
else
  echo -e "\e[1;31mSomething went wrong, Please try again !!\e[0m";
fi
echo "***********************************************************"
