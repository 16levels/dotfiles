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
