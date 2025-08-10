#!/bin/bash

# Twine Game GitHub Upload Script
# This script helps you upload your Twine game to GitHub as a private repository

echo "🎮 Twine Game GitHub Upload Helper"
echo "=================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Check if we're in a git repository
if [ -d ".git" ]; then
    echo "⚠️  This directory is already a git repository."
    read -p "Do you want to continue? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Initialize git repository
echo "📁 Initializing git repository..."
git init

# Add all files
echo "📤 Adding files to git..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Twine game upload"

echo ""
echo "✅ Local git repository created successfully!"
echo ""
echo "Next steps:"
echo "1. Create a new private repository on GitHub:"
echo "   - Go to https://github.com/new"
echo "   - Name your repository (e.g., 'my-twine-game')"
echo "   - Make sure 'Private' is checked"
echo "   - Don't initialize with README, .gitignore, or license"
echo "   - Click 'Create repository'"
echo ""
echo "2. Connect and push to GitHub:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Replace YOUR_USERNAME and YOUR_REPO_NAME with your actual GitHub username and repository name."