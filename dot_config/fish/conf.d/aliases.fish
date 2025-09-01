# Aliases
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macos specific

    case Linux
        # Linux Specific
       
	# Integrate toolbox commands outside of container
	if not [ $hostname = 'toolbx' ]

		alias gh="toolbox run gh"
		alias go="toolbox run go"
		alias git="toolbox run git"
		alias hugo="toolbox run hugo"
		alias make="toolbox run make"
		alias opam="toolbox run opam"
		alias guile="toolbox run guile"
		alias lazygit="toolbox run lazygit"
		alias utop="toolbox run opam exec utop"
		
	end

        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]
		
        end
        #
        # Toolbx Containers
        if [ $hostname = 'toolbx' ]

       		alias tailscale="host-spawn tailscale" 
         end
end
