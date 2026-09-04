device_options = {
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
    hl.exec_cmd("uwsm app -- waybar -c ~/.config/waybar/config-pc.jsonc")
end)

hl.config({ cursor = { default_monitor = "Virtual-1" } })
hl.monitor({ output = "Virtual-1", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "", mode = "preferred", position = "auto-right", scale = 1 })

hl.workspace_rule({ workspace = "1", monitor = "Virtual-1", persistent = true, layout = "master", default = true })
hl.workspace_rule({ workspace = "2", monitor = "Virtual-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "3", monitor = "Virtual-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "4", monitor = "Virtual-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "5", monitor = "Virtual-1", persistent = true, layout = "master" })
hl.workspace_rule({ workspace = "6", monitor = "Virtual-1", persistent = true, layout = "master" })
hl.workspace_rule({ workspace = "7", monitor = "Virtual-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "8", monitor = "Virtual-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "9", monitor = "Virtual-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "10", monitor = "Virtual-1", persistent = true, layout = "master" })
