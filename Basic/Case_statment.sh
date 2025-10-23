#!/bin/bash

echo "Type in q to quite"
echo "Type in a number" {1..5}
read num

while [[ $num != "q" ]]; do
    case $num in
        1) echo "You chose one";;
        2) echo "You chose two";;
        3) echo "You chose three";;
        4) echo "You chose four";;
        5) echo "You chose five";;
        *) echo "The thingyou typed in is not a number provided";;
    esac
done
