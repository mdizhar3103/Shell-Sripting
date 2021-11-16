#!/bin/bash

# Basic shell script to create user
# Author: Izhar

create_user () {
    # check the total arguments passed to script
    if [[ "$#" -lt 1 ]]
    then
        echo "Usage: $0 <username>"
        exit 1
    elif getent passwd "$1"
    then
        echo "User $1 already exists on system"
        exit 2
    fi

    # add user
    sudo useradd -m "$1"
    getent passwd "$1"

}


set_password () {
    # check password is typed by user
    while ! [ -n "$USER_PASSWORD" ]
    do
        read -s -p "Enter password for the new User $1: " USER_PASSWORD
        read -s -p "Confirm password for the new User $1: " CONFIRM_PASSWORD

        if [[ "$USER_PASSWORD" != "$CONFIRM_PASSWORD" ]]
        then
            echo "Password don't match!"
            exit 1
        fi
    done
    echo "$USER_PASSWORD" | sudo passwd --stdin "$1"
}


for u in "$@"
do 
    create_user "$u"
    set_password "$u"
done

