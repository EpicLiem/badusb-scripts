#!/bin/bash

# Define the LaunchAgent plist file path
LAUNCH_AGENTS_DIR="$HOME/Library/LaunchAgents"
PLIST_PATH="$LAUNCH_AGENTS_DIR/com.user.permadvormak.plist"

# Unload the LaunchAgent
if [ -f "$PLIST_PATH" ]; then
    launchctl unload "$PLIST_PATH"
    echo "LaunchAgent unloaded."
else
    echo "LaunchAgent plist file not found."
fi

# Remove the LaunchAgent plist file
if [ -f "$PLIST_PATH" ]; then
    rm "$PLIST_PATH"
    echo "LaunchAgent plist file removed."
else
    echo "No LaunchAgent plist file to remove."
fi

# Reset the key mappings to default
hidutil property --set '{"UserKeyMapping":[]}'

# Inform the user
echo "Key mappings have been reset to default."
