if status is-interactive
				set BASE16_SHELL "$HOME/.config/base16-shell/"
				source "$BASE16_SHELL/profile_helper.fish"
end

# Created by `pipx` on 2024-07-10 07:33:07
set PATH $PATH /Users/lachlan/.local/bin

set --global --export PATH $HOMEBREW_PREFIX/opt/grep/libexec/gnubin $PATH

zoxide init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

abbr --add lg lazygit
abbr --add czm chezmoi
