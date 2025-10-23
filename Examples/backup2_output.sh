#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null # 2> redirect stderr(standard error/ normal error message) 
# > = redirect stdout(standard output / expected output)
# &> = redirect both stderr and stdout
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output
