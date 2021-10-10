#!/bin/bash

# Note:
# test command is shell built-in
# [ is a shell built-in, is synonym for test
# advance test [[ is a shell keyword

type test [ [[

# test regular file
[[ -f /etc/hosts ]]
echo $?

# test directory
[[ -d /etc ]]
echo $?

# symbolic link
[[ -L /etc/localtime ]]
echo $?

# existence of file
[[ -e /etc/nologin ]]
echo $?

# read permission
[[ -r /etc/hosts ]]
echo $?

# write permission
[[ -w /etc/hosts ]]
echo $?

# execute permission
[[ -x /etc/hosts ]]
echo $?

# tests for sticky bit
[[ -k /tmp ]]
echo $?

# test for SUID
[[ -s /bin/passwd ]]
echo $?

