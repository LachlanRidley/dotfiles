function update -d "Ensures that packages/tools are installed and updates them"
    sudo pacman -S --noconfirm eza
    sudo pacman -S --noconfirm firefox
    sudo pacman -S --noconfirm git-delta
    sudo pacman -S --noconfirm okular
    sudo pacman -S --noconfirm neofetch
    sudo pacman -S --noconfirm fd
    sudo pacman -S --noconfirm bat
    sudo pacman -S --noconfirm zoxide
    sudo pacman -S --noconfirm ghostty
    sudo pacman -S --noconfirm steam

    eos-update --aur
    # apt_install 1password-cli

    # echo \nUpdating flatpak
    # flatpak update -y

    # if type -q uv
    #     echo
    #     echo Updating uv 🐍
    #     uv self update
    # else
    #     echo
    #     echo Installing uv 🐍
    #     curl -LsSf https://astral.sh/uv/install.sh | sh
    # end

    # echo
    # uv tool install yt-dlp

    # echo
    # echo Updating uv tools
    # uv tool upgrade --all

    if type -q mise
        echo
        echo Updating mise 🍽️
        mise self-update -y
    else
        echo
        echo Installing mise 🍽️
        curl https://mise.run | sh
        echo '~/.local/bin/mise activate fish | source' >> ~/.config/fish/config.fish
    end
end
