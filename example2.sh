#!/bin/bash

# Arguments
file="$1"        # The file to modify
search_string="$2"  # The string to search for
new_key="$3"      # The new key to replace the line
new_value="$4"    # The new value to replace the line with

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File not found: $file"
    exit 1
fi

# Replace the line matching the pattern with key-value
sed -i "/$search_string/c\\$new_key $new_value" "$file"

echo "Replaced line containing '$search_string' with '$new_key $new_value' in $file."
