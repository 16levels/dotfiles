# shellcheck container

command -q shellcheck; or abbr -a shellcheck "podman run --rm -v "\$PWD:/mnt:z" koalaman/shellcheck:stable"
