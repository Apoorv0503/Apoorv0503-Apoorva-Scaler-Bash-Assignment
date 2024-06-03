#!/bin/bash

# Check if the script received exactly one argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 ./files_count"
    exit 1
fi

DIRECTORY="$1"

# Check if the provided path is a directory
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Provided path is not a directory."
    exit 1
fi

# Declare an associative array to store file type counts
declare -A file_types

# Traverse the directory recursively and count file types
while IFS= read -r -d '' file; do
    extension="${file##*.}"
    if [ -f "$file" ]; then
        if [[ "$extension" == "$file" ]]; then
            extension="no_extension"
        fi
        ((file_types["$extension"]++))
    fi
done < <(find "$DIRECTORY" -type f -print0)

# Print the sorted list of file types and their counts
for extension in "${!file_types[@]}"; do
    echo "$extension: ${file_types[$extension]}"
done | sort

exit 0