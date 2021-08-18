#!/bin/bash

clear
figlet "Mac Changer"

echo "---------------------------------"
echo "|Your Current Mac Address Is ↓ ↓|"
echo "---------------------------------"
macchanger -s eth0

echo -n "Do You Want To Change Mac Address (Y/n):> "
read answer
if echo "$answer" | grep -iq "^y"; then
echo "---------------------------------"
echo "|Your New Mac Address Is    ↓ ↓ |"
echo "---------------------------------"	
	sudo macchanger -r eth0
else
	echo ""
fi