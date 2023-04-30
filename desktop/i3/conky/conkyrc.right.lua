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
  own_window_argb_value = 180,
  own_window_type = 'override', --normal
  own_window_hints = 'undecorated,below,skip_taskbar,skip_pager,sticky',
  own_window_class = 'Conky',
  own_window_title = 'Conky',
  -- own_window_colour = '222222', -- livarp
  own_window_colour = '000000',
  double_buffer = true,
  minimum_width = 420,
  minimum_height = 10, -- width | height
  maximum_width = 420,
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
  alignment = 'top_right',
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
# NETWORK
${font xirod:bold:size=12}${color5}NETWORK ${hr 2}$color$font
Active Interface ${alignr}$gw_iface
#Public IP${alignr} NOPE;)
#${execi 3600 wget -O - http://ip.tupeux.com | tail}
Gateway IP ${alignr}$gw_ip
DNS ${alignr}$nameserver
TOR Status ${alignr}${if_running tor} Active${else}Disabled${endif}
Firewall ${alignr}${exec systemctl status ufw | grep active | cut -c 14-28}
Packets $alignr In:${tcp_portmon 1 32767 count}  Out: ${tcp_portmon 32768 61000 count}

${font Xirod:bold:size=12}${color4}CONNECTIONS ${hr 2}$font$color
${font Play:Bold:size=9}Inbound Connections:  ${tcp_portmon 1 32767 count}  ${alignr} Local Service / Port$font
${font Monospace:size=7}${tcp_portmon 1 32767 rhost 0} ${alignr} ${tcp_portmon 1 32767 lservice 0}
${tcp_portmon 1 32767 rhost 1} ${alignr} ${tcp_portmon 1 32767 lservice 1}
${tcp_portmon 1 32767 rhost 2} ${alignr} ${tcp_portmon 1 32767 lservice 2}
${tcp_portmon 1 32767 rhost 3} ${alignr} ${tcp_portmon 1 32767 lservice 3}
${tcp_portmon 1 32767 rhost 4} ${alignr} ${tcp_portmon 1 32767 lservice 4}
${tcp_portmon 1 32767 rhost 4} ${alignr} ${tcp_portmon 1 32767 lservice 5}$font

${font Play:Bold:size=9}Outbound Connections:  ${tcp_portmon 32768 61000 count}  ${alignr} Remote Service / Port$font
${font Monospace:size=7}${tcp_portmon 32768 61000 rhost 0} ${alignr} ${tcp_portmon 32768 61000 rservice 0}
${tcp_portmon 32768 61000 rhost 1} ${alignr} ${tcp_portmon 32768 61000 rservice 1}
${tcp_portmon 32768 61000 rhost 2} ${alignr} ${tcp_portmon 32768 61000 rservice 2}
${tcp_portmon 32768 61000 rhost 3} ${alignr} ${tcp_portmon 32768 61000 rservice 3}
${tcp_portmon 32768 61000 rhost 4} ${alignr} ${tcp_portmon 32768 61000 rservice 4}
${tcp_portmon 32768 61000 rhost 5} ${alignr} ${tcp_portmon 32768 61000 rservice 5}
${tcp_portmon 32768 61000 rhost 6} ${alignr} ${tcp_portmon 32768 61000 rservice 6}
${tcp_portmon 32768 61000 rhost 7} ${alignr} ${tcp_portmon 32768 61000 rservice 7}
${tcp_portmon 32768 61000 rhost 8} ${alignr} ${tcp_portmon 32768 61000 rservice 8}
${tcp_portmon 32768 61000 rhost 9} ${alignr} ${tcp_portmon 32768 61000 rservice 9}
${tcp_portmon 32768 61000 rhost 10} ${alignr} ${tcp_portmon 32768 61000 rservice 10}
${tcp_portmon 32768 61000 rhost 11} ${alignr} ${tcp_portmon 32768 61000 rservice 11}
${tcp_portmon 32768 61000 rhost 12} ${alignr} ${tcp_portmon 32768 61000 rservice 12}
${tcp_portmon 32768 61000 rhost 13} ${alignr} ${tcp_portmon 32768 61000 rservice 13}
${tcp_portmon 32768 61000 rhost 14} ${alignr} ${tcp_portmon 32768 61000 rservice 14}$font

${color7}${font xirod:bold:size=12}NEWS${hr 2}$color$font
${color6}Times of India$color
${rss https://www.livemint.com/rss/technology 1 item_titles 5}
${color6}WebUpd8$color
${rss http://feeds2.feedburner.com/webupd8 1 item_titles 5 }
${color6}ZDnet$color
${rss https://www.zdnet.com/news/rss.xml 1 item_titles 5}

${color1}${font xirod:bold:size=12}DPKG LOG ${hr 2}$color$font
${execi 30 tail -n10 /var/log/dpkg.log}
]];
