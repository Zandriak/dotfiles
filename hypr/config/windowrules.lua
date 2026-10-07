local c = require("config.colors")

-- ===== Float necessary windows =====
hl.window_rule({ match = { class = "^(org.pulseaudio.pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^()$", title = "^(Picture in picture)$" }, float = true })
hl.window_rule({ match = { class = "^()$", title = "^(Save File)$" }, float = true })
hl.window_rule({ match = { class = "^()$", title = "^(Open File)$" }, float = true })
hl.window_rule({ match = { class = "^(LibreWolf)$", title = "^(Picture-in-Picture)$" }, float = true })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true })
hl.window_rule({
	match = { class = "^(xdg-desktop-portal-gtk|xdg-desktop-portal-kde|xdg-desktop-portal-hyprland)(.*)$" },
	float = true,
})
hl.window_rule({
	match = {
		class = "^(polkit-gnome-authentication-agent-1|hyprpolkitagent|org.org.kde.polkit-kde-authentication-agent-1)(.*)$",
	},
	float = true,
})
hl.window_rule({ match = { class = "^(CachyOSHello)$" }, float = true })
hl.window_rule({ match = { class = "^(zenity)$" }, float = true })
hl.window_rule({ match = { class = "^()$", title = "^(Steam - Self Updater)$" }, float = true })

-- ===== Dome Keeper =====
hl.window_rule({ match = { class = "^(Dome Keeper)$" }, float = true })
hl.window_rule({ match = { class = "^(Dome Keeper)$" }, size = "1920 1080", center = true })

-- ===== Opacity =====
hl.window_rule({ match = { class = "^(thunar|nemo)$" }, opacity = 0.92 })
hl.window_rule({ match = { class = "^(discord|armcord|webcord)$" }, opacity = 0.96 })
hl.window_rule({ match = { title = "^(QQ|Telegram)$" }, opacity = 0.95 })
hl.window_rule({ match = { title = "^(NetEase Cloud Music Gtk4)$" }, opacity = 0.95 })

-- ===== General window rules =====
hl.window_rule({ match = { title = "^(Picture-in-Picture)$" }, float = true, size = "960 540", move = "25%- 25%-" })
hl.window_rule({
	match = { title = "^(imv|mpv|danmufloat|termfloat|nemo|ncmpcpp)$" },
	float = true,
	size = "960 540",
	move = "25%- 25%-",
})
hl.window_rule({ match = { title = "^(danmufloat)$" }, pin = true })
hl.window_rule({ match = { title = "^(danmufloat|termfloat)$" }, rounding = 5 })
hl.window_rule({ match = { class = "^(kitty|Alacritty)$" }, animation = "slide right" })
hl.window_rule({ match = { class = "^(org.mozilla.firefox)$" }, no_blur = true })

-- ===== Floating/tiling decorations on workspaces 1-10 =====
hl.window_rule({
	match = { float = true, workspace = "w[fv1-10]" },
	border_size = 2,
	border_color = c.cachylblue,
	rounding = 8,
})
hl.window_rule({ match = { float = false, workspace = "f[1-10]" }, border_size = 3, rounding = 4 })

-- ===== Workspace rules =====
hl.workspace_rule({ workspace = "w[tv1-10]", gaps_out = 5, gaps_in = 3 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 5, gaps_in = 3 })

-- ===== Layer rules =====
hl.layer_rule({ match = { namespace = "logout_dialog" }, animation = "slide top" })
hl.layer_rule({ match = { namespace = "waybar" }, animation = "slide down" })
hl.layer_rule({ match = { namespace = "wallpaper" }, animation = "fade 50%" })
