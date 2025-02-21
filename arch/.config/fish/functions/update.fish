function update -d "Ensures that packages/tools are installed and updates them"
    pacman -S eza
    pacman -S firefox
    pacman -S git-delta
    pacman -S okular
    pacman -S neofetch
    pacman -S fd-find
    pacman -S bat
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
    end
end
