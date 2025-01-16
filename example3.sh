#!/bin/bash

# File path for sshd_config
file="/etc/ssh/sshd_config"

# Function to check if a configuration value exists in the file
check() {
    local search_value="$1"
    
    # Check if the search_value is provided
    if [ -z "$search_value" ]; then
        echo "Please provide a value to search for."
        return 1
    fi

    # Check if the value exists in the sshd_config file
    if grep -q "$search_value" "$file"; then
        echo "Configuration value '$search_value' found in $file."
        return 0
    else
        echo "Configuration value '$search_value' not found in $file."
        return 1
    fi
}

# Function to fix the configuration (delete old and append new value)
fix() {
    local search_value="$1"
    local new_value="$2"

    # Check if the search_value and new_value are provided
    if [ -z "$search_value" ]; then
        echo "Please provide the value to search for."
        return 1
    fi

    if [ -z "$new_value" ]; then
        echo "Please provide the new value to append."
        return 1
    fi

    # Delete the line containing the search_value
    sed -i "/$search_value/d" "$file"
    echo "Deleted line containing '$search_value' in $file."

    # Append the new config line
    echo "$new_value" >> "$file"
    echo "Appended new configuration: '$new_value' to $file."

    # Reload SSH service to apply the changes
    echo "Reloading SSH service..."
    systemctl reload sshd
    echo "SSH service reloaded."
}

# Example usage if you want to call both functions from this script:
# check "PermitRootLogin"
# fix "PermitRootLogin" "PermitRootLogin yes"

