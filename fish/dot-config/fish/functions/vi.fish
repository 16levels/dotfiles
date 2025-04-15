function vi --wraps=nvim --description 'alias vi=nvim'
  if [ -e /run/ostree-booted ]
    toolbox run nvim $argv
  else
    nvim $argv
  end    
end
