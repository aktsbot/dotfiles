#          _     
#  _______| |__  
# |_  / __| '_ \ 
#  / /\__ \ | | |
# /___|___/_| |_|
#               


export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export PAGER="most"


# text normal colors
red='\e[0;31m'
blue='\e[0;34m'
cyan='\e[0;36m'
green='\e[0;32m'
yellow='\e[0;33m'
# text bright colors
bred='\e[0;91m'
bblue='\e[0;94m'
bcyan='\e[0;96m'
bgreen='\e[0;92m'
byellow='\e[0;93m'
bwhite='\e[0;97m'
# reset color
NC='\e[0m'

PATH="$HOME/bin:$PATH"

# want your terminal to support 256 color schemes? I do ...
#export TERM="xterm-256color"
export TERM="rxvt-256color"

PATH="/home/akts/.perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/akts/.perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/akts/.perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/akts/.perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/akts/.perl5"; export PERL_MM_OPT;

# aliases for convenience sake
alias ..='cd ..'
alias ...='cd ../..'
alias e='exit'
alias s='sudo'

alias ls="ls++"
#alias ls="ls -hFG --color=auto"
alias l="ls"
alias la="ls -a"
alias v="vim"
alias sv="sudo vim"
alias starwars="telnet towel.blinkenlights.nl"
alias tmux="tmux -2 -u"
alias t="tmux"
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias i3c="vim ~/.i3/config"
alias ymp3='youtube-dl --extract-audio --audio-format mp3 '
alias gping='grc ping -c 3 8.8.8.8'
alias tuports='grc netstat -nptl'
alias gcol='~/bin/ghci-color'
alias ei='~/bin/env-info'
alias pql='sudo -u postgres bash'


# apt
alias agu='sudo apt-get update'
alias agi='sudo apt-get install'
#alias acs='apt-cache search'
alias acs='~/bin/acs'
alias agr='sudo apt-get remove'

alias telegram='/home/akts/.apps/Telegram/Telegram'

# Set up the prompt
autoload -Uz promptinit
autoload -U colors && colors
promptinit
PROMPT="%{$fg[green]%} %% %{$reset_color%}"

setopt histignorealldups sharehistory

bindkey -v

# no delay entering normal mode
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
function zle-line-init zle-keymap-select {
    #RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS1="${${KEYMAP/vicmd/^}/(main|viins)/<}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b ~/.dircolors)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# syntax highlighting
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
ZSH_HIGHLIGHT_STYLES[default]='none'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=blue'
ZSH_HIGHLIGHT_STYLES[function]='fg=blue'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[precommand]='none'
ZSH_HIGHLIGHT_STYLES[commandseparator]='none'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=green'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=red'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[assign]='none'
