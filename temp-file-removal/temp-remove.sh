#!/bin/bash

# This script removes all temporary files in the current working directory.
echo "Removing all temporary files..."

# The 'find' command searches for all files with the '.tmp' extension in the current directory and any subdirectories, and the '-delete' flag deletes them.
find "/mnt/c/Users/AppData/Local/Temp" -type f -name "*.tmp" -delete

echo "Done!"