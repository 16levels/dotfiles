# Toolbx Aliases

# $host_cmds: access host commands within toolbx containers
set host_cmds tailscale

if [ $hostname = toolbx ]
    for cmd in $host_cmds
	alias "$cmd=host-spawn $cmd"
    end

# $toolbx_cmds: integrate toolbx commands outside of container
set toolbx_cmds gdu go hugo just lazygit npm opam

else if command -q toolbox; and [ -e /run/ostree-booted ]
    for cmd in $toolbx_cmds
	command -q "$cmd"; or alias "$cmd=toolbox run $cmd"
    end
end
