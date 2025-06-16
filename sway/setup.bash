#!/bin/bash

# Create necessary directories if they don't exist
mkdir -p ~/Pictures
mkdir -p ~/Desktop
mkdir -p ~/Documents
mkdir -p ~/Downloads

# Change to the directory where the script is located
cd "$(dirname "$0")" || {
  echo "Failed to change directory to $(dirname "$0")"
  exit 1
}

# Enable dotglob to include hidden files in the move
shopt -s dotglob

# Move all files from the current directory to the home directory
mv -v -- * ~/ || {
  echo "Failed to move files to home directory"
  exit 1
}

# Disable dotglob
shopt -u dotglob

# Source the .bashrc to apply any changes
source ~/.bashrc

# fuck yo code nigga i'm the fucking boss don't play with me nigga fuck yo code
