#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz #{} might work as normal paranthesis for variables, as a seperator

tar -czPf $output $input
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output
