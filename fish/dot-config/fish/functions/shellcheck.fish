function shellcheck --wraps='podman run --rm -v "$PWD:/mnt":z koalaman/shellcheck:stable' --description 'alias shellcheck podman run --rm -v "$PWD:/mnt":z koalaman/shellcheck:stable'
  podman run --rm -v "$PWD:/mnt":z koalaman/shellcheck:stable $argv
        
end
