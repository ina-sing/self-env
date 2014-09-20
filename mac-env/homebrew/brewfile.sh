#!/bin/sh# Make sure using latest Homebrew
brew update

# Update already-installed formula
brew upgrade

# Add Repository
brew tap phinze/homebrew-cask || true
brew tap homebrew/binary || true

# Packages for development
brew install zsh
brew install git
brew install vim

# Packages for brew-cask
brew install brew-cask

# .dmg from brew-cask
brew cask install google-chrome
#cask install virtualbox
#cask install vagrant

# Remove outdated versions
brew cleanup
