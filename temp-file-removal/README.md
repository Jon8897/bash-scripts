# Temporary File Removal Script
This Bash script removes all temporary files with a .tmp extension in the specified directory and its subdirectories.

## Prerequisites
To use this script, you will need to have the following:

- A Bash shell emulator, such as Git Bash or Windows Subsystem for Linux (WSL), if you are on Windows.
- The find command-line utility.

## Troubleshooting
### Script not deleting files
If the script is not deleting any files, there are a few things you can try:

- Make sure you are running the script with administrative privileges, as it may not have permission to delete some files otherwise.
- Check that the temporary file directories are correctly specified for your operating system in the script. You can edit the script to match the directories on your machine.
- Ensure that there are actually temporary files with the .tmp extension in the directories being searched. If there are no files matching the search criteria, the script won't delete anything.
- If you're running the script on Windows, check that your user account has permission to delete files in the temporary file directories.

### Other Issues
If you encounter any other issues or errors, please feel free to raise an issue on the GitHub repository. Please provide as much detail as possible, including error messages and steps to reproduce the issue.

## Usage

To use this script, follow these steps:

1. Open a terminal or command prompt on your computer.
2. Navigate to the directory containing the script using the cd command. For example, if your script is located in the ~/Documents/scripts directory, you can navigate to it by running cd ~/Documents/scripts.
3. Once you're in the directory containing the script, you can run it by typing ./script_name.sh and pressing Enter. Replace script_name.sh with the name of your script file.
4. Make sure that you have specified the correct directory in the script by modifying the directory path in the find command as necessary.
5. If the script requires any input or arguments, you can provide them after the script name.

Make sure the script has executable permissions by running chmod +x script_name.sh if necessary.

### Warning

This script will permanently delete all files with the .tmp extension in the specified directory and its subdirectories. Make sure to test this script on a test environment before running it on production to ensure it does not delete any important files.

#### License

None

#### Contributing

If you have any suggestions or improvements for this script, please feel free to contribute to this repository. To contribute, please create a pull request with your proposed changes.