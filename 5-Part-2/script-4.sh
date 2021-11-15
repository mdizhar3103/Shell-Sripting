# ./myscript.sh mohd izhar ahmad
#  $0           $1    $2    $3
#  $# - total number of arguments
#  $0 - script name
#  $* - all arguments
#  $@ - to store all arguments in array 


printf "The script is %s\n" "$0"
printf "The number of arguments is %d\n" "$#"
printf "The arguments list is %s\n" "$*"
printf "The arguments as an array are %s\n" "$@"

fname = "$1"
lname = "$2"
print "First Name: %s Last Name: %s\n" "$fname" "$lname"

# run script ./script.sh mohd izhar


# ============================
#  Using shift
# the 1st argument will become 0, 2nd argument will become 1, so on
# ============================

while (( "$#" ))
do 
    echo "$1"
    shift
done

# ./shiftscript.sh izhar ahmad


# ============================
# Undestanding Options
# getopt command
# ============================

while getopts ':c:d:' opt
do 
    case "$opt" in
        c) sudo useradd -m "$OPTARG"
        break ;;
        d) sudo userdel -r "$OPTARG"
        break ;;
        *) echo "Usage: $0 [-c|-d] <username>"
    esac
done

# ./mygetopt.sh -h
