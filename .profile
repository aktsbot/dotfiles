EDITOR=vim
LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
PAGER='less -R'
MANPAGER="$PAGER"

export EDITOR PAGER MANPAGER LANG LC_CTYPE LC_ALL

QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME

# old gtk look and behaviour
GTK_OVERLAY_SCROLLING=0
GTK_BACKDROP=1
GTK_FOCUS_VISIBLE=1
GTK_PROGRESS_TEXT_INSIDE=1
GTKM_INSERT_EMOJI=1
export GTK_OVERLAY_SCROLLING GTK_BACKDROP GTK_FOCUS_VISIBLE GTK_PROGRESS_TEXT_INSIDE GTKM_INSERT_EMOJI

# nice red prompt for sudo
export SUDO_PROMPT="$(tput setaf 1 bold)Password:$(tput sgr0) "

[ -d $HOME/bin ] && export PATH="${HOME}/bin:${PATH}"

# add su paths
export PATH="${PATH}:/usr/local/sbin:/usr/sbin:/sbin"

# add my extra scripts and binaries to PATH
export PATH="${PATH}:$HOME/Programs/docker"
export PATH="${PATH}:$HOME/Programs/android-platform-tools"


# long date format in ls
export TIME_STYLE=long-iso

# automatically login into x
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi
