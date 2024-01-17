#!/bin/bash

# Paths to the PDF files
local_pdf="/Users/dginsberg/dginsberg.github.io/assets/pdf/cv.pdf"
source_pdf="/Users/dginsberg/Library/CloudStorage/Dropbox/Current CV/cv.pdf"


echo "Timestamp of $source_pdf: $(stat -c %Y "$source_pdf")"
echo "Timestamp of $local_pdf: $(stat -c %Y "$local_pdf")"


# Check if the source PDF is newer than the local one
if [[ "$source_pdf" -nt "$local_pdf" ]]; then
  echo "Copying the newer PDF from $source_pdf to $local_pdf"
  cp "$source_pdf" "$local_pdf"
else
  echo "The local PDF is already up to date."
fi

# Display the current Git status
git_status=$(git status --porcelain)
if [ -n "$git_status" ]; then
  # Changes exist, add all changes

  git status
  git add --all

  # Prompt for a commit message
  read -p "Enter a commit message: " commit_message

  # Commit with the provided message
  git commit -m "$commit_message"

  # Push the changes to the remote repository
  git push
else
  echo "No changes to commit."
fi

# Prompt to watch the action
read -p "Do you want to watch the deployment? (y/n): " watch_option

if [[ "$watch_option" == "y" ]]; then
  # Run "gh run watch" to watch the GitHub Actions workflow
  gh run watch --exit-status
  echo "run completed and successful"
else
  echo "Not watching the deployment."
fi
