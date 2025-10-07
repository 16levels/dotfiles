# Aliases
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macos specific

    case Linux
        # Linux Specific
        alias ollama="podman exec -it ollama ollama"

        # Integrate toolbx commands with host
        if not [ $hostname = toolbx ]
            set toolbx_cmds 7z cosign gdu go guile3.0 hugo just lazygit npm opam
            for cmd in $toolbx_cmds
                alias "$cmd=toolbox run $cmd"
            end

        # Access host commands from within toolbx containers
        else
            set host_cmds tailscale
            for cmd in $host_cmds
                alias "$cmd=host-spawn $cmd"
            end
        end

        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]

        end

end
