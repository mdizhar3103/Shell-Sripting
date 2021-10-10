#!/bin/bash

declare -a users=("izhar" "tridib" "abhinav")
declare -p users

# print the length of array
echo ${#users[*]}

for((i=0; i < ${#users[*]}; i++))
do
    echo ${users[$i]};
done

# ==================================

for file in $(ls)
do 
    stat -c "%n %F" $file;
done

# stat is the command to print details of file or foler
# run `stat` on bash to see the output
