function is_apt_package_installed
    apt list --quiet --quiet --installed $argv[1] 2>/dev/null | grep --quiet .

    if test $status -eq 0
        echo "true"
    else
        echo "false"
    end
end