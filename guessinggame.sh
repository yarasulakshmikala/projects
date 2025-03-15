#!/bin/bash

# Function to count files and prompt user for guesses
function guess_files {
    local file_count=$(ls -1 | wc -l)
    local guess=-1

    echo "Guess how many files are in the current directory:"

    while [[ $guess -ne $file_count ]]; do
        read guess
        if [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low. Try again:"
        elif [[ $guess -gt $file_count ]]; then
            echo "Your guess is too high. Try again:"
        else
            echo "Congratulations! You guessed the correct number of files: $file_count"
        fi
    done
}

# Call the function
guess_files
