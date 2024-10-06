conky.config = {
	use_xft = true,
	xftalpha = 1,
	update_interval = 5,
	total_run_times = 0,
	own_window = true,
	-- own_window_transparent = true,
	own_window_argb_visual = true,
	own_window_argb_value = 160,
    own_window_type = "override",
	own_window_class = "Conky",
	own_window_hints = "undecorated,below,sticky,skip_taskbar,skip_pager",
	background = false,
	double_buffer = true,
	imlib_cache_size = 0,
	no_buffers = true,
	uppercase = false,
	cpu_avg_samples = 2,
	override_utf8_locale = true,
	minimum_width = 200,
	maximum_width = 200,
	short_units = false,

	border_inner_margin = 10,

	-- placement
	alignment = "top_right",
	gap_x = 5,
	gap_y = 28,

	-- default drawing
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = true,
	default_bar_width = 200,
	default_bar_height = 5,
	default_graph_width = 200,
	default_graph_height = 16,
	default_gauge_width = 20,
	default_gauge_height = 20,

	-- colors
	font = "Play:size=9",
	--font = "snap:size=7",
	default_color = "999999",
	default_shade_color = "263238",
	default_outline_color = "263238",
	own_window_colour = "000000",

	-- color1 = "cyan",
	-- color4 = "1793D0",
	color0 = "PaleGreen",
	color1 = "DarkSeaGreen",
	color2 = "SeaGreen",
	color3 = "GreenYellow",
	color4 = "DarkSeaGreen", --red
	color5 = "white",
	color6 = "DarkOliveGreen3",
	color7 = "khaki1",
	color8 = "white",
	color9 = "ForestGreen"
}
conky.text = [[
${font DS\-Digital:bold:size=50}${color darkgreen}${alignc}${time %I:%M}${color}${font}

${font monospace:size=10}${execpi 3600 ~/.config/conky/cal.lua}${font}

$alignc${font Play:bold:size=12}${color1}${exec cat /etc/slackware-version} ${color2}${machine}${color}${font}
${image $HOME/.config/conky/images/tux01.png -p 100,260 -s 80x80}
${color gold}Uptime: ${color }$uptime_short
${color gold}Kernel: ${color }$kernel
${color gold}Load: ${color }$loadavg
${color gold}Processes: ${color }$processes
${color gold}Running:   ${color }$running_processes

###NVIDIA-PROPRIETARY-BEGIN###
# GPU: ${nvidia gpuutil}%$alignr${nvidia gpufreq}Hz  ${nvidia temp}°C
#${color 64DD17}${nvidiabar 5 gpuutil}
###NVIDIA-PROPRIETARY-END#####
###NVIDIA-PROPRIETARY-ADVANCED-BEGIN#####
# ${color grey}Mem:$color$alignr${nvidia mtrfreq}MHz ${nvidia mem}MB/${nvidia memmax}MB
#$color${nvidiabar 4,140 mem}
# ${color grey}Memory Bus Usage:$alignr${color lightgrey}${nvidia membwutil}%
# ${color grey}PCIe Bus Usage:$alignr${color lightgrey}${nvidia pcieutil}%
# ${color grey}Video Engine Usage:$alignr${color lightgrey}${nvidia videoutil}%
###NVIDIA-PROPRIETARY-ADVANCED-END#####
${color gold}CPU: ${color}$cpu% $alignr${freq_g}GHz  ${hwmon temp 1}°C
#$color CPU Usage: $cpu%$alignr${execi 10 sensors | grep ^temp1 | tail -n 1 |awk '{print $2}'}
${cpugraph 16 7fff00 ff0000}
C01: ${cpubar cpu1 5,50}${alignr}C02: ${cpubar cpu2 5,50}
C03: ${cpubar cpu3 5,50}${alignr}C04: ${cpubar cpu4 5,50}
C05: ${cpubar cpu5 5,50}${alignr}C06: ${cpubar cpu6 5,50}
C07: ${cpubar cpu7 5,50}${alignr}C08: ${cpubar cpu8 5,50}
C09: ${cpubar cpu9 5,50}${alignr}C10: ${cpubar cpu10 5,50}
C11: ${cpubar cpu11 5,50}${alignr}C12: ${cpubar cpu12 5,50}

${font monospace:size=7}${color #ff0000}${top name 1}${alignr}${top pid 1} ${top cpu 1}%
${color #f66d00}${top name 2}${alignr}${top pid 2} ${top cpu 2}%
${color #d8a600}${top name 3}${alignr}${top pid 3} ${top cpu 3}%
${color #a4d600}${top name 4}${alignr}${top pid 4} ${top cpu 4}%
${color #2ddd00}${top name 5}${alignr}${top pid 5} ${top cpu 5}%${font}

${color gold}MEM:${color }$alignr${execp free -h | awk '/^Mem/ {print $3}'}B/$memmax
${membar 4}
${color gold}SWAP: ${color }$alignr$swap/$swapmax
${swapbar 4}
${font monospace:size=7}${color #ff0000}${top_mem name 1}${alignr}${top_mem pid 1}${top_mem mem 1}%
${color #f66d00}${top_mem name 2}${alignr}${top_mem pid 2}${top_mem mem 2}%
${color #d8a600}${top_mem name 3}${alignr}${top_mem pid 3}${top_mem mem 3}%
${color #a4d600}${top_mem name 4}${alignr}${top_mem pid 4}${top_mem mem 4}%
${color #2ddd00}${top_mem name 5}${alignr}${top_mem pid 5}${top_mem mem 5}%${font}

${color gold}EFI:  ${color }$alignr${fs_used /boot/efi}/${fs_size /boot/efi}
${fs_bar 4 /boot/efi}
${color gold}HOME:  ${color }$alignr${fs_used /home}/${fs_size /home}
${fs_bar 4 /home}
${color gold}ROOT:  ${color }$alignr${fs_used /}/${fs_size /}
${fs_bar 4 /}
Disk I/O Write: $alignr${color}${diskio_write} ${diskiograph_write 10,45 ff5722 f44336 -t -l}
Disk I/O Read: $alignr${color}${diskio_read} ${diskiograph_read 10,45 8bc34a 4caf50 -t -l}

${if_existing /sys/class/net/eth0/operstate up}
${color gold}IP (eth0):${color}$alignr${addr eth0}
Up: ${color }${upspeed eth0}k/s${alignr}TUp:${totalup eth0}
${upspeedgraph eth0 15 000000 00ff00}
Down: ${color }${downspeed eth0}k/s${alignr}TDown:${totaldown eth0}
${downspeedgraph eth0 15 7fff00 ff0000}${endif}${if_existing /sys/class/net/wlan0/operstate up}
${color gold}IP (wlan0):${color}$alignr${addr wlan0}
Up: ${color }${upspeed wlan0}k/s${alignr}TUp:${totalup wlan0}
${upspeedgraph wlan0 15 000000 00ff00}
Down: ${color }${downspeed wlan0}k/s${alignr}TDown:${totaldown wlan0}
${downspeedgraph wlan0 15 7fff00 ff0000}${endif}

]]
