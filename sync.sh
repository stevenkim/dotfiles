#!/bin/sh

files="
bashrc
gitconfig
git-prompt.sh
tmux.conf
vim
vimrc
"
backup_dir=~/dotfiles_backup

mkdir -p $backup_dir

for file in $files; do
  if [ -e ~/.$file ] && [ ! -h ~/.$file ]; then
    mv ~/.$file ~/dotfiles_backup/.$file
    echo "backing up ~/.$file"
  fi
  ln -s ~/dotfiles/.$file ~/.$file
  echo "symlinking ~/.$file"
done

