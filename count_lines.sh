#!/bin/bash

read -p "Enter filename: " file

line_count=0
word_count=0
char_count=0

while IFS= read -r line; do
    line_count=$((line_count + 1))
    char_count=$((char_count + ${#line} + 1))

    for w in $line; do
        word_count=$((word_count + 1))
    done
done < "$file"

echo "Number of lines: $line_count"
echo "Number of words: $word_count"
echo "Number of characters: $char_count"
