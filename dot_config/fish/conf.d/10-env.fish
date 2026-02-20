# Global Environment Variables

# Editor - prioritizes Neovim (host or flatpak) then falls back to vi
set -gx EDITOR $(command -s nvim; or command -s io.neovim.nvim; or command -s vi)

# Use `bat` as manual pager
set -gx MANPAGER "sh -c 'col -bx | $(command -s bat || command -s batcat) -l man -p'" 
set -gx MANROFFOPT -c 

# macOS Specific: Secure Enclave SSH integration
if [ (uname) = Darwin ]
    set -x SSH_AUTH_SOCK "$HOME/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh" 
end
