#!/bin/bash

# Paths to the PDF files
local_pdf="assets/pdf/cv.pdf"
source_pdf="/Users/dan/Dropbox (Personal)/Current CV/cv.pdf"

# Check if the source PDF is newer than the local one
if [[ "$source_pdf" -nt "$local_pdf" ]]; then
  echo "Copying the newer PDF from $source_pdf to $local_pdf"
  cp "$source_pdf" "$local_pdf"
else
  echo "The local PDF is already up to date."
fi

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

# Prompt to watch the action
read -p "Do you want to watch the deployment? (y/n): " watch_option

if [[ "$watch_option" == "y" ]]; then
  # Run "gh run watch" to watch the GitHub Actions workflow
  gh run watch --exit-status
  echo "run completed and successful"
else
  echo "Not watching the action."
fi
