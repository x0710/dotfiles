#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

HISTSIZE=10000

export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nvim"
export HISTFILE="$HOME/.bash_history"
export XDG_CONFIG_HOME="$HOME/.config"

alias vim=nvim
alias neofetch='fastfetch'
alias fetch='fastfetch'
alias lss='du -ah --max-depth 1'

alias wxwork='wine "~/.wine/drive_c/Program Files (x86)/WXWork/WXWork.exe"'

