#!/bin/bash

read -p "Enter user: " user
echo ""

while true; do
  if who | grep -q "$user"; then
    echo "$user logged in"
    break
  else
    echo "$user not logged in"
    sleep 30
  fi
done
