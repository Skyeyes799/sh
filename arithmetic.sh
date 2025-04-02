#!/bin/bash

read -p "Enter num1: " num1
read -p "Enter num2: " num2

echo "Operations:"
echo "1: Add"
echo "2: Subtract"
echo "3: Multiply"
echo "4: Divide"

add=$((num1 + num2))
sub=$((num1 - num2))
mul=$((num1 * num2))
div=$((num1 / num2))

read -p "Enter operation: " op

case $op in
  "1")
    echo "Sum is: $add"
    ;;
  "2")
    echo "Difference is: $sub"
    ;;
  "3")
    echo "Product is: $mul"
    ;;
  "4")
    echo "Quotient is: $div"
    ;;
  *)
    echo "Invalid operation"
    ;;
esac