#!/bin/bash
# Assignment 1 Writer Script. Writes "writestr" to "writefile" overwriting
# any existing file if necessary, and creating the target if necessary.

# Usage: writer.sh <writefile> <writestr>

# Verify exactly two arguments.
if [ "$#" -ne 2 ]; then
    echo "Usage: "$0" <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Make target directory if necessary.
td=$(dirname "$writefile")
if [ ! -d "$td" ]; then
    mkdir -p "$td"
fi

# Write string (with overwrite)
echo "$writestr" > "$writefile"