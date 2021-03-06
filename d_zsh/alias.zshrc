## Alias configration
# expand aliases before completing

setopt complete_aliases

alias where="command -v"
alias j="jobs -l"

case "${OSTYPE}" in
freebsd*|darwin*)
	alias ls="ls -G -w"
	;;
linux*)
	alias ls="ls --color"
	;;
esac

alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias lla="ls -la"

alias du="du -h"
alias df="df -h"

alias su="su -l"

# alias for tmux
alias tma="tmux attach"
alias tmd="tmux detach"
alias tmat="tmux attach -t"
alias tmls="tmux ls"
alias tmrenamet="tmux rename -t"
alias tmkillt="tmux kill-session -t"
alias tmkillall="tmux kill-server"
alias tmnews="tmux new-session -s"

# alias for git
alias gich="git checkout"
alias gicom="git commit"
alias gicomm="git commit -m"
alias gipmaster="git push origin master"
alias gipdevelop="git push origin develop"
