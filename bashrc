# $HOME/.bashrc

# shblah!
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Disable ctrl-s and ctrl-q.
stty -ixon
#Allows you to cd into directory merely by typing the directory name.
shopt -s autocd
# Infinite history.
HISTSIZE= HISTFILESIZE= 

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

complete -cf sudo

# handy aliases
alias ls='ls -aF'
alias ll='ls -alF'
alias l='ll'
alias v='vim'
alias publicip='curl -s http://ifconfig.me'
alias tmux="tmux -2 -u"
alias t="tmux"
alias gping="ping -c 3 8.8.8.8"
alias vi3="vim ~/.config/i3/config"
alias vvim="vim ~/.config/nvim/init.vim"
alias vbash="vim ~/.bashrc"
alias q="exit"
alias df="df -hT"
alias du="du -sh"
alias sl="ls"
alias psg="ps auxw | grep -i "                                                                    
alias psptree="ps auxwwwf"
alias free="free -mh" 
alias dl='cd ~/Downloads; ll'
alias docs='cd ~/Documents; ll'
alias tmp='cd ~/tmp; ll'
alias proj='cd ~/Projects; ll'

# prompt
export GIT_PS1_SHOWDIRTYSTATE=yes
export GIT_PS1_SHOWUNTRACKEDFILES=yes
export GIT_PS1_STATESEPARATOR=''
source ~/.git-prompt.sh
# not colored
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# other aliases
if [ -f ~/.aliases ]
then
	source ~/.aliases
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/tools/bin
export PATH=${PATH}:$ANDROID_HOME/platform-tools

# mongodb
export PATH=${PATH}:$HOME/Programs/mongodb/bin
