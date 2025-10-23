#!/bin/bash
echo "Type in a empty or none empty string."
read string #input variable auto equals a string

if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi

echo "Give me a different string."
read string2
if [[ "$string" == "$string2" ]]; then #need spaces in the argument sides
    echo "FUCKING dum dum"
else 
    echo "Good Job! :)"
fi
