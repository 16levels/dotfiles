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

	    # direnv
	    direnv hook fish | source

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

	    # direnv
	    direnv hook fish | source

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

    # Use `bat` as manual pager
    set -gx MANPAGER "sh -c 'col -bx | $(command -s bat || command -s batcat) -l man -p'"
    set -gx MANROFFOPT '-c'

    # Use `vi` keybindings
    set -g fish_key_bindings fish_vi_key_bindings

    # Bind the sequence j,k to switch to normal mode in vi mode.
    bind -M insert -m default j,k cancel repaint-mode
    set -g fish_sequence_key_delay_ms 200

    # starship prompt
    starship init fish | source

    # atuin shell history
    atuin init fish | source

end
