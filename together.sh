#!/bin/bash

function create_directory(){
    declare -l directory
    read -p "Enter directory name: " directory
    echo "$PWD/${directory}";
    if [[ -d "$PWD/${directory}" ]]
    then
        echo "Directory: $directory already exists"
    else
        echo "Directory: $directory created!"
        mkdir $directory
    fi
}

while true
do 
    clear # to clear screen
    echo "Choose 1 2 or 3"
    echo "1: list users"
    echo "2: create directory"
    echo "3: quit"
    read -sn1
    # -s silent screen
    # -n1 only read one character

    case "$REPLY" in 
        1) whoami;;
        2) create_directory;;
        3) exit 0;;
    esac
    read -n1 -p "Press any key to continue"
done