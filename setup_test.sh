#!/bin/bash

# Check if an ID was provided as an argument
if [ -z "$1" ]; then
    read -p "Enter your main repository PR ID: " PR_ID
else
    PR_ID=$1
fi

if [ -z "$PR_ID" ]; then
    echo "Error: PR ID cannot be empty."
    exit 1
fi

README_FILE="README.md"
PLACEHOLDER="\[your-mainrepo-pr-id\]"

# Check if README exists
if [ ! -f "$README_FILE" ]; then
    echo "Error: $README_FILE not found."
    exit 1
fi

# Replace all occurrences of the placeholder
# Note: we use a different delimiter (|) in case the PR_ID contains slashes (unlikely but safe)
sed -i "s|$PLACEHOLDER|$PR_ID|g" "$README_FILE"

echo "Successfully updated $README_FILE with PR ID: $PR_ID"
