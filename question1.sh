#!/bin/bash

# Check if the script received exactly one argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 my.txt"
    exit 1
fi

LOG_FILE="$1"

# Check if the log file exists and is readable
if [ ! -f "$LOG_FILE" ] || [ ! -r "$LOG_FILE" ]; then
    echo "Error: Log file does not exist or is not readable."
    exit 1
fi

# Total Requests Count
total_requests=$(grep -cve '^\s*$' "$LOG_FILE")
echo "Total Requests Count: $total_requests"

# Percentage of Successful Requests
successful_requests=$(grep -E 'HTTP/1\.[01]" 2[0-9]{2} ' "$LOG_FILE" | grep -cve '^\s*$')
successful_percentage=$(awk "BEGIN {printf \"%.2f\", ($successful_requests/$total_requests)*100}")
echo "Percentage of Successful Requests: $successful_percentage%"

# Most Active User (IP address)
most_active_user=$(awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
echo "Most Active User: $most_active_user"

exit 0