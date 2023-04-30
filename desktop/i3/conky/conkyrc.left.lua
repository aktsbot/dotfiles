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
  font = 'Play:size=9',
  xftalpha = 0.8,
  update_interval = 1.0,
  total_run_times = 0,
  own_window = true,
  -- own_window_transparent = true,
  own_window_argb_visual = true,
  own_window_argb_value = 160,
  own_window_type = 'override', --normal
  own_window_hints = 'undecorated,below,skip_taskbar,skip_pager,sticky',
  own_window_class = 'Conky',
  own_window_title = 'Conky',
  -- own_window_colour = '222222', -- livarp
  own_window_colour = '000000',
  double_buffer = true,
  minimum_width = 280,
  minimum_height = 10, -- width | height
  maximum_width = 280,
  draw_shades = false,
  draw_borders = true,
  border_inner_margin = 10,
  border_width = 0,
  -- border_width = 1,
  draw_graph_borders = true,
  default_color = 'AAAAAA',
  draw_outline = false,
  default_shade_color = '000000',
  default_outline_color = 'ffffff',
  alignment = 'top_left',
  gap_x = 5,
  gap_y = 28,
  no_buffers = true,
  uppercase = false,
  cpu_avg_samples = 2,
  override_utf8_locale = true,
  color1 = 'dbdbdb',
  color2 = 'bdbdbd',
  color3 = 'ababab',
  -- Arch blue
  color4 = '#1793D0',
  -- Green
  color5 = '#8FEB8F',
  -- Red
  color6 = '#F45F45',
  -- Gentoo Purple
  color7 = '#7A5ADA',
  top_name_width = 15,
  text_buffer_size = 1024,
  imlib_cache_size = 0,
  show_graph_scale = false,
  show_graph_range = false,
  short_units = true,
  use_spacer = 'none',
  if_up_strictness = 'address',
  -- dual monitors?
  -- xinerama_head = 2
  -- lua_load = "/home/akts/.config/i3/conky/functions.lua"
};

conky.text = [[

${image $HOME/.config/i3/conky/images/tux01.png -p 0,0 -s 80x80}
${alignr}${font Xirod:bold:size=12}${color4}Ubuntu Linux${color}${font}


System uptime${alignr}${color1}${uptime_short}${color}
${sysname} ${kernel} ${alignr} ${machine}
System temp${alignr}${color1}${hwmon 1 temp 1}°C${color}

# cpu section
${font Xirod:bold:size=8}${color4}CPU $hr${color}${font}
${image $HOME/.config/i3/conky/images/ryzen.png -p -2,160 -s 72x32}
$alignr${execi 1000 cat /proc/cpuinfo | grep 'model name' | sed -e 's/model name.*: //'| uniq}

${font Monospace:bold:size=7}${color}CPU01 ${cpu cpu1}%${alignr}CPU02 ${cpu cpu2}%$color
${cpugraph cpu1 22,120 7fff00 ff0000}${alignr}${cpugraph cpu2 22,120 7fff00 ff0000}
${color}CPU03 ${cpu cpu3}% ${alignr}CPU04 ${cpu cpu4}%$color
${cpugraph cpu3 22,120 7fff00 ff0000}${alignr}${cpugraph cpu4 22,120 7fff00 ff0000}
${color}CPU05 ${cpu cpu5}% ${alignr}CPU06 ${cpu cpu6}%$color
${cpugraph cpu5 22,120 7fff00 ff0000} ${alignr}${cpugraph cpu6 22,120 7fff00 ff0000}
${color}CPU07 ${cpu cpu7}% ${alignr}CPU08 ${cpu cpu8}%$color
${cpugraph cpu7 22,120 7fff00 ff0000} ${alignr}${cpugraph cpu8 22,120 7fff00 ff0000}
${color}CPU09 ${cpu cpu9}% ${alignr}CPU10 ${cpu cpu10}%$color
${cpugraph cpu9 22,120 7fff00 ff0000} ${alignr}${cpugraph cpu10 22,120 7fff00 ff0000}
${color}CPU11 ${cpu cpu11}% ${alignr}CPU12 ${cpu cpu12}%$color
${cpugraph cpu11 22,120 7fff00 ff0000} ${alignr}${cpugraph cpu12 22,120 7fff00 ff0000}$font

${font Xirod:bold:size=8}${color4}load $hr${color}${font}
${font Monospace:size=7}CPU $hr
  ${alignr}PID    CPU%
  ${color #ff0000}${top name 1}${alignr}${top pid 1} ${top cpu 1}%${color}
  ${color #f66d00}${top name 2}${alignr}${top pid 2} ${top cpu 2}%${color}
  ${color #d8a600}${top name 3}${alignr}${top pid 3} ${top cpu 3}%
  ${color #a4d600}${top name 4}${alignr}${top pid 4} ${top cpu 4}%
  ${color #2ddd00}${top name 5}${alignr}${top pid 5} ${top cpu 5}%${color}

RAM $hr
${alignr}PID    RAM%
  ${color #ff0000}${top_mem name 1}${alignr}${top_mem pid 1}${top_mem mem 1}%${color}
  ${color #f66d00}${top_mem name 2}${alignr}${top_mem pid 2}${top_mem mem 2}%${color}
  ${color #d8a600}${top_mem name 3}${alignr}${top_mem pid 3}${top_mem mem 3}%
  ${color #a4d600}${top_mem name 4}${alignr}${top_mem pid 4}${top_mem mem 4}%
  ${color #2ddd00}${top_mem name 5}${alignr}${top_mem pid 5}${top_mem mem 5}%
${font}
# ram section
${font Xirod:bold:size=8}${color4}Memory $hr${color}${font}
  ${color1}${mem}${color}/${memmax}${alignr}RAM ${memperc}%
  ${membar 8}

  ${color1}$swap/$swapmax${color}${alignr}SWAP $swapperc%
  ${swapbar 8}${color}

${font Xirod:bold:size=8}${color4}Disks $hr${color}${font}
  ${color1}${fs_used}${color}/${fs_size}${alignr}HDD ${fs_used_perc}%
  ${fs_bar 8 /}
  I/O${color1} ${diskio}${color}${alignr}${diskiograph 10,80 7fff00 ff0000 -t}

# network
${font Xirod:bold:size=8}${color4}Network $hr${color}${font}
  ${voffset 5}${if_up enp3s0}NETWORK${alignr}${color1}enp3s0${color}
  DL${color1} ${downspeed enp3s0}/s${color}${alignr}${downspeedgraph enp3s0 10,80 7fff00 ff0000 -t}
  UP${color1} ${upspeed enp3s0}/s${color}${alignr}${upspeedgraph enp3s0 10,80 7fff00 ff0000 -t}${else}${if_up eth0}NETWORK${alignr}${color1}eth0${color}
  DL${color1} ${downspeed eth0}/s${color}${alignr}${downspeedgraph eth0 10,80 7fff00 ff0000 -t}
  UP${color1} ${upspeed eth0}/s${color}${alignr}${upspeedgraph eth0 10,80 7fff00 ff0000 -t}${else}${alignr}${color1}no ${color}network $endif$endif

]];
