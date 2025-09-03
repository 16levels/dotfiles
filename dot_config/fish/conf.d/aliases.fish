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

		alias 7z="toolbox run 7z"
		alias 7zz="toolbox run 7zz"
		alias fd="toolbox run fd"
		alias gh="toolbox run gh"
		alias go="toolbox run go"
		alias ko="toolbox run ko"
		alias rg="toolbox run rg"
		alias age="toolbox run age"
		alias age-keygen="toolbox run age-keygen"
		alias gdu="toolbox run gdu"
		alias git="toolbox run git"
		alias npm="toolbox run npm"
		alias htop="toolbox run htop"
		alias hugo="toolbox run hugo"
		alias just="toolbox run just"
		alias make="toolbox run make"
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
        if [ $hostname = 'toolbx' ]

       		alias tailscale="host-spawn tailscale" 
         end
end
