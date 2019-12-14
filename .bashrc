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

[ -f "$HOME/.bashrc_aliases" ] && \. "$HOME/.bashrc_aliases"

# prompt
case $TERM in
  xst* | xterm*)
        PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}:${PWD}\007"'
        ;;
    *)
        PROMPT_COMMAND=''
        ;;
esac
PS1='\w\$ '

# load personal configs and aliases, if any!
[ -f "$HOME/.bashrc_mystuff" ] && \. "$HOME/.bashrc_mystuff"
