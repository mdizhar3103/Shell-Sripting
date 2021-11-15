# sleep for 5 seconds
sleep 5

# get the current process details
ps -f $$

# running the job in background
sleep 5000&

ps -fp <process id of above job>
# Note: after making job run in background and if user logged out then the job will be managed by systemd

# ======================================== #
# Creating a pipe file we can have a client send data 
# to the pipe, TERM1 and the server, TERM2, process the data
# Unlike a standard pipe this allows for IPC or Inter-process communication
# TERM = terminal

# creating resources and script
mkfifo /var/log/pipe
chmod -v 666 /var/log/pipe
echo hello > /var/log/pipe

# open other terminal
cat /var/log/pipe 
    # output as hello

# creating script of above scenario and running it as Service
# vim pipe.sh
#!/bin/bash

declare -l line
until [[ $line == 'stop' ]]
do 
    line = $(cat /var/log/pipe)
    echo $line >> /var/log/pipe.out
done

# chmod 755 pipe.sh

# Creating Service Unit
# vim mypipe.service
# Contains 
    # Unit section:
        # Descripion keyword is just for brief info about service
        # After keyword stands for run the script after the service is started
    # Service section:
        # Type keyword is for type of script
        # ExecStart keyword specifies where to start the script
        # ExecStop keyword specifies where to stop the script and MAINPID is the process id maintain by systemd at start of script
        # KillMode keyword specifies the end of process, other options
    # Install section:
        # WantedBy specifies the target started


[Unit]
Description= A demo service with pipe
After=sshd.service

[Service]
Type=simple
ExecStart=/path_of_script
ExecStop=/bin/kill $MAINPID
KillMode=process

[Install]
WantedBy=multi-user.target


# cp mypipe.service /etc/systemd/system
# systemctl daemon-reload
# systemctl enable --now mypipe.service
# systemctl status mypipe.service

echo HelloWorld > /var/log/pipe
cat /var/log/pipe.out

echo Izhar > /var/log/pipe
cat /var/log/pipe.out


