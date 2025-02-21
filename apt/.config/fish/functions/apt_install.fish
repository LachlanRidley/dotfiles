function apt_install
    set package $argv[1]

    set result (is_apt_package_installed $package)

    if test $result = "false"
        sudo apt install -y $package
    end
end
