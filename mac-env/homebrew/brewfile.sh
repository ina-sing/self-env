#!/bin/sh# Make sure using latest Homebrew
brew update

# Update already-installed formula
brew upgrade

# Add Repository
brew tap caskroom/homebrew-cask
brew tap homebrew/binary
brew tap supermomonga/homebrew-splhack
brew tap caskroom/versions
brew tap caskroom/homebrew-versions

# Packages for development
brew install zsh
brew install git
brew install emacs
brew install vim
brew install --HEAD macvim-kaoriya
brew install ricty
brew install java

brew install autoconf
brew install curl
brew install freetype
brew install jpeg
brew install lynx
brew install pkg-config
brew install tree
brew install bsdmake
brew install curl-ca-bundle
brew install gdbm
brew install libevent
brew install openssl
brew install proctools
brew install ruby-build
brew install wget
brew install coreutils
brew install fontconfig
brew install gettext
brew install libpng
brew install pcre
brew install rbenv
brew install tig
brew install xz
brew install ctags
brew install fontforge
brew install libtiff
brew install pear
brew install readline
brew install tmux

# Packages for brew-cask
brew install brew-cask

# .dmg from brew-cask

# browser
brew cask install google-chrome
brew cask install firefox

# develop
brew cask install iterm2
brew cask install phpstorm
brew cask install intellij-idea
brew cask install virtualbox
brew cask install vagrant
brew cask install sublime-text3
brew cask install sourcetree
brew cask install caskroom/versions/java7

# utility
brew cask install alfred
brew cask install calibre
brew cask install dropbox
brew cask install evernote
brew cask install Karabiner
brew cask install bettertouchtool
brew cask install clipmenu
brew cask install google-japanese-ime
brew cask install filezilla
brew cask install coteditor
brew cask install onepassword
brew cask install appcleaner
brew cask install mplayerx
brew cask install sophos-anti-virus-home-edition
#cask install parallels
brew cask install cheatsheet
brew cask alfred link

# Remove outdated versions
brew cleanup
brew cask cleanup
