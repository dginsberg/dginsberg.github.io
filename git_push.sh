#!/bin/bash

# Print the current git state
git status

# Add all changes
git add --all

# Prompt for a commit message
read -p "Enter a commit message: " commit_message

# Commit with the provided message
git commit -m "$commit_message"

# Push the changes to the remote repository
git push
