#!/bin/bash

<<info
This script checks if an user exists
info

read -p "Enter username: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

# -eq or == same thing
if [ $count -eq 0 ];
then
	echo "User doesn't exist"
else
	echo "User exists"
fi


