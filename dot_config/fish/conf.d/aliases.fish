# Aliases
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macos specific

    case Linux
        # Linux Specific

        # Integrate toolbox commands outside of container
        if not [ $hostname = toolbx ]

            alias 7z="toolbox run 7z"
            alias 7zz="toolbox run 7zz"
            alias go="toolbox run go"
            alias ko="toolbox run ko"
            alias gdu="toolbox run gdu"
            alias npm="toolbox run npm"
            alias hugo="toolbox run hugo"
            alias just="toolbox run just"
            alias opam="toolbox run opam"
            alias guile="toolbox run guile"
            alias cosign="toolbox run cosign"
            alias ffmpeg="toolbox run ffmpeg"
            alias lazygit="toolbox run lazygit"
            alias utop="toolbox run opam exec utop"

        end

        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]

        end
        #
        # Toolbx Containers
        if [ $hostname = toolbx ]

            alias tailscale="host-spawn tailscale"
        end
end
