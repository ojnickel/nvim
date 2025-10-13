#!/bin/bash
# Watch for changes in Neovim config and auto-sync using inotifywait
# Requires: inotify-tools (install with: sudo apt install inotify-tools)

SOURCE_DIR="$HOME/.config/nvim"
TARGET_DIR="$HOME/git/nvim"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}Watching $SOURCE_DIR for changes...${NC}"
echo -e "${YELLOW}Press Ctrl+C to stop${NC}\n"

# Watch for modifications, creations, and deletions
inotifywait -m -r -e modify,create,delete,move "$SOURCE_DIR" --exclude '(plugin|.git)' |
while read -r directory events filename; do
    echo -e "${YELLOW}Change detected: $events $filename${NC}"

    # Wait 2 seconds to batch multiple rapid changes
    sleep 2

    # Run the sync script
    "$TARGET_DIR/sync-config.sh"

    echo -e "${GREEN}Watching for more changes...${NC}\n"
done
