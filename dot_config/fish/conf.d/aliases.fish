# Aliases
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macos specific

    case Linux
        # Linux Specific
        alias ollama="podman exec -it ollama ollama"

        # Access host commands within toolbx Containers
        if [ $hostname = toolbx ]
            set host_cmds tailscale
            for cmd in $host_cmds
                alias "$cmd=host-spawn $cmd"
            end
        # Integrate toolbx commands outside of container
        else if command -q toolbox
            set toolbx_cmds 7z 7zz cosign gdu go guile hugo just lazygit npm opam
            for cmd in $toolbx_cmds
                command -q "$cmd"; or alias "$cmd=toolbox run $cmd"
            end
        end

        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]

        end

end
