if status is-interactive

    # --- Tool Initializations ---
    
    # starship prompt
    command -q starship; and starship init fish | source

    # atuin shell history
    command -q atuin; and atuin init fish | source
    
    # Enable direnv only if on macOS or inside a Toolbx container
    switch (uname)
        case Darwin
            command -q direnv; and direnv hook fish | source
        case Linux
            if [ $hostname = toolbx ]
                command -q direnv; and direnv hook fish | source
            end
    end

    # --- Interactive Behavior & Keybinds ---
    # Use vi keybindings
    set -g fish_key_bindings fish_vi_key_bindings

    # Custom binding: j,k to switch to normal mode
    bind -M insert -m default j,k cancel repaint-mode
    set -g fish_sequence_key_delay_ms 200

end
