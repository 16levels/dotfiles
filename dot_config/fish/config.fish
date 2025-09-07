if status is-interactive

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

            if [ -e /run/ostree-booted ]
            # OSTree/Immutable System Specific
            #
            end

            if not [ $hostname = 'toolbx' ]
	    # Host Specific

                # environment variables
                #
    		fish_add_path -ag "/var/lib/flatpak/exports/bin"

	    else
            # Toolbx Container Specific
	    #
            end

    end

    # Path
    fish_add_path -ag "$HOME/.local/bin"

    # language/development package managers
    # ## ## ## ## ## ## ## ## ## ## ## ## #
    # go
    fish_add_path -ag "$HOME/go/bin"
    # gain access to Mason installed LSPs and Linters
    fish_add_path -ag "$HOME/.local/share/nvim/mason/bin"


    # Editor - host or flatpak neovim
    set -gx EDITOR $(command -s nvim || command -s io.neovim.nvim)


    # starship prompt
    starship init fish | source

end
