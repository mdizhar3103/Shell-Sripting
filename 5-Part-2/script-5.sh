# taking input from user

# read is the command to take input from user
read 

# by default it stores the input in $REPLY variable
read 
echo $REPLY

# prompting for typed text and storing in variable
read -p "Enter your name: "
echo $REPLY

read -p "Enter your password: " username
echo $username

# reading only limited characters
read -n1 -p "Type Y|N: " choice
echo $choice
# -n used to read specific characters

# dont display user input
read -s -p "Enter your password: " password 
echo $password

# default value of variable 
echo ${username:-mydefaultvalue}

# replacing the string value
echo $SSH_CLIENT
echo ${SSH_CLIENT/0/9}      # replace 0 with 9
echo ${SSH_CLIENT//0/9}     # replace all 0 with 9

