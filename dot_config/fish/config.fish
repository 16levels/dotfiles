if status is-interactive

    # Path
    fish_add_path -ag "$HOME/.local/bin"

    # language/development package managers
    # ## ## ## ## ## ## ## ## ## ## ## ## #
    # go
    fish_add_path -ag "$HOME/go/bin"
    # rust
    fish_add_path -ag "$HOME/.cargo/bin"
    # gain access to Mason installed LSPs and Linters
    fish_add_path -ag "$HOME/.local/share/nvim/mason/bin"

    # Load Abbreviations
    source "$__fish_config_dir/conf.d/abbreviations.fish"


    # Operating System Specific Routines
    switch (uname)
        case Darwin
            # macOS Specific
            #
            # environment variables
            #
            # secure enclave ssh integration
            set -x SSH_AUTH_SOCK "$HOME/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh"

        case Linux
            # Linux Specific
            #
            # OSTree/Immutable Systems
            if [ -e /run/ostree-booted ]

                # environment variables
                #
    		fish_add_path -ag "/var/lib/flatpak/exports/bin"

            end
            #
            # Toolbx Containers
            # if [ $hostname = 'toolbx' ]
            #
            # end
            #
    end

    # starship prompt
    starship init fish | source

end
