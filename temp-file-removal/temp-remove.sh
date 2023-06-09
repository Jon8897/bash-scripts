#!/bin/bash

# This script removes all temporary files in the system's default temporary directory and logs the names of deleted files.
echo "Removing all temporary files..."

# The 'find' command searches for all files with the '.tmp' extension in the default temporary directory and its subdirectories, and the '-delete' flag deletes them. The 'tee' command writes the names of deleted files to a log file called 'deleted_files.log'.
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  find "$TMPDIR" -type f -name "*.tmp" -delete | tee -a deleted_files.log
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
  find "$TEMP" -type f -name "*.tmp" -delete | tee -a deleted_files.log
else
  echo "Unsupported OS: $OSTYPE"
  exit 1
fi

echo "Done! Deleted files are logged in 'deleted_files.log'."