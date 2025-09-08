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

# hadolint container
abbr -a hadolint podman run --rm -i hadolint/hadolint

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

        # ollama container
        abbr -a ollama podman run -d -v "\$HOME/.ollama:/root/.ollama:z" -p 11434:11434 --name ollama ollama/ollama
        abbr -a ollama-turbo podman run --rm -it -v "\$HOME/.ollama:/root/.ollama:z" -e=OLLAMA_HOST=ollama.com ollama/ollama

        # shellcheck container
        abbr -a shellcheck podman run --rm -v "\$PWD:/mnt:z" koalaman/shellcheck:stable

        if not [ $hostname = toolbx ]
            # Flatpak abbreviations for host
            abbr -a emacs org.gnu.emacs
            abbr -a nvim io.neovim.nvim
            abbr -a vi io.neovim.nvim
        else
            # Toolbx Container Specific
            #
        end

        if [ -e /run/ostree-booted ]
            # OSTree/Immutable System Specific
            #
        end

end
