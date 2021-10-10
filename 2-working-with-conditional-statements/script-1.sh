#!/bin/bash

declare -i days

read -p "Enter number of days: " days 

if [ $days -lt 1 ] 
then
    echo "Enter number greater than zero";
fi

echo "Running second if block"
if ((days  < 1 || days > 30))
then 
    echo "Enter number between 0 and 30";
fi