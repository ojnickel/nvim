#!/bin/bash
# Sync Neovim config from ~/.config/nvim to ~/git/nvim and commit changes

set -e

SOURCE_DIR="$HOME/.config/nvim"
TARGET_DIR="$HOME/git/nvim"

# Color output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Syncing Neovim config...${NC}"

# Copy files from source to target
rsync -av --exclude='.git' --exclude='plugin' --exclude='lazy-lock.json.bak' \
    "$SOURCE_DIR/" "$TARGET_DIR/"

# Navigate to git repo
cd "$TARGET_DIR"

# Check if there are changes
if [[ -n $(git status -s) ]]; then
    echo -e "${YELLOW}Changes detected. Committing...${NC}"

    # Show what changed
    git status -s

    # Add all changes
    git add .

    # Create commit with timestamp
    COMMIT_MSG="Update Neovim config - $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG"

    # Push to remote
    git push origin main

    echo -e "${GREEN}✓ Config synced and pushed successfully!${NC}"
else
    echo -e "${GREEN}✓ No changes detected. Config is up to date.${NC}"
fi
