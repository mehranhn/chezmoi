hl.window_rule({ match = { class = "Myazi" }, workspace = device_options.win_workspaces.yazi, maximize = true })
hl.window_rule({ match = { class = "Mnvim" }, workspace = device_options.win_workspaces.nvim, maximize = true })
hl.window_rule({
    match = { class = "com.github.iwalton3.jellyfin-media-player" },
    workspace = device_options.win_workspaces.jellyfin,
    idle_inhibit = "fullscreen",
    fullscreen = true,
})
hl.window_rule({
    match = { class = "org.mozilla.Thunderbird" },
    workspace = device_options.win_workspaces.thunderbird,
    maximize = true,
})
hl.window_rule({ match = { class = "zen" }, workspace = device_options.win_workspaces.zen, maximize = true })
hl.window_rule({
    match = { class = "info.mumble.Mumble" },
    workspace = device_options.win_workspaces.mumble,
    maximize = true,
})
hl.window_rule({
    match = { class = "psysonic-bin" },
    workspace = device_options.win_workspaces.psysonic,
    maximize = true,
})
hl.window_rule({ match = { class = "virt-manager" }, workspace = device_options.win_workspaces.virt_manager })
hl.window_rule({
    match = { class = "^(org.telegram.desktop|telegramdesktop)$" },
    workspace = device_options.win_workspaces.telegram,
})
hl.window_rule({
    match = { class = "^(org.telegram.desktop|telegramdesktop)$", title = "^(Media viewer)$" },
    workspace = device_options.win_workspaces.telegram,
    float = true,
    center = true,
    suppress_event = "fullscreen",
    size = {"(monitor_w * 0.40)", "(monitor_h * 0.50)"},
})
hl.window_rule({ match = { class = "org.gajim.Gajim" }, workspace = device_options.win_workspaces.gajim })
hl.window_rule({
    match = { class = "com.obsproject.Studio" },
    workspace = device_options.win_workspaces.obs,
    maximize = true,
})
hl.window_rule({
    match = { class = "org.qbittorrent.qBittorrent" },
    workspace = device_options.win_workspaces.qbittorrent,
    maximize = true,
})

hl.window_rule({ match = { class = "qtpass" }, no_screen_share = true })

hl.window_rule({
    match = { class = "(pinentry-)(.*)" },
    stay_focused = true,
})

hl.window_rule({
    match = { class = "hyprland-share-picker" },
    float = true,
    size = { "(monitor_w * 0.25)", "(monitor_h * 0.50)" },
    center = true,
})

hl.window_rule({
    match = { class = "com.github.wwmm.easyeffects" },
    float = true,
    size = { "(monitor_w * 0.95)", "(monitor_h * 0.90)" },
    center = true,
})

hl.layer_rule({ match = { namespace = "notifications" }, no_screen_share = true })
hl.layer_rule({ match = { namespace = "launcher" }, blur = true, xray = false })
