-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                      Input Configuration                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Input wiki https://wiki.hyprland.org/Configuring/Variables/#input

hl.config({
	input = {
		follow_mouse = 2, -- 0|1|2|3
		float_switch_override_focus = 2,
		kb_layout = "us,de",
		kb_options = "grp:alt_shift_toggle",
	},
})
