#!/usr/bin/env bash
#
# Install Homebrew
#
echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#configuring Brewfile to global
ln -s ${HOME}/.dotfiles/homebrew/Brewfile ${HOME}/.Brewfile

#TODO: Install bash, fuse, and ntfs-3g and configure autocd (shopt options)
echo "Installing basic apps (Docker, virtualbox, hashicorp's apps, etc) from brew..."
brew bundle --global

#Install Bash
