# for Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for shortcut command
alias vi='vim'
alias ll='ls -ltr'

# for Terminal(iTerm2)
PS1="[${USER}@${HOST%%.*} %1~]%(!.#.$) "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR='subl -w'

# history
HISTFILE=~/.zsh_history # historyファイル
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt inc_append_history
setopt share_history

## コマンドのオプションを強力に補完
autoload -U compinit
compinit

## For MacVim
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
