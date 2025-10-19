#!/usr/bin/env sh

sudo pacman -S $(cat arch-packages.txt)

sudo pacman -S --noconfirm fish
sudo pacman -S --noconfirm stow

stow arch fish ghostty git vscode
