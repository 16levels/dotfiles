# Abbreviations
#

# update OCI images
abbr -a podup 'for i in $(podman images --format "{{.Repository}}:{{.Tag}}" | sed "/<none>/d"); podman pull $i; end;'

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macOS Specific
        abbr -a portup sudo -- sh -c "'port selfupdate && port upgrade outdated'"

    case Linux
        # Linux Specific

        if not [ $hostname = toolbx ]
            # flatpak abbreviations for host
            fish_add_path -ag /var/lib/flatpak/exports/bin
            not command -q nvim; and command -q io.neovim.nvim; and abbr -a nvim io.neovim.nvim; and abbr -a vi io.neovim.nvim
            not command -q emacs; and command -q org.gnu.emacs; and abbr -a emacs org.gnu.emacs
        else
            # Toolbx Container Specific
        end

        if [ -e /run/ostree-booted ]
            # OSTree/Immutable System Specific
        end

end

# vi -> nvim if in path
command -q nvim; and abbr -a vi nvim

# mason installed LSPs and Linters
fish_add_path -ag "$HOME/.local/share/nvim/mason/bin"

# pip -> uv
abbr -a pipx uv tool
abbr -a venv uv venv
abbr -a pip uv pip

# ts -> tailscale
abbr -a --set-cursor=! tsen tailscale set --exit-node=us-!
abbr -a tsens tailscale exit-node suggest
abbr -a ts tailscale

# cat -> bat
# command -q bat; and abbr -a cat bat

