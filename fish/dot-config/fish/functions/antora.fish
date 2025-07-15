function antora --wraps='podman run --rm -i antora/antora' --description 'alias antora podman run --rm -i antora/antora'
  podman run --rm -i antora/antora $argv
        
end
