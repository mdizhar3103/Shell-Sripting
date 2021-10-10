#!/bin/bash

# convert to lower case at declaration
declare -l MY_NAME="Mohd Izhar"

# print the attribute name with value assigned
declare -p MY_NAME

# convert to upper case at declaration
declare -u MY_LANGUAGE="English"

declare -p MY_LANGUAGE

# use unset command to unset value of attribute
unset MY_NAME
declare -p MY_NAME

# exporting variable 
declare -x HOSTNAME
declare -p HOSTNAME

# removing variable from environment using +x
declare +x PASSWORD
declare -p PASSWORD

# constants variable -r (read only)
declare -r  NEW_NAME="izhar"
declare -p NEW_NAME

# integer variables
declare -i days=30
declare -p days
echo $days

# using arrays
declare -a user_names
user_names[0]=izhar
user_names[1]=tridib
declare -p user_names

echo ${user_names}    # returns only 0 index value
echo ${user_names[@]} # to get all element in array

# using Associate Array (like dictionary or map datatype)
unset user_names
declare -A user_names
user_names=(['first_name']="mohd" ['last_name']="izhar")
declare -p user_names
echo ${user_names['first_name']}