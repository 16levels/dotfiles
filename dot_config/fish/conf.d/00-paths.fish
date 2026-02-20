# Centralized Path Definitions

# Local user binaries
fish_add_path -ag "$HOME/.local/bin" 

# Go binaries
fish_add_path -ag "$HOME/go/bin" 

# Flatpak exports for Linux host
if [ (uname) = Linux ] && [ ! $hostname = toolbx ]
    fish_add_path -ag /var/lib/flatpak/exports/bin
end
