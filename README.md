# Dotfiles

## Getting started

`curl -LsSf https://raw.githubusercontent.com/LachlanRidley/dotfiles/refs/heads/main/install-arch.sh | sh`

Add `scripts/` to your path.

```
fish_add_path ~/Dotfiles/scripts
```

## vscode on macOS

VSCode stores `settings.json` in the `Library` directory on macOS. To get around this, the `link-vscode-darwin-to-config.sh` script will create a link between the macOS location and `.config`.

Run:

```sh
stow vscode
./scripts/link-vscode-darwin-to-config.sh
```
