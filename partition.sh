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

lsblk -pl --output Name,Size,Mountpoint,Fstype | grep -e 1.5G -e /data > /tmp/.check
FILE1="/tmp/.check"
FILE2="/etc/fstab"
STRING1="1.5G /data"
STRING2="$(mountpoint /data)"
STRING3="/data is a mountpoint"
STRING4="/data  ext4    defaults        0       0"
if  grep -wq "$STRING1" "$FILE1" && [[ "$STRING2" == "$STRING3" ]] && grep -wq "$STRING4" "$FILE2"; then

        echo -e "\e[1;32mYour task is successfully Completed !!\e[0m";
else
        echo -e "\e[1;31mSomething went wrong, Please try again !!\e[0m";
fi
echo "***********************************************************"
rm -rf /tmp/.check
