EDITOR=nvim
LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
PAGER='less -R'
MANPAGER="$PAGER"

export EDITOR PAGER MANPAGER LANG LC_CTYPE LC_ALL
export GTK_CSD=0

[ -d $HOME/bin ] && export PATH="${HOME}/bin:${PATH}"

# colored man pages
# there is an alias now in ~/.bashrc_aliases
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;31m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[00;32m'

# install qt5ct and choose a good theme
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_OVERLAY_SCROLLING=0
export GDK_CORE_DEVICE_EVENTS=1

# long date format in ls
export TIME_STYLE=long-iso
