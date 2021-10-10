#!/bin/bash

CURRENTDAYOFTHEMONTH=$(date +%d)

if [ $CURRENTDAYOFTHEMONTH -le 10 ]
then
    echo "We are within the first 10 days of the month";
elif [ $CURRENTDAYOFTHEMONTH -le 20 ]
then
    echo "We are within the first 20 days of the month";
else
    echo "We are within the last 10 days of the month";
fi