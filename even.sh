#!/bin/bash

# Welcome message
echo "Welcome to the Even or Odd Checker Script!"

# Prompt the user to enter a number
# The `read` command reads the input from the user and stores it in the variable `num`
read -p "Please enter a number: " num

# Check if the input is a valid number
# `-eq` is used to compare integers, `2>/dev/null` hides any error messages
if ! [ "$num" -eq "$num" ] 2>/dev/null; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Check if the number is even or odd
# The modulus operator `%` gives the remainder of division of `num` by 2
# If the remainder is 0, the number is even, otherwise it's odd
if [ $(( num % 2 )) -eq 0 ]; then
    echo "The number $num is even."
else
    echo "The number $num is odd."
fi

