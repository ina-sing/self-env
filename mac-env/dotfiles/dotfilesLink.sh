#!/bin/sh
# dotfilesの格納場所
BASE_PATH=$(cd $(dirname $0); pwd)
echo $BASE_PATH

ln -sf $BASE_PATH/.vimrc ~/.vimrc
ln -sf $BASE_PATH/.gitconfig ~/.gitconfig
ln -sf $BASE_PATH/bundle ~/.vim
ln -sf $BASE_PATH/refs ~/.vim
ln -sf $BASE_PATH/.netrwhist ~/.vim
ln -sf $BASE_PATH/dictionary ~/.vim
ln -sf $BASE_PATH/.bash_profile ~/.bash_profile
ln -sf $BASE_PATH/.bashrc ~/.bashrc
ln -sf $BASE_PATH/.zsh ~/.zsh

ln -sf $BASE_PATH/.zsh/.zshenv ~/.zshenv
