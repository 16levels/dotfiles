function hadolint --wraps='podman run --rm -i hadolint/hadolint' --description 'alias hadolint podman run --rm -i hadolint/hadolint'
  podman run --rm -i hadolint/hadolint $argv
        
end
