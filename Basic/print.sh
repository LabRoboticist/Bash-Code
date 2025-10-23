#!/bin/bash
    #what interpretur to use (by the system)

word="Hello World!"
echo "fuck" #comment
echo $word
echo "$word (basic variable)"
echo "${word} extra variable" #brace epansion (~= *.txt)

echo $'\n'"New way to print Hello world by concatenate"
foo="Hello"
foo="${foo} World"
echo "${foo}"

#Special variables
echo $SHELL #current scipting language in terminal
echo $TERM #current terminal emulator
echo $HOME #home directory + user directory
echo $USER #current user
