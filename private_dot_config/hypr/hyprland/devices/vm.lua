device_options = {
    monitors_workspace_offset = {
        ["Virtual-1"] = 0,
    },
    monitors_workspace_offset_unknown = 10,
    win_workspaces = {
        yazi = "3",
        nvim = "4",
        jellyfin = "7",
        thunderbird = "1",
        zen = "2",
        mumble = "3",
        psysonic = "7",
        virt_manager = "5",
        telegram = "6",
        gajim = "6",
        obs = "8",
        qbittorrent = "9",
    },
}

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar -c ~/.config/waybar/config-pc.jsonc")
end)

hl.config({ cursor = { default_monitor = "Virtual-1" } })
hl.monitor({ output = "Virtual-1", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "", mode = "preferred", position = "auto-right", scale = 1 })
