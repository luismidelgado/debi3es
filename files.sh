#!/bin/sh
shopt -s dotglob
cp -r dotfiles/etc /
cp -r dotfiles/home/* /home/$1 --no-preserve=ownership
chown -R $1:$1 /home/$1
