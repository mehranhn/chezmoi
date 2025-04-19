# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# my custom
alias ls="eza -lg --icons --group-directories-first"
alias dt="date '+%m/%d/%Y %H:%M:%S'"
# alias lf="lfub"
alias cat="bat --style plain --paging never"
# alias bat="bat -un"
alias mip='curl icanhazip.com'
alias mpip='proxychains curl icanhazip.com'
alias ipt='sudo iptables -L -n -v --line-numbers'
alias ping='grc --config ~/.config/grc/fping.conf fping -l -t500'
alias ip='ip -br -c'
alias ssha='ssh-add'
alias sshd='ssh-add -d'
alias otp='pass otp -c'
alias rsync="rsync --exclude='.git/'"
alias drsync="rsync --exclude='.git/' --delete"
alias dwr="$HOME/.local/bin/dwr"
