#!/bin/bash

# Set the source and destination directories
src=$(pwd)
dst="../serverbackup"

# Create the destination directory if it does not exist
if [ ! -d "$dst" ]; then
  mkdir "$dst"
fi

# Copy all files and directories recursively from the source to the destination
cp -R "$src"/* "$dst"

# Display a message indicating that the copy is complete
echo "Backup complete!"

# Updating local files using git
git pull --rebase

# Prompt the user to press Enter to Exit
read -p "Press Enter to Exit"


