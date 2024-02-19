#!/bin/bash

# network testing script for git bash on windows

echo "Network Testing Script"

#Check Internet Connectivity

echo "1. Chenchiinh Internet Connectivity"

ping -c 4 www.google.com

echo "-------------------"

#Display Networkt Interfaces and Ip Address

echo "2. Displaying Networkt interfaces and ip Adress"
ipconfig
echo "-----------------------"

