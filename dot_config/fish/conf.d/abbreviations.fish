# Abbreviations
#

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macOS Specific
        abbr -a portup sudo -- sh -c "'port selfupdate && port upgrade outdated && port uninstall inactive'"

    case Linux
        # Linux Specific

        if not [ $hostname = toolbx ]
            # flatpak abbreviations for host
            fish_add_path -ag /var/lib/flatpak/exports/bin
            not command -q nvim; and command -q io.neovim.nvim; and abbr -a nvim io.neovim.nvim; and abbr -a vi io.neovim.nvim
            not command -q emacs; and command -q org.gnu.emacs; and abbr -a emacs org.gnu.emacs
            command -q dev.zed.Zed; and abbr -a zed dev.zed.Zed
        else
            # Toolbx Container Specific
        end

        if [ -e /run/ostree-booted ]
            # OSTree/Immutable System Specific
        end

end

# update OCI images
abbr -a podup 'for i in $(podman images --format "{{.Repository}}:{{.Tag}}" | sed "/<none>/d"); podman pull $i; end;'

# mason installed LSPs and Linters
fish_add_path -ag "$HOME/.local/share/nvim/mason/bin"

# asciidoctor container
for cmd in asciidoctor{-epub3,-pdf,-revealjs,}
    command -q "$cmd"; or abbr -a "$cmd" podman run --rm -it -v="\$PWD:/documents/:z" docker.io/asciidoctor/docker-asciidoctor "$cmd"
end

# hercules container
abbr -a --set-cursor=! hercules podman run --rm -it \
    --cap-add=NET_ADMIN,SYS_NICE \
    --userns=keep-id \
    -p 3270:3270 -p 8038:8038 \
    -v "\$PWD!:/home/hercules/:z" \
    -w /home/hercules/ \
    -e HERCULES_CNF="hercules.cnf" \
    -e HERCULES_RC="hercules.rc" \
    ghcr.io/16levels/hercules

# shellcheck container
command -q shellcheck; or abbr -a shellcheck "podman run --rm -v "\$PWD:/mnt:z" koalaman/shellcheck:stable"

# hadolint container
command -q hadolint; or abbr -a hadolint "podman run --rm -i hadolint/hadolint"

# antora container
abbr -a antora podman run --rm -i antora/antora

# ts -> tailscale
abbr -a --set-cursor=! tsen tailscale set --exit-node=us-!
abbr -a tsens tailscale exit-node suggest
abbr -a ts tailscale

# pip -> uv
abbr -a pipx uv tool
abbr -a venv uv venv
abbr -a pip uv pip

# vi -> nvim if in path
command -q nvim; and abbr -a vi nvim

# cat -> bat
# command -q bat; and abbr -a cat bat
