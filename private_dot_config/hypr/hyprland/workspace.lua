hl.workspace_rule({ workspace = "special:btop", on_created_empty = "footclient -a Mbtop -T btop -L btop -p 0" })
hl.window_rule({ match = { class = "Mbtop" }, float = true, size = {"(monitor_w * 0.95)", "(monitor_h * 0.90)"}, center = true })
hl.bind("SUPER + SHIFT + SEMICOLON", hl.dsp.workspace.toggle_special("btop"))

hl.workspace_rule({ workspace = "special:wiremix", on_created_empty = "footclient -a Mwiremix -T wiremix -L wiremix -v output" })
hl.window_rule({ match = { class = "Mwiremix" }, float = true, size = { 500, 600 }, move = { "(monitor_w - 520)", "(monitor_h - 620)" } })
hl.bind("SUPER + SHIFT + Y", hl.dsp.workspace.toggle_special("wiremix"))

hl.workspace_rule({ workspace = "special:pavucontrol", on_created_empty = "pavucontrol -t 4" })
hl.window_rule({ match = { class = "org.pulseaudio.pavucontrol" }, float = true, size = { 500, 600 }, move = { "(monitor_w - 520)", "(monitor_h - 620)" } })
hl.bind("SUPER + CTRL + SHIFT + Y", hl.dsp.workspace.toggle_special("pavucontrol"))

hl.workspace_rule({ workspace = "special:minimize" })
hl.bind("SUPER + SHIFT + BRACKETRIGHT", hl.dsp.workspace.toggle_special("minimize"))
