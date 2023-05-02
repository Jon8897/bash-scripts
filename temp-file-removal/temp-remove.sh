#!/bin/bash

# This script removes all temporary files in the specified directory and logs the names of deleted files.
echo "Removing all temporary files..."

# The 'find' command searches for all files with the '.tmp' extension in the 'Temp' directory of each drive on the PC, and the '-delete' flag deletes them. The 'tee' command writes the names of deleted files to a log file called 'deleted_files.log'.
for drive in {c..f}; do
  if [ -d "/mnt/$drive/Temp" ]; then
    find "/mnt/$drive/Temp" -type f -name "*.tmp" -delete | tee -a deleted_files.log
  fi
done

echo "Done! Deleted files are logged in 'deleted_files.log'."