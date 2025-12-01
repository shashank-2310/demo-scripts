#!/bin/bash

<<help

This script is for creating
users using arguments

help

echo "=============== $0 is running ============="

echo "=============== User creating started =============="

sudo useradd -m "$1"

read -s -p "Enter password: " password

echo "$1:$password" | sudo chpasswd

echo "=============== User creating completed =============="
