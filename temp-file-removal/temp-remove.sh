#!/bin/bash

# This script removes all temporary files in the specified directory.
echo "Removing all temporary files..."

# The 'find' command searches for all files with the '.tmp' extension in the specified directory and its subdirectories, and the '-delete' flag deletes them.
find "/mnt/c/Users/jonathankeefe.ASTONBERKELEY/AppData/Local/Temp" -type f -name "*.tmp" -delete

echo "Done!"