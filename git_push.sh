#!/bin/bash

# Paths to the PDF files
local_pdf="$MYCV_DESTINATION"
source_pdf="$MYCV_LOCATION"

echo "Timestamp of $source_pdf: $(stat -f %m "$source_pdf")"
echo "Timestamp of $local_pdf: $(stat -f %m "$local_pdf")"


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
