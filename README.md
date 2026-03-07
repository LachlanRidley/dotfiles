# Dotfiles

## Getting started

`curl -LsSf https://raw.githubusercontent.com/LachlanRidley/dotfiles/refs/heads/main/install-arch.sh | sh`

Add `scripts/` to your path.

## install a package
```
stow <PACKAGE_NAME> --dotfiles
```

## add a new package

1. Create structure
```bash
mkdir -p ~/Dotfiles/<package>/path/to/config
```

2. Move config files:
```bash
mv ~/.config/<package>/* ~/Dotfiles/<package>/dot-config/<package>
```

2. Rename any `.` file/folders to `dot-`

3. Create symlinks
```bash
stow --dotfiles --dir ~/Dotfiles <package>
```

## vscode on macOS

VSCode stores `settings.json` in the `Library` directory on macOS. To get around this, the `link-vscode-darwin-to-config.sh` script will create a link between the macOS location and `.config`.

Run:

```sh
stow vscode
./scripts/link-vscode-darwin-to-config.sh
```
