local function layout_bind(bind_table)
    return function()
        local workspace = hl.get_active_special_workspace() or hl.get_active_workspace()

        if not workspace then
            return
        end

        local layout = workspace.tiled_layout

        if bind_table[layout] then
            hl.dispatch(bind_table[layout])
        end
    end
end

local function focus_or_launch(app_class, command)
    return function()
        local windows = hl.get_windows({ class = app_class })

        if #windows > 0 then
            hl.dispatch(hl.dsp.focus({ window = "class:" .. app_class }))
        else
            hl.exec_cmd(command)
        end
    end
end

return {
    layout_bind = layout_bind,
    focus_or_launch = focus_or_launch,
}
