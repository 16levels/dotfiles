if status is-interactive


    # Operating System Specific Routines
    switch (uname)
    case Darwin    
        # macOS Specific
        #
        # environment variables
        #
        # secure enclave ssh integration
        set -x SSH_AUTH_SOCK "$HOME"/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

        # macOS abbreviations
        abbr -a musicmount sudo -- sh -c "mkdir /Volumes/multimedia && mount -t nfs -o resvport elite:mnt/multimedia /Volumes/multimedia/"
        abbr -a portup sudo -- sh -c "port selfupdate && port upgrade outdated && port uninstall inactive"

    case Linux
        # Linux Specific
        #
        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]

            # environment variables
            #
            
            # abbreviations
            #
            abbr -a utop opam exec utop
        end
        #
        # Toolbx Containers
        # if [ $hostname = 'toolbx' ]
        #
        # end
        #
    end

    # abbreviations
    abbr -a shellcheck podman run --rm -v "$PWD:/mnt":z koalaman/shellcheck:stable
    abbr -a hadolint podman run --rm -i hadolint/hadolint
    abbr -a antora podman run --rm -i antora/antora
    abbr -a pip pip3
    abbr -a vi nvim
    

    # language/development environment variables
    source "$HOME"/.config/fish/config.d/lang.fish
    
    
    # starship prompt
    starship init fish | source

end
