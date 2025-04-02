#!/bin/bash
read -p "Enter the number: " num
reverse=0
original=$num
while [ $num -ne 0 ];do
    remainder=$(( $num % 10 ))
    reverse=$(( $reverse * 10 + $remainder ))
    num=$(( $num / 10 ))
done
if [ $original -eq $reverse ];then
    echo "$original is a palindrome!"
else
    echo "$original is not a palindrome!"
fi