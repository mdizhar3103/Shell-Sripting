#!/bin/bash

# until exectes until the condition becomes true
declare -i n=11
declare -p n

until (( n == 0))
do 
    echo $n;
    n=n-1
done