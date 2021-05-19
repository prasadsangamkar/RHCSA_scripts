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
FILE1="/var/spool/cron/root"
STRING1="*/2    00      10      *       *       /usr/bin/echo \"This is test\" >> /tmp/cron_example"
STRING2="*/2 00 10 * * /usr/bin/echo \"This is test\" >> /tmp/cron_example"
if  grep -Fq "$STRING1" "$FILE1" || grep -Fq "$STRING2" "$FILE1" ; then

        echo -e "\e[1;32mYour task is successfully Completed !!\e[0m";
else
        echo -e "\e[1;31mSomething went wrong, Please try again !!\e[0m";
fi
echo "***********************************************************"
