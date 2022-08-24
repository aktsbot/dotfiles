EDITOR=vim
LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
PAGER='less -R'
MANPAGER="$PAGER"

export EDITOR PAGER MANPAGER LANG LC_CTYPE LC_ALL

[ -d $HOME/bin ] && export PATH="${HOME}/bin:${PATH}"

# add su paths
export PATH="${PATH}:/usr/local/sbin:/usr/sbin:/sbin"

# long date format in ls
export TIME_STYLE=long-iso
