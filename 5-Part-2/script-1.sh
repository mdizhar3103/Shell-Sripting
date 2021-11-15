# shopt is command used to configured options
shopt --help

shopt

shopt autocd

# enabling the command -s (set)
shopt -s autocd; /etc

shopt -s cdspell; cd /ect

# to unset the option
shopt -u cdspell

# restricted shell options
# Restricted shell prevents changing of the environment
# or even the current directory. The restricted_shell options 
# is read-only and cant be changed with shopt command.

shopt restricted_shell 
    # default is off

# enabling restricted shell
bash -r 
# or
rbash

# checking the mode again
shopt restricted_shell 

# to exit from restricted shell
exit 

# ===================================== #

# Using set command - to configure shell options

# list optios
set -o

set +x

# enabling options use -o

ls /etc > file1
ls /etc > file1
set -o noclobber

# now it will prevent overriding of file
ls /etc > file1

# new file writing is allowed
ls /etc > file11

# to override the file incase of noclobering
ls /etc >| file1

# to disable options use +x
set +x noclobber

## Globbing

set -o | grep glob

ls /etc/*.conf

set -f 
ls /etc/*.conf
set -o | grep glob

# to disable globbing
set +f
ls /etc/*.conf

# =================================================== #

# let command
type let

let var=3+9
echo $var

# expr command
expr 3 + 23
# Note: separate the number if you want to perfrom arithmetic operation otherwise it will return it as string
expr 3+23

a=$(expr 3 + 23 )
echo $a

echo $(( 3 * 5 ))

b = 72
c = 99
(( b  < c )) && echo OK

