# Aliases
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macos specific

    case Linux
        # Linux Specific
        alias ollama="podman exec -it ollama ollama"

        # Integrate toolbox commands outside of container
        if not [ $hostname = toolbx ]
            set toolbx_cmds 7z 7zz go ko gdu npm hugo just opam guile cosign ffmpeg lazygit
            for cmd in $toolbx_cmds
                alias "$cmd=toolbox run $cmd"
            end

        # Access host commands within Toolbx Containers
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
