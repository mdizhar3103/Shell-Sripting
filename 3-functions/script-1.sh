#!/bin/bash

function hello(){
    echo "Hello World!";
}

hello

# using declare
# -f print the details of function
declare -f hello

# -F prints name of function
declare -F hello

# exporting function
declare -xf hello
echo $?