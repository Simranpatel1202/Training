#!/bin/bash

# Function to get a random name from the list provided by the user
get_random_name() {
    local name_list=("$@")
    local index=$((RANDOM % ${#name_list[@]}))
    echo "${name_list[$index]}"
}

# Main function
main() {
    # Prompt the user to input names
    echo "Enter names separated by spaces:"
    read -a names_array

    # Check if any names were entered
    if [ ${#names_array[@]} -eq 0 ]; then
        echo "No names were entered. Exiting."
        exit 1
    fi

    # Get a random name from the provided names
    random_name=$(get_random_name "${names_array[@]}")
    echo "Randomly selected name: $random_name"
}

# Run the main function
main

