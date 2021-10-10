#!/bin/bash


echo "Starting to run the script..."
# VARIABLE ASSIGNMENT
# Show hostname:
HOST=$(hostname)
# User executing the script:
CURRENTUSER=$(whoami)
# Current date:
CURRENTDATE=$(date +%F)
# Host IP address:
IPADDRESS=$(hostname -I | cut -d ' ' -f1)

# PRINT MESSAGES
echo "Today is: $CURRENTDATE"
echo "Hostname: $HOST ($IPADDRESS)"
echo "Current User: $CURRENTUSER:"
