# Abbreviations
#

# asciidoctor container
abbr -a asciidoctor-revealjs podman run --rm -it -v="\$PWD:/documents/:z" docker.io/asciidoctor/docker-asciidoctor asciidoctor-revealjs
abbr -a asciidoctor-epub3 podman run --rm -it -v="\$PWD:z" docker.io/asciidoctor/docker-asciidoctor asciidoctor-epub3
abbr -a asciidoctor-pdf podman run --rm -it -v="\$PWD:z" docker.io/asciidoctor/docker-asciidoctor asciidoctor-pdf
abbr -a asciidoctor podman run --rm -it -v="\$PWD:/documents/:z" docker.io/asciidoctor/docker-asciidoctor asciidoctor

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
abbr -a shellcheck podman run --rm -v "\$PWD:/mnt:z" koalaman/shellcheck:stable

# hadolint container
abbr -a hadolint podman run --rm -i hadolint/hadolint

# antora container
abbr -a antora podman run --rm -i antora/antora

# ts -> tailscale
abbr -a --set-cursor=! tsen tailscale set --exit-node=us-!
abbr -a tsens tailscale exit-node suggest
abbr -a ts tailscale

# pip -> pip3
abbr -a pip pip3

# vi -> nvim
abbr -a vi nvim

# cat -> bat
abbr -a cat bat

# Operating System Specific Routines
switch (uname)
    case Darwin
        # macOS Specific
        abbr -a portup sudo -- sh -c "'port selfupdate && port upgrade outdated && port uninstall inactive'"

    case Linux
        # Linux Specific
        #
        # OSTree/Immutable Systems
        if [ -e /run/ostree-booted ]

            abbr -a emacs org.gnu.emacs

            # Prefer flatpak'd neovim when in interactive session. Editor can be set to host installed binary for 'sudoedit'.
            abbr -a nvim io.neovim.nvim
            abbr -a vi io.neovim.nvim

        end
        #
        # Toolbx Containers
        # if [ $hostname = 'toolbx' ]
        #
        # end
        #
end
