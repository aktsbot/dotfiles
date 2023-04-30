export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim="lvim"
alias vi="lvim"
alias v="lvim"
alias tmux="tmux -2 -u"
alias t="tmux"

alias ip="ip -color=auto"
alias gping="ping -c 3 1.1.1.1"

#alias ls="ls -aF --color=auto"
#alias ll="ls -alF"
#alias l="ll"

alias ls="exa -aF"
alias ll="exa -alF"
alias l="ll"

alias myip="ip route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+'"
alias q="exit"
alias vi3="lvim ~/.config/i3/config"

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
alias rgrep='grep -r'

alias serve_me="python3 -m http.server"
alias of="lsof -nP +c 15 | grep LISTEN"

alias p='ps -A f -o user:12,pid,priority,ni,pcpu,pmem,args'
alias pw='pwgen -s 23 1'

alias bat="batcat --theme=TwoDark"

# use \rm to use original rm and not the alias
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'

# will download to $PWD
alias ytaud='yt-dlp --add-metadata -ci --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'
alias ytvid='yt-dlp --add-metadata --no-playlist --no-part --write-description --newline --prefer-free-formats -o "%(title)s.%(ext)s" '

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# stuff from msjche's config
alias Stat='uname -a;systemd-analyze time;wc -l /lib/modules/$(uname -r)/modules.order | lolcat'
alias keys='xev'
alias vZshrc="v ~/.zshrc"
alias vZsh="v ~/.oh-my-zsh/custom/myconfig.zsh"
alias Keys='gpg --recv-keys'
alias Fonts='fc-cache -vf ~/.fonts'
alias font-check='echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"'
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias news='newsbeuter'
alias irc="weechat-curses"

alias extract='dtrx'
alias gz='tar -xzf'
alias xz='tar -xJf'
alias bz='tar -xvjf'
alias bz2='tar -jxvf'

alias pkg_search="nala search"
alias pkg_install="sudo nala install"
alias pkg_update="sudo nala update"
alias pkg_upgrade="sudo nala upgrade"
alias pkg_remove="sudo nala remove"
alias pkg_log="tail -f /var/log/dpkg.log"

# File Extensions
for ext in html org php com net no;    do alias -s $ext=$BROWSER; done
for ext in txt tex py PKGBUILD;        do alias -s $ext=$EDITOR; done
for ext in png jpg gif;            do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv;        do alias -s $ext=$MOVPLAY; done
for ext in wav mp3 ogg;            do alias -s $ext=$SNDPLAY; done

man() {
  LESS_TERMCAP_md=$'\e[01;31m' \
  LESS_TERMCAP_me=$'\e[0m' \
  LESS_TERMCAP_so=$'\e[01;40;33m' \
  LESS_TERMCAP_se=$'\e[0m' \
  LESS_TERMCAP_us=$'\e[01;32m' \
  LESS_TERMCAP_ue=$'\e[0m' \
  command man "$@"
}
# check .zprofile


# extra things to PATH
export PATH=$PATH:$HOME/Programs/go/bin

# completions and keys for fzf
[ -f "/usr/share/doc/fzf/examples/completion.zsh" ] && \. "/usr/share/doc/fzf/examples/completion.zsh"
[ -f "/usr/share/doc/fzf/examples/key-bindings.zsh" ] && \. "/usr/share/doc/fzf/examples/key-bindings.zsh"

bindkey -s ^f "tmux-sessionizer\n"

# zsh autocompletion tweaks
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

