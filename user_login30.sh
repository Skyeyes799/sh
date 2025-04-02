#!/bin/bash

read -p "Enter user: " user
echo ""

while true; do
    if who | grep -q "$user"; then
        echo "User logged in"
        echo ""
        break
    else
        echo "User logged out"
        echo ""
    fi
    sleep 30
done
