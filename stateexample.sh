#!/bin/bash

# Function to handle the logic
state_example() {
    # Check if the state.txt file exists and print its contents if it does
    if [ -e /var/stateexample/state.txt ]; then
        echo "Contents of state.txt:"
        cat /var/stateexample/state.txt
    fi

    # Prompt the user to enter a message
    echo "Enter a message:"
    read user_input

    # Write the user's input to the state.txt file
    echo "$user_input" > /var/stateexample/state.txt

    # Print the contents of the updated state.txt file
    echo "Updated contents of state.txt:"
    cat /var/stateexample/state.txt
}

# Check if we are running in Docker container
if [ -f /.dockerenv ]; then
    state_example
else
    # If not in Docker, execute the function directly
    state_example
fi
#!/bin/bash

# Check if the state.txt file exists and print its contents if it does
if [ -e "state.txt" ]; then
  echo "Contents of state.txt:"
  cat "state.txt"
fi

# Prompt the user to enter a message
echo "Enter a message:"
read user_input

# Write the user's input to the state.txt file
echo "$user_input" > "state.txt"

# Print the contents of the updated state.txt file
echo "Updated contents of state.txt:"
cat "state.txt"

