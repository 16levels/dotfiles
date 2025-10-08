# Toolbx Aliases

if [ $hostname = toolbx ]
    # $host_cmds: access host commands within toolbx containers
    set host_cmds tailscale
    for cmd in $host_cmds
        alias "$cmd=host-spawn $cmd"
    end

else if command -q toolbox; and [ -e /run/ostree-booted ]
    # $toolbx_cmds: integrate toolbx commands outside of container
    set toolbx_cmds gdu go hugo just lazygit npm opam
    for cmd in $toolbx_cmds
        command -q "$cmd"; or alias "$cmd=toolbox run $cmd"
    end
end
