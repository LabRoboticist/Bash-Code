#!/bin/bash
str="HELLO WORLD!"
echo "${str,}"   #=> "hELLO WORLD!" (lowercase 1st letter)
echo "${str,,}"  #=> "hello world!" (all lowercase)

str="hello world!"
echo "${str^}"   #=> "Hello world!" (uppercase 1st letter)
echo "${str^^}"  #=> "HELLO WORLD!" (all uppercase)
echo ${#str} #length of string

num1=10
num2=23
echo $'\n' #new line character
echo "num1 + num2 = $((num1 + num2))"
echo "num1 - num2 = $((num1 - num2))"
echo "num1 / num2 = $((num1 / num2))" #both integers so they equal zero
echo "num1 * num2 = $((num1*num2))"
