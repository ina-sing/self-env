#!/bin/bsh

# for Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"

eval "$(rbenv init -)"

# for Terminal
PS1="[\u@\h \W]$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#alias vi='vim'
alias ll='ls -ltr'
