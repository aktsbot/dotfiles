#!/bin/sh
#
# Example usage (~/.config/labwc/menu.xml):
#
#     <?xml version="1.0" encoding="utf-8"?>
#     <openbox_menu>
#       <menu id="root-menu" label="" execute="example-dynamic-root-menu.sh"/>
#     </openbox_menu>

terminal="foot"

printf '%b\n' '<openbox_pipe_menu>
'
labwc-menu-generator -b -t "${terminal}"

printf '%b\n' '
</openbox_pipe_menu>'
