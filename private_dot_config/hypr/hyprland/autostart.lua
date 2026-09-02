hl.on("hyprland.start", function ()
    -- systemctl --user enable ssh-agent.service
    -- hl.exec_cmd("mpd")
    hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent") -- hyprpolkitagent.service
    hl.exec_cmd("foot -s") -- foot-server.service
    hl.exec_cmd("hyprland-per-window-layout")
    hl.exec_cmd("/usr/lib/xdg-desktop-portal -r")
    hl.exec_cmd("dunst ~/.config/dunst/dunstrc") -- dunst.service
    hl.exec_cmd("udiskie")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpaper") -- hyprpaper.service
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("easyeffects --gapplication-service")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("blueman-applet")
end)
