#!/bin/bash

# Function to calculate factorial
factorial() {
    local num=$1
    local result=1

    # Loop from 1 to num
    for (( i=1; i<=num; i++ )); do
        result=$(( result * i ))
    done

    # Return the result
    echo $result
}

# Main script execution starts here

# Welcome message
echo "Welcome to the Factorial Calculator Script!"

# Prompt the user to enter a number
# The `read` command reads the input from the user and stores it in the variable `num`
read -p "Please enter a non-negative integer: " num

# Check if the input is a valid non-negative integer
# `-ge` checks if the number is greater than or equal to 0, `2>/dev/null` hides any error messages
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid non-negative integer."
    exit 1
fi

# Calculate the factorial of the entered number by calling the `factorial` function
factorial_result=$(factorial $num)

# Display the result
echo "The factorial of $num is $factorial_result."

