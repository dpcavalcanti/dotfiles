#!/usr/bin/env bash

checkout() {
  [ -d "$2" ] || git clone "$1" "$2"
}

checkout "git://github.com/dpcavalcanti/dotfiles.git" "$HOME/.dotfiles"

if [ -f $HOME/.bash_profile ]; then
  echo source $HOME/.dotfiles/bash_profile.bash >> $HOME/.bash_profile
else
  ln -s $HOME/.dotfiles/bash_profile.bash $HOME/.bash_profile
fi

if [ -f $HOME/.bashrc ]; then
  echo source $HOME/.dotfiles/bashrc.bash >> $HOME/.bashrc
else
  ln -s $HOME/.dotfiles/bashrc.bash $HOME/.bashrc
fi