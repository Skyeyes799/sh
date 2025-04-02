#!/bin/bash

# Prompt user for directory input
read -p "Enter the directory path: " dir

# Check if the directory exists
if [ ! -d "$dir" ]; then
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi

# Find and display file details (inode number, creation date, last modified date, filename)
find "$dir" -maxdepth 1 -type f -exec stat -c '%i %w %y %n' {} \;
