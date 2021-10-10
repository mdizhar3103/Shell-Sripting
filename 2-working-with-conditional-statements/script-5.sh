#!/bin/bash


# test the permission and create directory
test -w dir1 && touch dir1/myfile.txt

# AND &&
# OR ||
# NOT !=

echo $?

ls -l dir1