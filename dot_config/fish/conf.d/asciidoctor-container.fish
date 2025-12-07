# asciidoctor container

for cmd in asciidoctor{-epub3,-pdf,-revealjs,}
    command -q "$cmd"; or abbr -a "$cmd" podman run --rm -it -v="\$PWD:/documents/:z" docker.io/asciidoctor/docker-asciidoctor "$cmd"
end
