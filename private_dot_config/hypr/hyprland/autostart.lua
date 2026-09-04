hl.on("hyprland.start", function ()
    -- systemctl --user enable ssh-agent.service
    -- hl.exec_cmd("uwsm app -- mpd")
    -- hl.exec_cmd("uwsm app -- /usr/lib/hyprpolkitagent/hyprpolkitagent") -- hyprpolkitagent.service
    -- hl.exec_cmd("uwsm app -- foot -s") -- foot-server.service
    hl.exec_cmd("uwsm app -- hyprland-per-window-layout")
    hl.exec_cmd("uwsm app -- /usr/lib/xdg-desktop-portal -r")
    hl.exec_cmd("uwsm app -- dunst ~/.config/dunst/dunstrc")
    hl.exec_cmd("uwsm app -- udiskie")
    hl.exec_cmd("uwsm app -- hypridle")
    -- hl.exec_cmd("hyprpaper") -- hyprpaper.service
    hl.exec_cmd("uwsm app -- hyprsunset")
    hl.exec_cmd("uwsm app -- easyeffects --gapplication-service")
    hl.exec_cmd("uwsm app -- nm-applet")
    hl.exec_cmd("uwsm app -- blueman-applet")
end)
