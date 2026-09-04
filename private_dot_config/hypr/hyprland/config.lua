hl.config({
    animations = {
        enabled = true,
    },
    general = {
        gaps_in = 3,
        gaps_out = 6,
        layout = "master",
        resize_corner = 3,
    },
    decoration = {
        blur = {
            enabled = true,
            -- size = 8,
            passes = 1,
            -- variant = "kavwase",
            -- xray = false,
            popups = true,
        },
        shadow = {
            enabled = false,
        },
    },
    input = {
        kb_model = "pc104",
        kb_layout = "us,ir,us",
        kb_variant = "colemak,,",
        kb_options = "caps:backspace,grp:alt_shift_toggle",
        repeat_rate = 25,
        repeat_delay = 300,
        scroll_method = "2fg",
    },
    group = {
        groupbar = {
            font_size = 12,
            render_titles = false,
        },
    },
    misc = {
        initial_workspace_tracking = 2,
        exit_window_retains_fullscreen = false,
        on_focus_under_fullscreen = 0,
        -- hide_special_on_workspace_change = true,
        -- movefocus_cycles_groupfirst = true,
    },
    cursor = {
        warp_on_change_workspace = 1,
    },
    ecosystem = {
        no_donation_nag = true,
    },
    scrolling = {
        wrap_focus = false,
    }
})
