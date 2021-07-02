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
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# bash completion
[ -f /etc/bash/bashrc.d/bash_completion.sh ] && . /etc/bash/bashrc.d/bash_completion.sh

# colors for file listings
[ -f ~/.dir_colors ] && eval $(dircolors ~/.dir_colors)

[ -f "$HOME/.bashrc_aliases" ] && \. "$HOME/.bashrc_aliases"

# prompt
git_prompt() {
    branch="$(git symbolic-ref --short HEAD 2> /dev/null)"

    [ "$(git status --porcelain 2> /dev/null)" != "" ] && indicator="*"

    [ "$branch" != "" ] \
         && echo "($branch$indicator)"
}

export PS1="\w\$(git_prompt)\$ "
export PS2="> "

# terminal title
case "$TERM" in
xterm*|rxvt*|st*)
    PS1="\[\e]0;\h:\w\a\]$PS1"
    ;;
*)
    ;;
esac

# load personal configs and aliases, if any!
[ -f "$HOME/.bashrc_mystuff" ] && \. "$HOME/.bashrc_mystuff"

# long date format in ls
export TIME_STYLE=long-iso

# completions and keys for fzf
[ -f "/usr/share/doc/fzf/completion.bash" ] && \. "/usr/share/doc/fzf/completion.bash"
[ -f "/usr/share/doc/fzf/key-bindings.bash" ] && \. "/usr/share/doc/fzf/key-bindings.bash"
