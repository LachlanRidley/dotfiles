#!/usr/bin/env sh

sudo pacman -S $(cat arch-packages.txt)

# stow arch fish ghostty git vscode

sh ./scripts/enable-1password-extension-librewolf-linux
