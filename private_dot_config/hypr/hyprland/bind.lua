local utils = require("hyprland.utils")

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "r~1" }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "r~2" }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "r~3" }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "r~4" }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "r~5" }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = "r~6" }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = "r~7" }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = "r~8" }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = "r~9" }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "r~10" }))

hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "r~1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "r~2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "r~3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "r~4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "r~5" }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = "r~6" }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = "r~7" }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = "r~8" }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = "r~9" }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "r~10" }))

-- hl.bind("SUPER + SHIFT + Q", hl.dsp.exec_raw("fuzzel-shutdown-menu"))
-- hl.bind("SUPER + SHIFT + CTRL + Q", hl.dsp.exec_raw("uwsm stop"))

hl.bind("SUPER + W", hl.dsp.focus({ monitor = "+1" }))
hl.bind("SUPER + SHIFT + W", hl.dsp.window.move({ monitor = "+1" }))

hl.bind("SUPER + Left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "r" }))

hl.bind("SUPER + SHIFT + Left", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.move({ direction = "r" }))

hl.bind("SUPER + S", hl.dsp.window.cycle_next({ next = false, tiled = true }))
hl.bind("SUPER + T", hl.dsp.window.cycle_next({ next = true, tiled = true }))
hl.bind("SUPER + R", hl.dsp.focus({ last = true }))
hl.bind("SUPER + A", function ()
    hl.dispatch(hl.dsp.window.cycle_next({ floating = not hl.get_active_window().floating }))
end)

hl.bind(
    "SUPER + H",
    utils.layout_bind({
        master = hl.dsp.layout("focusmaster master"),
        scrolling = hl.dsp.layout("focus l"),
    }),
    { repeating = true }
)
hl.bind(
    "SUPER + N",
    utils.layout_bind({
        master = hl.dsp.layout("cyclenext"),
        scrolling = hl.dsp.layout("focus d"),
    }),
    { repeating = true }
)
hl.bind(
    "SUPER + E",
    utils.layout_bind({
        master = hl.dsp.layout("cycleprev"),
        scrolling = hl.dsp.layout("focus u"),
    }),
    { repeating = true }
)
hl.bind(
    "SUPER + I",
    utils.layout_bind({
        master = hl.dsp.layout("focusmaster auto"),
        scrolling = hl.dsp.layout("focus r"),
    }),
    { repeating = true }
)

hl.bind(
    "SUPER + SHIFT + H",
    utils.layout_bind({
        master = hl.dsp.layout("swapwithmaster master"),
        scrolling = hl.dsp.layout("swapcol l"),
    }),
    { repeating = true }
)
hl.bind(
    "SUPER + SHIFT + N",
    utils.layout_bind({
        master = hl.dsp.layout("swapnext"),
        scrolling = hl.dsp.layout("swapcol d"),
    }),
    { repeating = true }
)
hl.bind(
    "SUPER + SHIFT + N",
    utils.layout_bind({
        master = hl.dsp.layout("swapprev"),
        scrolling = hl.dsp.layout("swapcol u"),
    }),
    { repeating = true }
)
hl.bind(
    "SUPER + SHIFT + I",
    utils.layout_bind({
        master = hl.dsp.layout("swapwithmaster child"),
        scrolling = hl.dsp.layout("swapcol r"),
    }),
    { repeating = true }
)

hl.bind(
    "SUPER + MINUS",
    utils.layout_bind({
        master = hl.dsp.layout("mfact -0.05"),
        scrolling = hl.dsp.layout("colresize -0.05"),
    })
)
hl.bind(
    "SUPER + EQUAL",
    utils.layout_bind({
        master = hl.dsp.layout("mfact +0.05"),
        scrolling = hl.dsp.layout("colresize +0.05"),
    })
)

hl.bind(
    "SUPER + COMMA",
    utils.layout_bind({
        master = hl.dsp.layout("addmaster"),
        scrolling = hl.dsp.layout("consume"),
    })
)
hl.bind(
    "SUPER + PERIOD",
    utils.layout_bind({
        master = hl.dsp.layout("removemaster"),
        scrolling = hl.dsp.layout("expel"),
    })
)

hl.bind(
    "SUPER + SHIFT + COMMA",
    utils.layout_bind({
        master = hl.dsp.layout("orientationprev"),
        scrolling = hl.dsp.layout("consume_or_expel prev"),
    })
)
hl.bind(
    "SUPER + SHIFT + PERIOD",
    utils.layout_bind({
        master = hl.dsp.layout("orientationnext"),
        scrolling = hl.dsp.layout("consume_or_expel next"),
    })
)

hl.bind("SUPER + SHIFT + CTRL + H", hl.dsp.group.move_window({ forward = false }))
hl.bind("SUPER + SHIFT + CTRL + I", hl.dsp.group.move_window({ forward = true }))

hl.bind("SUPER + L", hl.dsp.focus({ workspace = "-1", on_current_monitor = true }))
hl.bind("SUPER + U", hl.dsp.focus({ workspace = "+1", on_current_monitor = true }))

hl.bind("ALT + SPACE", hl.dsp.exec_raw("fuzzel"))
hl.bind("SUPER + SHIFT + C", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Z", hl.dsp.window.move({ workspace = "special:minimize", follow = false }))
hl.bind("SUPER + Q", hl.dsp.exec_raw("footclient"))
hl.bind("SUPER + SHIFT + A", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle", layout_aware = true }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", layout_aware = true }))
hl.bind("SUPER + SHIFT + P", hl.dsp.window.pin({ action = "toggle" }))
hl.bind("SUPER + SHIFT + D", hl.dsp.group.toggle())
hl.bind("SUPER + GRAVE", hl.dsp.exec_raw("killall -SIGUSR1 waybar"))
hl.bind("SUPER + BACKSLASH", hl.dsp.exec_raw("hyprlock"))
hl.bind("SUPER + SHIFT + BACKSLASH", function()
    hl.timer(function()
        hl.dispatch(hl.dsp.force_idle(3600))
    end, { timeout = 100, type = "oneshot" })
end, { release = true })
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("clipvault list | fuzzel -d -p 'clipvault: ' | clipvault get | wl-copy"))
hl.bind("SUPER + SHIFT + J", hl.dsp.exec_raw("hyprpicker -a -l"))

hl.bind("SUPER + TAB", hl.dsp.group.next())
hl.bind("SUPER + SHIFT + TAB", hl.dsp.group.prev())
hl.bind("SUPER + D", hl.dsp.submap("group"))

hl.define_submap("group", function()
    hl.bind("1", hl.dsp.group.active({ index = 1 }))
    hl.bind("2", hl.dsp.group.active({ index = 2 }))
    hl.bind("3", hl.dsp.group.active({ index = 3 }))
    hl.bind("4", hl.dsp.group.active({ index = 4 }))
    hl.bind("5", hl.dsp.group.active({ index = 5 }))
    hl.bind("6", hl.dsp.group.active({ index = 6 }))
    hl.bind("7", hl.dsp.group.active({ index = 7 }))
    hl.bind("8", hl.dsp.group.active({ index = 8 }))
    hl.bind("9", hl.dsp.group.active({ index = 9 }))
    hl.bind("0", hl.dsp.group.active({ index = 10 }))

    hl.bind("H", hl.dsp.group.prev())
    hl.bind("N", hl.dsp.group.prev())
    hl.bind("E", hl.dsp.group.next())
    hl.bind("I", hl.dsp.group.next())

    hl.bind("L", hl.dsp.group.lock_active({ action = "toggle" }))

    hl.bind("ESCAPE", hl.dsp.submap("reset"))
end)

hl.bind("SUPER + SHIFT + R", hl.dsp.submap("screenshot"))

hl.define_submap("screenshot", function()
    hl.bind("1", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -m output --clipboard-only"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("2", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -m output -o ~/Pictures/Screenshots"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("3", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -m window --clipboard-only"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("4", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -m window -o ~/Pictures/Screenshots"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("5", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -m region --clipboard-only"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("6", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -m region -o ~/Pictures/Screenshots"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("F", hl.dsp.submap("screenshotfreeze"))

    hl.bind("ESCAPE", hl.dsp.submap("reset"))
end)

hl.define_submap("screenshotfreeze", function()
    hl.bind("1", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -z -m output --clipboard-only"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("2", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -z -m output -o ~/Pictures/Screenshots"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("3", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -z -m window --clipboard-only"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("4", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -z -m window -o ~/Pictures/Screenshots"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("5", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -z -m region --clipboard-only"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)
    hl.bind("6", function()
        hl.dispatch(hl.dsp.exec_raw("hyprshot -z -m region -o ~/Pictures/Screenshots"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("catchall", hl.dsp.submap("reset"))
end)

hl.bind("SUPER + SHIFT + Q", hl.dsp.submap("shutdown-menu"))

hl.define_submap("shutdown-menu", function ()
    hl.bind("Q", hl.dsp.exec_raw("hyprshutdown -t 'Shutting down...' --post-cmd 'systemctl poweroff'"))
    hl.bind("R", hl.dsp.exec_raw("hyprshutdown -t 'Restarting...' --post-cmd 'systemctl reboot'"))
    hl.bind("L", hl.dsp.exec_raw("hyprshutdown -t 'Logouting...' --post-cmd 'uwsm stop'"))

    hl.bind("ESCAPE", hl.dsp.submap("reset"))
end)

hl.bind("ALT + F1", hl.dsp.exec_raw("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind(
    "ALT + F2",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)
hl.bind(
    "ALT + F3",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)
hl.bind("SUPER + F1", hl.dsp.exec_raw("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind(
    "SUPER + F2",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SOURCE@ 5%-"),
    { locked = true, repeating = true }
)
hl.bind(
    "SUPER + F3",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SOURCE@ 5%+"),
    { locked = true, repeating = true }
)

hl.bind("XF86AudioMute", hl.dsp.exec_raw("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)
hl.bind("XF86AudioMicMute", hl.dsp.exec_raw("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("SUPER + XF86AudioMute", hl.dsp.exec_raw("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind(
    "SUPER + XF86AudioLowerVolume",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SOURCE@ 5%-"),
    { locked = true, repeating = true }
)
hl.bind(
    "SUPER + XF86AudioRaiseVolume",
    hl.dsp.exec_raw("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SOURCE@ 5%+"),
    { locked = true, repeating = true }
)

hl.bind("XF86AudioPrev", hl.dsp.exec_raw("playerctl previous"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_raw("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_raw("playerctl stop"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_raw("playerctl next"), { locked = true })

-- focus or launch
hl.bind("SUPER + P", utils.focus_or_launch("Myazi", "footclient -a Myazi -T yazi -L yazi"))
hl.bind("SUPER + C", utils.focus_or_launch("Mnvim", "footclient -a Mnvim -T neovim -L zellij a -c dev"))
hl.bind("SUPER + B", utils.focus_or_launch("zen", "zen-browser"))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", function()
    hl.dispatch(hl.dsp.cursor.move_to_corner({ corner = 1 }))
    hl.dispatch(hl.dsp.window.resize())
end)
