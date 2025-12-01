#!/bin/bash

<<help

This script is for deleting users

help

echo "================ Delete user started =============="

read -p "Enter username: " username

sudo userdel -r "$username" 

if [ $(cat /etc/passwd | grep -i "$username" | wc | awk '{print $1}') == 0 ];
then
	echo "User is deleted"
else
	echo "User deletion failed"
fi

echo "================ Delete user completed =============="

