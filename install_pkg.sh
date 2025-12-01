#!/bin/bash

<<info

This script is for installing
packages using arguments

info

sudo apt-get update > /dev/null

# Error will print in the terminal

# If nothing is printed in the terminal then package is successfully installed

sudo apt-get install "$1" -y  2>&1 >  /dev/null
