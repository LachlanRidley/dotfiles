function l -d "List files, falling back to ls if eza is not installed"
    if type -q eza
        command eza -l --icons=always --git-repos --hyperlink --no-permissions --git --no-filesize --smart-group --header --time-style relative $argv
    else
       command ls $argv
    end
end
