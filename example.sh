#!/bin/bash

##script to search, delete and append
# Arguments
file="$1"        # The file to modify
search_string="$2" # The string to search for
new_key="$3"      # The new key to append
new_value="$4"    # The new value to append

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File not found: $file"
    exit 1
fi

# Delete the line containing the search string
sed -i "/$search_string/d" "$file"

# Append the new line with key and value
echo "$new_key $new_value" >> "$file"

echo "Line containing '$search_string' deleted and new line '$new_key $new_value' appended to $file."

