#!/bin/bash

<<help

This is shell script for
creating users.

help


echo "=========== Creation of User Started ============="

read -p "Enter the username: " username

read -p "Enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=========== Creation of User Completed ============="
