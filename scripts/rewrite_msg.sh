#!/bin/bash

# Read the entire commit message from stdin
MESSAGE=$(cat)

# Extract the first line
FIRST_LINE=$(echo "$MESSAGE" | head -n1)

# Convert to lowercase
FIRST_LINE=$(echo "$FIRST_LINE" | tr '[:upper:]' '[:lower:]')

# Truncate to 60 characters
FIRST_LINE=${FIRST_LINE:0:60}

# Get the rest of the message (if any)
REST=$(echo "$MESSAGE" | tail -n +2)

# Output the modified message
echo "$FIRST_LINE"
if [ -n "$REST" ]; then
    echo "$REST"
fi