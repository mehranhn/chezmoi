---@diagnostic disable: undefined-global
function Status:name()
	local h = self._tab.current.hovered
	if not h then
		return ui.Line {}
	end

	local linked = ""
	if h.link_to ~= nil then
		linked = " -> " .. tostring(h.link_to)
        return ui.Line {
            ui.Span(" "),
            ui.Span(h.name):fg("blue"),
            ui.Span(" -> "),
            ui.Span(tostring(h.link_to)):fg("cyan"),
        }
	end

    return ui.Span(" " .. h.name):fg("blue")
end

Status:children_add(function()
	local h = cx.active.current.hovered
	if h == nil or ya.target_family() ~= "unix" then
		return ui.Line {}
	end

	return ui.Line {
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		ui.Span(":"),
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("yellow"),
		ui.Span(" "),
	}
end, 500, Status.RIGHT)

Header:children_add(function()
	if ya.target_family() ~= "unix" then
		return ui.Line {}
	end
	return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("green")
end, 500, Header.LEFT)

require("simple-mtpfs"):setup({
  mount_point = os.getenv("HOME") .. "/Android",
  mount_opts = { "debug", "max_read=1000", "auto_unmount" }
})

require("eza-preview"):setup({
  level = 3,
})
