#!/bin/bash
input_file="input.txt"
output_file="output.txt"

# Open the input file and read it line by line
while IFS= read -r line; do
    # Write each line to the output file
    echo "$line" >> "$output_file"
done < "$input_file"
