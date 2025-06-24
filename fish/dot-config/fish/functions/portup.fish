function portup --wraps='sudo port selfupdate && sudo port upgrade outdated && sudo port uninstall inactive' --description 'alias portup sudo port selfupdate && sudo port upgrade outdated && sudo port uninstall inactive'
  sudo port selfupdate && sudo port upgrade outdated && sudo port uninstall inactive $argv
        
end
