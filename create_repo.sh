#!/bin/bash
# create_repo.sh
# Usage: ./create_repo.sh yourusername repo-name
if [ "$#" -ne 2 ]; then
  echo "Usage: ./create_repo.sh <github-username> <repo-name>"
  exit 1
fi
USER=$1
REPO=$2
git init
git add .
git commit -m "Initial commit - Bootstrap project"
gh repo create "$USER/$REPO" --public --source=. --remote=origin --push
echo "Repository created and pushed. Enable GitHub Pages from Settings -> Pages if needed."
