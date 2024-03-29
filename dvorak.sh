#!/bin/bash
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc": 0x70000002D,"HIDKeyboardModifierMappingDst": 0x70000002F},{"HIDKeyboardModifierMappingSrc": 0x70000002E,
"HIDKeyboardModifierMappingDst": 0x700000030},{"HIDKeyboardModifierMappingSrc": 0x700000014,"HIDKeyboardModifierMappingDst": 0x700000034},{"HIDKeyboardModifierMappingSrc": 0x70000001A,
"HIDKeyboardModifierMappingDst": 0x700000036},{"HIDKeyboardModifierMappingSrc": 0x700000008,"HIDKeyboardModifierMappingDst": 0x700000037},{"HIDKeyboardModifierMappingSrc": 0x700000015,
"HIDKeyboardModifierMappingDst": 0x700000013},{"HIDKeyboardModifierMappingSrc": 0x700000017,"HIDKeyboardModifierMappingDst": 0x70000001C},{"HIDKeyboardModifierMappingSrc": 0x70000001C,
"HIDKeyboardModifierMappingDst": 0x700000009},{"HIDKeyboardModifierMappingSrc": 0x700000018,"HIDKeyboardModifierMappingDst": 0x70000000A},{"HIDKeyboardModifierMappingSrc": 0x70000000C,
"HIDKeyboardModifierMappingDst": 0x700000006},{"HIDKeyboardModifierMappingSrc": 0x700000012,"HIDKeyboardModifierMappingDst": 0x700000015},{"HIDKeyboardModifierMappingSrc": 0x700000013,
"HIDKeyboardModifierMappingDst": 0x70000000F},{"HIDKeyboardModifierMappingSrc": 0x70000002F,"HIDKeyboardModifierMappingDst": 0x700000038},{"HIDKeyboardModifierMappingSrc": 0x700000030,
"HIDKeyboardModifierMappingDst": 0x70000002E},{"HIDKeyboardModifierMappingSrc": 0x700000016,"HIDKeyboardModifierMappingDst": 0x700000012},{"HIDKeyboardModifierMappingSrc": 0x700000007,
"HIDKeyboardModifierMappingDst": 0x700000008},{"HIDKeyboardModifierMappingSrc": 0x700000009,"HIDKeyboardModifierMappingDst": 0x700000018},{"HIDKeyboardModifierMappingSrc": 0x70000000A,
"HIDKeyboardModifierMappingDst": 0x70000000C},{"HIDKeyboardModifierMappingSrc": 0x70000000B,"HIDKeyboardModifierMappingDst": 0x700000007},{"HIDKeyboardModifierMappingSrc": 0x70000000D,
"HIDKeyboardModifierMappingDst": 0x70000000B},{"HIDKeyboardModifierMappingSrc": 0x70000000E,"HIDKeyboardModifierMappingDst": 0x700000017},{"HIDKeyboardModifierMappingSrc": 0x70000000F,
"HIDKeyboardModifierMappingDst": 0x700000011},{"HIDKeyboardModifierMappingSrc": 0x700000033,"HIDKeyboardModifierMappingDst": 0x700000016},{"HIDKeyboardModifierMappingSrc": 0x700000034,
"HIDKeyboardModifierMappingDst": 0x70000002D},{"HIDKeyboardModifierMappingSrc": 0x70000001D,"HIDKeyboardModifierMappingDst": 0x700000033},{"HIDKeyboardModifierMappingSrc": 0x70000001B,
"HIDKeyboardModifierMappingDst": 0x700000014},{"HIDKeyboardModifierMappingSrc": 0x700000006,"HIDKeyboardModifierMappingDst": 0x70000000D},{"HIDKeyboardModifierMappingSrc": 0x700000019,
"HIDKeyboardModifierMappingDst": 0x70000000E},{"HIDKeyboardModifierMappingSrc": 0x700000005,"HIDKeyboardModifierMappingDst": 0x70000001B},{"HIDKeyboardModifierMappingSrc": 0x700000011,
"HIDKeyboardModifierMappingDst": 0x700000005},{"HIDKeyboardModifierMappingSrc": 0x700000010,"HIDKeyboardModifierMappingDst": 0x700000010},{"HIDKeyboardModifierMappingSrc": 0x700000036,"HIDKeyboardModifierMappingDst": 0x70000001A},
{"HIDKeyboardModifierMappingSrc": 0x700000037,"HIDKeyboardModifierMappingDst": 0x700000019},{"HIDKeyboardModifierMappingSrc": 0x700000038,"HIDKeyboardModifierMappingDst": 0x70000001D}]}'


# Define the directory for the script and LaunchAgent
SCRIPT_DIR="$HOME"
LAUNCH_AGENTS_DIR="$HOME/Library/LaunchAgents"
SCRIPT_PATH="$SCRIPT_DIR/permadvormak.sh"
PLIST_PATH="$LAUNCH_AGENTS_DIR/com.user.permadvormak.plist"

# Create the key remapping script (permadvormak.sh)
cat <<EOF >"$SCRIPT_PATH"
#!/bin/bash
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc": 0x70000002D,"HIDKeyboardModifierMappingDst": 0x70000002F},{"HIDKeyboardModifierMappingSrc": 0x70000002E,
"HIDKeyboardModifierMappingDst": 0x700000030},{"HIDKeyboardModifierMappingSrc": 0x700000014,"HIDKeyboardModifierMappingDst": 0x700000034},{"HIDKeyboardModifierMappingSrc": 0x70000001A,
"HIDKeyboardModifierMappingDst": 0x700000036},{"HIDKeyboardModifierMappingSrc": 0x700000008,"HIDKeyboardModifierMappingDst": 0x700000037},{"HIDKeyboardModifierMappingSrc": 0x700000015,
"HIDKeyboardModifierMappingDst": 0x700000013},{"HIDKeyboardModifierMappingSrc": 0x700000017,"HIDKeyboardModifierMappingDst": 0x70000001C},{"HIDKeyboardModifierMappingSrc": 0x70000001C,
"HIDKeyboardModifierMappingDst": 0x700000009},{"HIDKeyboardModifierMappingSrc": 0x700000018,"HIDKeyboardModifierMappingDst": 0x70000000A},{"HIDKeyboardModifierMappingSrc": 0x70000000C,
"HIDKeyboardModifierMappingDst": 0x700000006},{"HIDKeyboardModifierMappingSrc": 0x700000012,"HIDKeyboardModifierMappingDst": 0x700000015},{"HIDKeyboardModifierMappingSrc": 0x700000013,
"HIDKeyboardModifierMappingDst": 0x70000000F},{"HIDKeyboardModifierMappingSrc": 0x70000002F,"HIDKeyboardModifierMappingDst": 0x700000038},{"HIDKeyboardModifierMappingSrc": 0x700000030,
"HIDKeyboardModifierMappingDst": 0x70000002E},{"HIDKeyboardModifierMappingSrc": 0x700000016,"HIDKeyboardModifierMappingDst": 0x700000012},{"HIDKeyboardModifierMappingSrc": 0x700000007,
"HIDKeyboardModifierMappingDst": 0x700000008},{"HIDKeyboardModifierMappingSrc": 0x700000009,"HIDKeyboardModifierMappingDst": 0x700000018},{"HIDKeyboardModifierMappingSrc": 0x70000000A,
"HIDKeyboardModifierMappingDst": 0x70000000C},{"HIDKeyboardModifierMappingSrc": 0x70000000B,"HIDKeyboardModifierMappingDst": 0x700000007},{"HIDKeyboardModifierMappingSrc": 0x70000000D,
"HIDKeyboardModifierMappingDst": 0x70000000B},{"HIDKeyboardModifierMappingSrc": 0x70000000E,"HIDKeyboardModifierMappingDst": 0x700000017},{"HIDKeyboardModifierMappingSrc": 0x70000000F,
"HIDKeyboardModifierMappingDst": 0x700000011},{"HIDKeyboardModifierMappingSrc": 0x700000033,"HIDKeyboardModifierMappingDst": 0x700000016},{"HIDKeyboardModifierMappingSrc": 0x700000034,
"HIDKeyboardModifierMappingDst": 0x70000002D},{"HIDKeyboardModifierMappingSrc": 0x70000001D,"HIDKeyboardModifierMappingDst": 0x700000033},{"HIDKeyboardModifierMappingSrc": 0x70000001B,
"HIDKeyboardModifierMappingDst": 0x700000014},{"HIDKeyboardModifierMappingSrc": 0x700000006,"HIDKeyboardModifierMappingDst": 0x70000000D},{"HIDKeyboardModifierMappingSrc": 0x700000019,
"HIDKeyboardModifierMappingDst": 0x70000000E},{"HIDKeyboardModifierMappingSrc": 0x700000005,"HIDKeyboardModifierMappingDst": 0x70000001B},{"HIDKeyboardModifierMappingSrc": 0x700000011,
"HIDKeyboardModifierMappingDst": 0x700000005},{"HIDKeyboardModifierMappingSrc": 0x700000010,"HIDKeyboardModifierMappingDst": 0x700000010},{"HIDKeyboardModifierMappingSrc": 0x700000036,"HIDKeyboardModifierMappingDst": 0x70000001A},
{"HIDKeyboardModifierMappingSrc": 0x700000037,"HIDKeyboardModifierMappingDst": 0x700000019},{"HIDKeyboardModifierMappingSrc": 0x700000038,"HIDKeyboardModifierMappingDst": 0x70000001D}]}'
EOF

# Make the script executable
chmod +x "$SCRIPT_PATH"

# Create the LaunchAgents directory if it doesn't exist
mkdir -p "$LAUNCH_AGENTS_DIR"

# Create the LaunchAgent plist file
cat <<EOF >"$PLIST_PATH"
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.user.permadvormak</string>
    <key>ProgramArguments</key>
    <array>
        <string>$SCRIPT_PATH</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
</dict>
</plist>
EOF

# Load the LaunchAgent
launchctl load "$PLIST_PATH"

# Inform the user
echo "Setup complete. The script will run at login."
