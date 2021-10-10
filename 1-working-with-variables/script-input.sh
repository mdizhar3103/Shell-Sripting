#!/bin/bash


RANDOMNUM=$(shuf -i1-10 -n1)

NUMBER=0

while [ $NUMBER != $RANDOMNUM ]
do
    read -p "Enter a number between 1 and 10: " NUMBER
done
echo "Congratulations! Your guess was right!"