-- Classic-conky.conf

--[[ For conky variables and commands use the terminal command:

 man conky

 Bunsen Labs Conky help threads
 ------------------------------
 Index » Scripts, Tutorials & Tips » Conky - Calendars / Clocks / Time
 https://forums.bunsenlabs.org/viewtopic.php?id=516

 Open a thread and Post conky questions in: Index » GUI & Applications
 https://forums.bunsenlabs.org/viewforum.php?id=4

 Display your completed conky and codes
 Index » Scripts, Tutorials & Tips » Show us your conky
 https://forums.bunsenlabs.org/viewtopic.php?id=512
]]
conky.config = {
	-- Settings

	background = true,
	use_xft = true,
	-- font = "Sans:size=8",
	font = "Play:size=9",
	xftalpha = 1.0,
	update_interval = 1.0,
	total_run_times = 0,
	own_window = true,
	-- own_window_transparent = true,
	own_window_argb_visual = true,
	own_window_argb_value = 160,
	own_window_type = "override", --normal
	own_window_hints = "undecorated,below,skip_taskbar,skip_pager,sticky",
	own_window_class = "Conky",
	own_window_title = "Conky",

	-- own_window_colour = "222222",

	double_buffer = true,
	minimum_width = 200,
	minimum_height = 10, -- width | height
	maximum_width = 200,
	draw_shades = false,
	draw_borders = true,
	border_inner_margin = 10,
	border_width = 0,
	-- border_width = 1,
	draw_graph_borders = true,
	default_color = "999999",
	draw_outline = false,
	default_shade_color = "111111",
	default_outline_color = "111111",
	alignment = "bottom_left",
	gap_x = 5,
	gap_y = 10,
	no_buffers = true,
	uppercase = false,
	cpu_avg_samples = 2,
	override_utf8_locale = true,

	-- blue
	color1 = "#1793D0",
	-- Green
	color2 = "#8FEB8F",
	-- Red
	color3 = "#F45F45",
	-- Gentoo Purple
	color4 = "#7A5ADA",

	top_name_width = 15,
	text_buffer_size = 1024,
	imlib_cache_size = 0,
	show_graph_scale = false,
	show_graph_range = false,
	short_units = true,
	use_spacer = "none",
	if_up_strictness = "address",
	-- dual monitors?
	-- xinerama_head = 2
	-- lua_load = "/home/akts/.config/i3/conky/functions.lua"
}

conky.text = [[
System uptime${alignr}${uptime_short}
System temp${alignr}${hwmon 1 temp 1}°C

# ram section
${font Xirod:size=9}${color1}MEMORY $hr${color}${font}
RAM ${legacymem}/${memmax}${alignr}SWAP $swap/$swapmax

# disks
${font Xirod:size=9}${color1}DISKS $hr${color}${font}
${fs_used /}/${fs_size /}${alignr}ROOT ${fs_used_perc /}%
${fs_bar 5 /}
${fs_used /home}/${fs_size /home}${alignr}HOME ${fs_used_perc /home}%
${fs_bar 5 /home}

# network
${font Xirod:size=9}${color1}NETWORK $hr${color}${font}
${voffset 5}${if_up enp3s0}INTERFACE${alignr}enp3s0
DL ${downspeed enp3s0}/s${alignr}${downspeedgraph enp3s0 10,80 -t}
UP ${upspeed enp3s0}/s${alignr}${upspeedgraph enp3s0 10,80 -t}${else}${if_up eth0}INTERFACE${alignr}eth0
DL ${downspeed eth0}/s${alignr}${downspeedgraph eth0 10,80 7fff00 ff0000}
UP ${upspeed eth0}/s${alignr}${upspeedgraph eth0 10,80 7fff00 ff0000}${else}${alignr}no network $endif$endif
]]
