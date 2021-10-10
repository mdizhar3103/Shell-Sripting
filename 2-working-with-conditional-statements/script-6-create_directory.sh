#!/bin/bash


declare -l DIR

echo -n "Enter a directory to create: "
read DIR
if [[ -e $DIR ]]
    then
        echo "$DIR already exists"
        exit 1
else
    if [[ -w $PWD ]]
        then 
            mkdir -p $DIR
    else
        echo "You don't have permission to $PWD"
        exit 2
    fi
fi

# Note: $PWD run on bash shell, will give the path