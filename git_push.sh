#!/bin/bash

# Display the current Git status
git status

# Check if the branch is up to date with the remote
if git pull --rebase --quiet; then
  echo "Your branch is already up to date with the remote."
else
  # Add all changes
  git add --all

  # Prompt for a commit message
  read -p "Enter a commit message: " commit_message

  # Commit with the provided message
  git commit -m "$commit_message"

  # Push the changes to the remote repository
  git push
fi

