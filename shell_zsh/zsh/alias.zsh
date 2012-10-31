#
# .zalias: sourced by .bashrc and .zshrc
#

# -- Admin tasks
alias ls='ls -lh --color'
alias df='df -h'
alias du='du -h'
alias su='su -'
alias ..='cd ..'
alias ....='cd ../..'
alias grep='grep --color'
alias sdown='sudo rmmod e1000e && sudo systemctl poweroff'
alias reboot='sudo rmmod e1000e && sudo systemctl reboot'

# -- 1 line Commands
alias sprunge='curl -F "sprunge=<-" http://sprunge.us'
alias scrompbox='scrot -s '"'"'%Y%m%d.png'"'"' -e '"'"'ompload $f && mv $f ~/bridge/image/screeny/'"'"''
alias scromp='scrot '"'"'%Y%m%d.png'"'"' -e '"'"'ompload $f && mv $f ~/bridge/image/screeny/'"'"''
alias aurvote='aurvote -v $(pacman -Qqm)'
alias lap_mon_on='xrandr --output LVDS1 --mode 1600x900 --left-of HDMI1 --output HDMI1 --primary'
alias google-chrome='google-chrome --disk-cache-dir=/tmp --ignore-gpu-blacklist'

# -- Type less
alias v='vim'
alias sv='sudo vim'
alias ncm='ncmpcpp'
alias snet='sudo netcfg'
alias xresources='xrdb -merge ~/.Xresources'
alias xmap='xmodmap ~/.Xmodmap' 
alias dtella='python2 ~/dtella/dtella.py'
alias pa='pacaur'
alias mpdstart='sudo systemctl start mpd.service'
alias clear_pkg_dir='sudo rm -rf pkg src && sudo rm -f *.gz'

# -- Pacman
alias p='pacman-color'
alias sp='sudo pacman-color' 
alias pacman='pacman-color'
alias pii='pacman-color -Qii'
alias psyu='pacaur -Syu'
alias prsn='sudo pacman-color -Rsn'
alias pas='sudo pacman-color -S'
alias pss='sudo pacman-color -Ss'
alias pqs='pacman-color -Qs'
alias pu='sudo pacman-color -U'
alias pqe='pacman-color -Qe'
alias pcnt='pacman -Q | wc -l'

# -- Github shortcuts
alias giti='git init'
alias gita='git add .'
alias gitc='git commit -m'
alias gitpom='git push -u origin master'

alias dotfiles_push='cd /home/hsp/dotfiles && ./prior.sh && git add . && gitc "periodic update" && git push origin master'
alias dotfiles_setup='cd /home/hsp/dotfiles && ./setup.sh'

# -- Directory
alias ece264='cd ~/code/ece264/'
alias PKGBUILDs='cd ~/code/PKGBUILDs/'
alias cdceli='cd ~/code/C/celi/'
alias cdsimpfand='cd ~/code/C/simpfand/'
alias cdcode='cd ~/code/C'

alias ssdaemonrel='sudo systemctl --system daemon-reload'

# vim: set syn=sh :
