(specifications->manifest
 '(
   ;; --- Shell & Core Interaction ---
   "fish"               ; Primary interactive shell
   "starship"           ; Cross-shell prompt
   "direnv"             ; Essential for loading project dependencies
   "wl-clipboard"       ; System-wide clipboard for Wayland/Silverblue
   "dbus"               ; Allows GNOME Shell integration 

   ;; --- The "Everywhere" Editor ---
   "neovim"             ; Editor for quick system edits
   "fennel"             ; Required to run Neovim config

   ;; --- Essential Utilities ---
   "ripgrep"            ; Global search
   "fd"                 ; Global file finding
   "htop"               ; System monitoring
   "age"                ; File encryption for dotfiles

   ;; --- Guix Infrastructure ---
   "nss-certs"          ; Prevents SSL errors in any Guix tool
   "zstd"               ; To keep man pages readable
   "man-db"             ; To read documentation on the fly
   ))
