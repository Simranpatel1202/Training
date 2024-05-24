#!/bin/bash

# Function to get a random number from the list provided by the user
get_random_number() {
    local number_list=("$@")
    local index=$((RANDOM % ${#number_list[@]}))
    echo "${number_list[$index]}"
}

# Main function
main() {
    # Prompt the user to input numbers
    echo "Enter numbers separated by spaces:"
    read -a numbers_array

    # Check if any numbers were entered
    if [ ${#numbers_array[@]} -eq 0 ]; then
        echo "No numbers were entered. Exiting."
        exit 1
    fi

    # Get a random number from the provided numbers
    random_number=$(get_random_number "${numbers_array[@]}")
    echo "Randomly selected number: $random_number"
}

# Run the main function
main

