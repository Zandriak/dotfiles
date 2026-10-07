local c = require("config.colors")

hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 5,
		border_size = 3,
		col = {
			active_border = c.cachylgreen,
			inactive_border = c.cachymblue,
		},
		layout = "dwindle",
		snap = { enabled = true },
	},

	gestures = {
		workspace_swipe_distance = 250,
		workspace_swipe_min_speed_to_force = 15,
		workspace_swipe_create_new = false,
	},

	group = {
		col = {
			border_active = c.cachydgreen,
			border_inactive = c.cachylgreen,
			border_locked_active = c.cachymgreen,
			border_locked_inactive = c.cachydblue,
		},
		groupbar = {
			font_family = "Fira Sans",
			text_color = c.cachydblue,
			col = {
				active = c.cachydgreen,
				inactive = c.cachylgreen,
				locked_active = c.cachymgreen,
				locked_inactive = c.cachydblue,
			},
		},
	},

	misc = {
		font_family = "Fira Sans",
		splash_font_family = "Fira Sans",
		disable_hyprland_logo = true,
		col = { splash = c.cachylgreen },
		background_color = c.cachydblue,
		enable_swallow = true,
		swallow_regex = "^(cachy-browser|firefox|nautilus|nemo|thunar|btrfs-assistant.)$",
		focus_on_activate = true,
		vrr = 2,
	},

	render = {
		direct_scanout = true,
	},

	dwindle = {
		special_scale_factor = 0.8,
		preserve_split = true,
	},

	master = {
		new_status = "master",
		special_scale_factor = 0.8,
	},
})
