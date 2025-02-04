local term = require("wezterm")

local config = term.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingUnderline",
	font_size = 11.0,
	font = term.font("FiraCode Nerd Font Mono"),
	color_scheme = "Ef-Bio",
	window_background_opacity = 0.7,
	text_background_opacity = 1.0,
	window_padding = {
		left = 15,
		right = 15,
		top = 5,
		bottom = 5,
	},
	keys = {
		{
			key = "\\",
			mods = "CTRL",
			action = term.action.SplitHorizontal,
		},
		{
			key = "-",
			mods = "CTRL",
			action = term.action.SplitVertical,
		},
		{
			key = "s",
			mods = "CTRL",
			action = term.action.PaneSelect,
		},
		{
			key = "H",
			mods = "OPT",
			action = term.action.AdjustPaneSize({ "Left", 1 }),
		},
		{
			key = "J",
			mods = "OPT",
			action = term.action.AdjustPaneSize({ "Down", 1 }),
		},
		{
			key = "K",
			mods = "OPT",
			action = term.action.AdjustPaneSize({ "Up", 1 }),
		},
		{
			key = "L",
			mods = "OPT",
			action = term.action.AdjustPaneSize({ "Right", 1 }),
		},
	},
}

return config
