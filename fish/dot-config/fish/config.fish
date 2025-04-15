if status is-interactive

# starship prompt
starship init fish | source

# secure enclave ssh integration
set -x SSH_AUTH_SOCK /Users/cory/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
end


# opam configuration
test -r '/Users/cory/.opam/opam-init/init.fish' && source '/Users/cory/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true


# emacs libvterm integration 
function vterm_printf;
    if begin; [  -n "$TMUX" ]  ; and  string match -q -r "screen|tmux" "$TERM"; end
        # tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end
