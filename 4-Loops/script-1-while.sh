#!/bin/bash


declare -i n=0
declare -p n

while ((n < 11))
do 
    echo $n;
    n=n+1;
done