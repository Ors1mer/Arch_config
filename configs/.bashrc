#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set keyboards
setxkbmap -layout us,fr -option "grp:ctrl_alt_toggle"

# Import colorscheme from wal
#(cat ~/.cache/wal/sequences &)

# --- Variable Changes ---

# minimalistic command prompt
export PS1="\[\033[0;36m\]\w \[\033[1;36m\]\$ \033[0;37m"
export PATH="$PATH:$HOME/.local/bin:$HOME/bin/"

# --- Aliases ---

alias vi="vim"

alias cal="cal -m"

alias nf="neofetch"

alias ls="ls --color=auto -h"
alias l="ls -AS"
alias ll="ls -gGAhS"

alias pbcopy="xclip -sel clip"
alias pbpaste='xclip -selection clipboard -o'
