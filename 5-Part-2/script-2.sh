STDOUT - >
STDERR - 2>

ls /etc/hosts > output.txt
ls /etc/host 2> outputerr.txt

# redirecting both STDOUT and STDERR
ls /etc/hosts /etc/host &>file1.txt

# ============================================ #
# Controlling Redirection using Exec (File Descriptors)

ls /proc/$$/fd
# $$ - refer to current process

LOG=log.file
# 4 means - redirect to same location
exec 4>&1
ls /proc/$$/fd

ls
exec > "$LOG"  # redirect to variable log

# resetting the redirection
exec 1>&4 4>&-   # reset file descriptor 4


#  =================================== #
# HEREDOC
# stdin can be redirect from file rather than keyboard

cat > test.txt <<END
My name is Mohd Izhar
192.168.43.1
END

cat test.txt 


#  =================================== #
# CONSOLE PRINTING

type -a echo printf

username=Izhar
printf "The user is: %s\n" "$username"

username="Mohd Izhar"
printf "The user is: %s\n" "$username"

username=Mohd Izhar
printf "The user is: %s\n" "$username"

