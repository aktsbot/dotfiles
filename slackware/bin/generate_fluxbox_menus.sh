#!/bin/sh

# without icons
xdgmenumaker -f fluxbox --no-submenu > ~/.fluxbox/xdg_menu

# with icons
xdgmenumaker -f fluxbox --no-submenu -i > ~/.fluxbox/xdg_menu_icons
