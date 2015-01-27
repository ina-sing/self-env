#!/usr/bin/sh

# update Brewfile.sh
ruby setup.rb Brewfile > brewfile.sh
chmod +x brewfile.sh

# setup
sh brewfile.sh

# for vim NeoBundle
mkdir -p ~.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

