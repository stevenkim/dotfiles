#!/bin/sh

files="
gitconfig
tmux.conf
vim
vimrc
"
backup_dir=~/dotfiles_backup

mkdir -p $backup_dir

for file in $files; do
  mv ~/.$file ~/dotfiles_backup/.$file
  ln -s ~/dotfiles/.$file ~/.$file
done

