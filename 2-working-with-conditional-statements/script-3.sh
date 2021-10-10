#!/bin/bash


declare -l user_name

read -p "Enter user name: " user_name

[ $user_name == "izhar" ]
echo $?
# $? check the status of most recent command

[ $user_name != "izhar" ]
echo $?

# using double square brackets to test partial string
declare -l admin_user_name

read -p "enter admin user name: " admin_user_name

[[ $admin_user_name == *_admin ]]
echo $?

[[ $admin_user_name == *_user ]]
echo $?

# using double square brackets to match regex
[[ $admin_user_name =~ _admin$ ]]
echo $?
# Note: ~ is used to match

declare -p BASH_REMATCH

[[ $admin_user_name =~ _user$ ]]
echo $?

declare -p BASH_REMATCH