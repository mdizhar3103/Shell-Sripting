#!/bin/bash

function print_age(){
    age=$1;   # global variable
    echo "Entered age is: $age";
    echo $age;
    return 0;
}

# the scope of variable `age` is global

print_age 99
echo $?
echo $age     # because of global scope it prints

# ======================================== #

function print_age2(){
    local age=$1;   # local variable
    echo "Entered age is: $age";
    return 0;
}

print_age2 99
echo $?