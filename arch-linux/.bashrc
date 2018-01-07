#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -lisah --color=auto'
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

Ps1='[\u@\h \W]\$ '

# Export the last element of the working path for tmux
export WD=${PWD##*/}

# local bin
export PATH=$HOME/.local/bin/:$PATH

# haskell
export PATH=$HOME/.cabal/bin/:$PATH

export EDITOR=emacsclient
export ALTERNATE_EDITOR=gedit
export VISUAL=emacsclient

export PATH=$HOME/.local/texlive/2016/bin/x86_64-linux:$PATH
export MANPATH=$HOME/.local/texlive/2016/texmf/doc/man:$MANPATH
export INFOPATH=$HOME/.local/texlive/2016/texmf/doc/info:$INFOPATH

# ruby executables
export PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH

# check the terminal window size after each command
shopt -s checkwinsize

# use the native lib libstdc++.so.6 for android emaluator:
# http://stackoverflow.com/questions/35911302/cannot-launch-emulator-on-linux-ubuntu-15-10
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
