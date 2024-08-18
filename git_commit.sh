#!/bin/bash

# Stage all changes
git add .

# Remove this script from the staging area
git rm --cached "$0"

# Check for merge conflicts
if git status | grep -q "Unmerged paths"; then
    echo "Merge conflicts detected. Accepting incoming changes."

    # Accept incoming changes (the 'theirs' version of conflicts)
    git checkout --theirs .

    # Stage the resolved conflicts
    git add .

    # Remove this script from the staging area again in case it was re-staged during conflict resolution
    git rm --cached "$0"

    # Commit the resolved merge
    git commit -m "Resolved merge conflicts by accepting incoming changes"
else
    # Prompt for commit message
    echo "Enter commit message: "
    read commit_message

    # Remove this script from the staging area one last time before committing
    git rm --cached "$0"

    # Commit changes
    git commit -m "$commit_message"
fi

# Push changes
git push
