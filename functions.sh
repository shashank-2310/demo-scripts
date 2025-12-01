#!/bin/bash

<<info
Functions tutorial
info

# Function definition
function create_user {

read -p "Enter username: " username

sudo useradd -m $username

echo "User created!"

}

# Function call
create_user
