#!/usr/bin/env bash

if [ -e "$HOME/Library/Application Support/Code/User/settings.json" ]; then
    echo "Existing settings found, backing up"
    mv "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/Library/Application Support/Code/User/settings.json.bak" 
fi

echo "Linking .config VSCode settings to macOS location"
ln -s $HOME/.config/code/user/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
