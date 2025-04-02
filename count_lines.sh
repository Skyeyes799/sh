#!/bin/bash
read -p "Enter the filename: " file
lines=0
words=0
char=0

while IFS= read -r line; do
    lines=$((lines + 1))
    char=$((char + ${#line}))
    for current_word in $line; do
        words=$((words + 1))
    done
done < "$file"

echo "No of lines: $lines"
echo "No of words: $words"
echo "No of characters: $char"
