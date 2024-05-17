# on non-interactive shells, just exit here to speed things up
if [[ ! -o interactive ]]; then
   return
fi

# ctrl+a/e - emacs
bindkey -e

## Bash-like navigation
autoload -U select-word-style
select-word-style bash

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments # allow # comments in commands

# History in cache directory:
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # cd proj becomes cd Projects
_comp_options+=(globdots)		# Include hidden files.

## Exit shell without having to disown the background processes. This
## makes the ZSH behavour like that of BASH.
setopt NO_HUP
setopt NO_CHECK_JOBS

## Don't fail if using regexp in commands like "find -name *.zip" and
## the regexp doesn't match (in the current directory). Behaviour thus
## becomes the same as in bash.
unsetopt nomatch

# adding git info to prompt
git_prompt() {
    branch="$(git symbolic-ref --short HEAD 2> /dev/null)"

    [ "$(git status --porcelain 2> /dev/null)" != "" ] && indicator="*"

    [ "$branch" != "" ] \
         && echo "($branch$indicator)"
}

##  prompt
setopt PROMPT_SUBST
export PROMPT='%B%F{cyan}%(5~|%-1~/.../%3~|%4~)%F{yellow}$(git_prompt)%(?.%F{green}$.%F{red}$)%f%b '

## Set window title to the current directory
precmd () {
  print -Pn "\e]0;%n@%m: %~\a"
}

# fuzzy finder
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
test -r $HOME/Programs/fzf/key-bindings.zsh &&
    source $HOME/Programs/fzf/key-bindings.zsh
test -r $HOME/Programs/fzf/completion.zsh &&
    source $HOME/Programs/fzf/completion.zsh

# colors for file listings
[ -f ~/.dir_colors ] && eval $(dircolors ~/.dir_colors)

# Aliases
alias ip="ip -color=auto"
alias gping="ping -c 3 1.1.1.1"

alias v="vim"
alias vi="nvim"

alias ls="ls -aF --color=auto"
alias ll="ls -alF"
alias l="ll"
alias myip="ip route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+'"
alias q="exit"
alias t="tmux -2 -u"

alias g="git"
alias gst="git status"
alias gaa="git add -A"
alias gcm="git commit -m"

alias diff='diff --color=auto'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto --exclude-dir=node_modules'
alias fgrep='fgrep --color=auto --exclude-dir=node_modules'
alias egrep='egrep --color=auto --exclude-dir=node_modules'
alias igrep='grep -i'
alias rgrep='grep -r -n'

alias load_nvm="source $NVM_DIR/nvm.sh"

# reading text
alias o='less'

# oneline fuzzy find
f() { ff() { find . -iname "*$**" ; } ; IFS="*" ff "$@" ; }

# check errors on a daily basis
alias gcc='gcc -Wall -Wextra'
alias g++='g++ -Wall -Wextra'

alias x='startx'
alias root='sudo su -'

# skip banner messages
alias gdb='gdb --quiet'

# use cURL like a pro
alias curl-ajax='curl -H "X-Requested-With: XMLHttpRequest"'
alias curl-json='curl-ajax -H "Content-Type: application/json"'
alias curl-auth='curl-json -H "Authorization: Bearer $JWT"'

#alias serve_me="python2 -m SimpleHTTPServer"
alias serve_me="python3 -m http.server"
alias of="lsof -nP +c 15 | grep LISTEN"

# A nicer ps-output. We need to specify user:12 because otherwise usernames
# such as 'sphinxsearch' or 'libvirt-qemu' are displayed as user IDs. According
# to the procps source, this is specified in The Open Group Base Specifications
# Issue 6 (IEEE Std 1003.1, 2004 Edition).
alias p='ps -A f -o user:12,pid,priority,ni,pcpu,pmem,args'

# use \rm to use original rm and not the alias
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'

# will download to $PWD
alias ytaud='yt-dlp --add-metadata -ci --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'
alias ytvid='yt-dlp --add-metadata --no-playlist --no-part --write-description --newline --prefer-free-formats -o "%(title)s.%(ext)s" '

# sysadmin friendly
alias dmesg="sudo /bin/dmesg"

# not an alias, but wth
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    command man "$@"
}

# fnm
export PATH="$HOME/.local/share/fnm:$PATH"
eval "`fnm env`"

if [ -f ~/.zshrc.local ]; then
   source ~/.zshrc.local
fi

## auto suggestions like fish
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

## In-shell syntax highlighting - shoudl be last
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

