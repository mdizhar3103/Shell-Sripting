#!/bin/bash


function create_user(){
    if (getent passwd $1 > /dev/null)
    then
        echo "$1 user already exists!";
        return 1;
    else
        echo "Creating new user $1";
        useradd $1;
        return 0;
    fi
}

# return 0 - success
# return 1 - failure

create_user
echo $?

declare -f create_user