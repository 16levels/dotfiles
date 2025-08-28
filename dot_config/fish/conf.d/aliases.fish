# Aliases
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macos specific

    case Linux
        # Linux Specific
        #
        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]
		
		alias gh="toolbox run gh"
		alias go="toolbox run go"
		alias opam="toolbox run opam"
		alias utop="toolbox run opam exec utop"
		alias lazygit="toolbox run lazygit"
		
        end
        #
        # Toolbx Containers
        if [ $hostname = 'toolbx' ]

       		alias tailscale="host-spawn tailscale" 
         end
end
