function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%{\e[0m%}'
COLOR_USR=$'%{\e[38;5;243m%}'
COLOR_DIR=$'%{\e[38;5;197m%}'
COLOR_GIT=$'%{\e[38;5;39m%}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}$ '

alias ls='ls --color'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias la='ls -A'
alias ll='ls -l'
alias lr='ls -R'
alias rmf='rm -rf'

alias gad='git add'
alias glg='git log'
alias gdf='git diff'
alias gpl='git pull'
alias gps='git push'
alias gcl='git clone'
alias gbr='git branch'
alias gst='git status'
alias gco='git checkout'
alias gcm='git commit -m'

alias py='python3'
alias python='python3'
alias pep='pycodestyle'
alias django-run='python3 manage.py runserver'
