#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A) #A=the fist part(alphabetical order)
month=$(date +%B)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!"
echo "The month is $month, chuckle nuts!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
