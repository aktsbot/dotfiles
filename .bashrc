# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend cmdhist
shopt -s globstar
shopt -s autocd
stty -ixon # removes ctrl+s, ctrl+q 

HISTSIZE= HISTFILESIZE= # Infinite history.

complete -cf sudo
complete -cf man

# less for binary files
[ -x /usr/bin/lesspipe    ] && eval "$(SHELL=/bin/sh lesspipe)"

# bash completion
[ -f /etc/bash/bashrc.d/bash_completion.sh ] && . /etc/bash/bashrc.d/bash_completion.sh
# personal aliases
[ -f "$HOME/.bashrc_aliases" ] && \. "$HOME/.bashrc_aliases"
# colors in ls
[ -f "$HOME/.dircolors" ] && eval "$(dircolors $HOME/.dircolors)"


# prompt to have git info
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"
source ~/.git-prompt.sh

# colors
#c_white='\e[1;37m'
#c_green='\e[1;32m'
#c_red='\e[1;31m'
#c_normal='\e[0m'
c_white='\[$(tput setaf 7)\]'
c_green='\[$(tput setaf 2)\]'
c_red='\[$(tput setaf 1)\]'
c_blue='\[$(tput setaf 4)\]'
c_cyan='\[$(tput setaf 6)\]'
c_black='\[$(tput setaf 0)\]'
c_purple='\[$(tput setaf 5)\]'
c_yellow='\[$(tput setaf 3)\]'
c_reset='\[$(tput sgr0)\]'
c_bold='\[$(tput bold)\]'

#export PS1="$c_white\u$c_normal$c_green \w$c_red\$(__git_ps1 \" (%s)\")$c_normal\$ "
#export PS1='\w$(__git_ps1 " (%s)")\$ '
#export PS1="$c_green\[\e[1m\]\w$c_red\[\e[1m\]\$(__git_ps1 \" (%s)\")$c_white\[\e[1m\]\$$c_reset "
export PS1="$c_blue\w$c_yellow\$(__git_ps1 \" (%s)\")$c_white\$$c_reset "

# xero prompt def
#PS1="$c_cyan$c_bold["
#PS1+="$c_reset\w"
#PS1+="$c_cyan$c_bold]$c_reset"
#PS1+="$c_yellow\$(__git_ps1 \"$c_cyan―$c_bold[$c_reset$c_yellow%s$c_cyan$c_bold]\")"
#PS1+="$c_reset―― ‒ "
#export PS1

export PS2="> "

# terminal title
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\h:\w\a\]$PS1"
    ;;
*)
    ;;
esac


# load personal configs and aliases, if any!
[ -f "$HOME/.bashrc_mystuff" ] && \. "$HOME/.bashrc_mystuff"
