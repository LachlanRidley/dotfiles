function update -d "Ensures that packages/tools are installed and updates them"
    sudo apt update

    apt_install eza
    apt_install librewolf
    apt_install git-delta
    apt_install okular
    apt_install fd-find
    apt_install bat
    apt_install 1password-cli
    apt_install code
    apt_install zoxide
    apt_install stow
    apt_install steam
    apt_install rclone
    apt_install neovim
    apt_install ghostty
    apt_install 1password


    echo \nSetting up alias for bat
    mkdir -p ~/.local/bin
    ln -s /usr/bin/batcat ~/.local/bin/bat

    echo \nLinking fdfind to fd "see (https://github.com/sharkdp/fd?tab=readme-ov-file#on-ubuntu)"
    ln -s $(which fdfind) ~/.local/bin/fd

    echo \nUpdating apt packages 📦️
    sudo apt update && sudo apt upgrade -y

    echo \nUpdating flatpak
    flatpak update -y

    echo \nUpdating snaps 😢
    sudo snap refresh

    if type -q uv
        echo
        echo Updating uv 🐍
        uv self update
    else
        echo
        echo Installing uv 🐍
        curl -LsSf https://astral.sh/uv/install.sh | sh
    end

    echo
    uv tool install yt-dlp

    echo
    echo Updating uv tools
    uv tool upgrade --all

    if type -q mise
        echo
        echo Updating mise 🍽️
        mise self-update -y
    else
        echo
        echo Installing mise 🍽️
        curl https://mise.run | sh
    end

    # set environment variables
    set -Ux ANDROID_USER_HOME "$XDG_DATA_HOME/android"
    mv ~/.android $ANDROID_USER_HOME
end
