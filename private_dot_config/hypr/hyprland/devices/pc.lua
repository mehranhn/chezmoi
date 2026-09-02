device_options = {
    monitors_workspace_offset = {
        ["DP-1"] = 0,
        ["HDMI-A-1"] = 10,
    },
    monitors_workspace_offset_unknown = 20,
    win_workspaces = {
        yazi = "3",
        nvim = "4",
        jellyfin = "6",
        thunderbird = "11",
        zen = "12",
        mumble = "13",
        psysonic = "14",
        virt_manager = "15",
        telegram = "16",
        gajim = "16",
        obs = "18",
        qbittorrent = "19",
    },
}

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar -c ~/.config/waybar/config-pc.jsonc")
end)

hl.config({ cursor = { default_monitor = "DP-1" } })
hl.monitor({ output = "DP-1", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "1920x0", scale = 1 })
hl.monitor({ output = "", mode = "preferred", position = "auto-right", scale = 1 })

hl.workspace_rule({ workspace = "1", monitor = "DP-1", persistent = true, layout = "master", default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true, layout = "master" })
hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "4", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "6", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "7", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "8", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "9", monitor = "DP-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "10", monitor = "DP-1", persistent = true, layout = "master" })

hl.workspace_rule({ workspace = "11", monitor = "HDMI-A-1", persistent = true, layout = "master", default = true })
hl.workspace_rule({ workspace = "12", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "13", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "14", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "15", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "16", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "17", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "18", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "19", monitor = "HDMI-A-1", persistent = true, layout = "scrolling" })
hl.workspace_rule({ workspace = "20", monitor = "HDMI-A-1", persistent = true, layout = "master" })
