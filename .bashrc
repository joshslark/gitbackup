#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"

alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias vim='gvim -v'

PS1='[\u@\h \W]\$ '
complete -cf sudo
complete -cf man
archey

function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}
