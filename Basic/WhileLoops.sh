#!/bin/bash

# ~= cat file.txt
while read -r line; do # -r flap is used to make '/' character an espace character
    echo $line
done <file.txt


echo "See another while loop? (y/n) or (Y/N)"; read str
if [[ $str == "y" || $str == "Y" ]]; then  
  #takes in a input then outputs it
  echo "Next While loop has started"
    while read -r line; do
        echo $line
    done
elif [[ $str == "n" || $str == "N" ]]; then 
    echo "Pussy! "
fi
