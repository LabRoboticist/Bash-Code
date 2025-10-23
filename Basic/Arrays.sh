#!/bin/bash
Fruits=('Apple' 'Dragonfruit' 'Orange')
echo "First element = ${Fruits[0]}"           # First element
echo "Last element = ${Fruits[-1]}"          # Last element
echo "All elements, space-seperated = ${Fruits[@]}"           # All elements, space-separated
echo "Number of elements = ${#Fruits[@]}"          # Number of elements
echo "String Langth of the first element = ${#Fruits}"             # String length of the 1st element
echo "String length of the ${#Fruits[2]}"          # String length of the Nth element
#echo "${Fruits[@]:3:2}"       # Range (from position 3, length 2) (matrix (2d array))
echo "${!Fruits[@]}"          # Keys of all elements(numbers used to call for elements), space-separated

echo $'\n'"prints every individual name"
for i in "${Fruits[@]}"; do
  echo "$i"
done
#echo $'\n'
echo $'\n'"prints every key coresponding to name positions"
for i in "${!Fruits[@]}"; do
  echo "$i"
done

Fruits=("${Fruits[@]}" "Watermelon")    # Push (append)
Fruits+=('Watermelon')                  # Also Push
echo ${Fruits[@]}
#Fruits=( "${Fruits[@]/Ap*/}" )          # Remove by regex match
unset Fruits[2]                         # Remove one 3rd item 
Fruits_copy=("${Fruits[@]}")                 # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
lines=(`cat "logfile"`)                 # Read from file
