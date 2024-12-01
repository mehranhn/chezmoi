function fish_user_key_bindings
    # fish_default_key_bindings
    fish_vi_key_bindings
    bind -s --preset -M default h backward-char
    bind -s --preset -M default i forward-char
    bind -s --preset e up-or-search
    bind -s --preset n down-or-search

    bind -s --preset -M insert \ch backward-char
    bind -s --preset -M insert \cl forward-char
    bind -s --preset -M insert \ce up-or-search
    bind -s --preset -M insert \cn down-or-search

    bind -s --preset -M visual h backward-char
    bind -s --preset -M visual i forward-char
    bind -s --preset -M visual e up-line
    bind -s --preset -M visual n down-line

    bind -s --preset -m insert k repaint-mode
    bind -s --preset -m insert K beginning-of-line repaint-mode
end
