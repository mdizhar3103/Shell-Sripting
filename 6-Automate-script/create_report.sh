#!/bin/bash 

# Create a report file for single shipping conatiner 
# Author: Izhar


if [[ ! $1 ]] 
then 
    echo "Error: missing parameter: container name"
    exit 1
    # exit 0 for success
fi
container="$1"

input_file="shipments.csv"
if [[ ! $input_file  ]]
then
    echo "Error: Input file not specified"
    exit 1
fi

if [[ ! -e "$input_file" ]]
then
    echo "Error: Input file $input_file does not exist"
    exit 1
fi

if [[ $2 ]]
then
    directory="$2"
else
    directory="reports"
fi
mkdir -p -- "$directory"

if grep -- "$container" "$input_file" > "$directory/${container}_report.csv"
then 
    echo "Wrote report to $directory/$container.csv"
else
    echo "Container $container not found in $input_file"
fi

# shellcheck create_report.sh       // to check error in script

# ========================================= #
# Passing options will cause script to hang up
# lets pass the options to grep command but the options will be treated as $container 
# grep "$container" shipments.csv > "$directory/$container.csv"
# avoid options confusion use double --
# grep -- "$container" shipments.csv > "$directory/$container.csv"
# so everything comming after this will be arguments
# -- means End of Options
# Using container in {} makes use of variable value if we use $container_report wihtout braces the bash will treat as variable not exist so create .csv with empty string name


