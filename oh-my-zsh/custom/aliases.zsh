alias v="vim"
alias tmux="tmux -2 -u"
alias t="tmux"
alias gping="grc ping -c 3 8.8.8.8"
alias vi3="vim ~/.config/i3/config"
alias vvim="vim ~/.config/nvim/init.vim"
alias ls='ls -hN --color=auto --group-directories-first'
alias mkd="mkdir -pv"
alias g="git"
alias gpom="git push origin master"
alias q="exit"
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias uptime='uptime -p'
alias free='free -h'
alias df='df -h | grep sd |\
    sed -e "s_/dev/sda[1-9]_\x1b[34m&\x1b[0m_" |\
    sed -e "s_/dev/sd[b-z][1-9]_\x1b[33m&\x1b[0m_" |\
    sed -e "s_[,0-9]*[MG]_\x1b[36m&\x1b[0m_" |\
    sed -e "s_[0-9]*%_\x1b[32m&\x1b[0m_" |\
    sed -e "s_9[0-9]%_\x1b[31m&\x1b[0m_" |\
    sed -e "s_/mnt/[-_A-Za-z0-9]*_\x1b[34;1m&\x1b[0m_"'
alias disk='df'
alias alu='apt list --upgradable'


alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias httpserver="python -m SimpleHTTPServer"

weath() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).

# bookmarks
alias dl='cd ~/Downloads; la'
alias docs='cd ~/Documents; la'
alias tmp='cd ~/tmp; la'
alias proj='cd ~/Projects; la'
