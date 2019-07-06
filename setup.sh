#!/bin/bash

DATE=$(date +%d-%m-%y)
BACKUP_SUFFIX=backup_$DATE
DIR=$(pwd)

# Backup current files
mv ~/.bashrc ~/.bashrc_$BACKUP_SUFFIX
mv ~/.tmux.conf ~/.tmux.conf_$BACKUP_SUFFIX
mv ~/.vimrc ~/.vimrc_$BACKUP_SUFFIX
mv ~/.config/i3 ~/.config/i3_$BACKUP_SUFFIX
mv ~/.config/i3blocks ~/.config/i3blocks_$BACKUP_SUFFIX

# Create symlinks
ln $DIR/.bashrc ~/.bashrc
ln $DIR/.tmux.conf ~/.tmux.conf
ln $DIR/.vimrc ~/.vimrc

ln -s $DIR/i3 ~/.config/i3/
ln -s $DIR/i3blocks ~/.config

echo "Diretorio $DIR"

# TODO : set $DOTFILES location based on $pwd

source ~/.bashrc
