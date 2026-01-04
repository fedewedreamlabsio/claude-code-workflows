#!/bin/bash

# Script to create claude-code-workflows GitHub repo
# Run this from the claude-code-workflows directory

echo "Creating GitHub repository..."

# Create the repo via GitHub API
curl -X POST https://api.github.com/user/repos \
  -H "Authorization: Bearer $GITHUB_API_KEY" \
  -H "Accept: application/vnd.github+json" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "claude-code-workflows",
    "description": "Essential .md files and workflows for 10x productivity with Claude Code",
    "homepage": "https://x.com/yourusername",
    "private": false,
    "has_issues": true,
    "has_projects": false,
    "has_wiki": false,
    "auto_init": false
  }'

echo ""
echo "Repo created! Now initializing git..."

# Initialize git and push
cd "$(dirname "$0")"
git init
git add .
git commit -m "Initial commit: Claude Code workflows and templates

- Added README with philosophy and usage
- Added 3 essential template files (project-context, technical-decisions, claude-workflows)
- Added real-world example (x-strategy project)
- Ready for Twitter thread on .md files as leverage"

# Get your GitHub username
GITHUB_USER=$(curl -s https://api.github.com/user -H "Authorization: Bearer $GITHUB_API_KEY" | grep -o '"login": "[^"]*' | cut -d'"' -f4)

echo "Pushing to GitHub..."
git branch -M main
git remote add origin "https://github.com/$GITHUB_USER/claude-code-workflows.git"
git push -u origin main

echo ""
echo "✅ Done! Repo is live at:"
echo "https://github.com/$GITHUB_USER/claude-code-workflows"
echo ""
echo "Next steps:"
echo "1. Update README.md with your Twitter username"
echo "2. Share repo link in your .md files thread (Tuesday)"
echo "3. Add more examples as you build"
