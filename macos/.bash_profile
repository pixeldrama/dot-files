alias la='ls -lisah'
alias tt='tmux new-session'
alias ta='tmux attach-session'
alias e='emacs -nw'
alias se='sudo emacs -nw'
alias fuck='sudo $(history -p \!\!)'
alias findf='find ./ -type f'
alias findd='find ./ -type d'
alias f='find ./ -name'
alias rs='rsync -ruh --progress --stats' 
alias hl='history | less'

PS1='[\u@\h \W]\$ '

# java config
export PATH=$PATH:$HOME/usr/bin/
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# git completion
source $HOME/usr/bin/git-completion.bash

alias ta='tmux attach-session'
alias tt='tmux'

# Editor to emacs
export EDITOR=emacsclient
export ALTERNATE_EDITOR=emacs
export VISUAL=emacsclient


# support better tab completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
