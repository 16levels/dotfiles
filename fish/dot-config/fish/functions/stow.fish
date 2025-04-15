function stow --wraps=stow --description 'alias stow=toolbox run stow (OSTree)'
  if [ -e /run/ostree-booted ]
    toolbox run stow $argv
  else
    stow $argv
  end    
end
