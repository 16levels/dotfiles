# Toolbx Aliases

if set -q DISTROBOX_ENTER_PATH
    # $host_cmds: access host commands within toolbx containers
    set host_cmds chezmoi podman rpm-ostree tailscale
    for cmd in $host_cmds
        alias "$cmd=distrobox-host-exec $cmd"
    end

end
