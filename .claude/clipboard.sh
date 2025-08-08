#!/bin/bash

# Generic clipboard helper for Claude Code
# Usage: ~/.claude/clipboard.sh "text to copy"
#        ~/.claude/clipboard.sh -f filename.txt
#        echo "text" | ~/.claude/clipboard.sh

if [ "$1" = "-f" ]; then
    # Read from file
    if [ -f "$2" ]; then
        cat "$2" | pbcopy
        echo "✓ Copied contents of $2 to clipboard"
    else
        echo "Error: File $2 not found"
        exit 1
    fi
elif [ -n "$1" ]; then
    # Use provided argument
    echo "$1" | pbcopy
    echo "✓ Copied to clipboard"
else
    # Read from stdin
    pbcopy
    echo "✓ Copied from stdin to clipboard"
fi