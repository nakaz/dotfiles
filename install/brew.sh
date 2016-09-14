#!/bin/bash

# Install command-line tools using Homebrew

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade installed formulae
brew upgrade

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

brew install wget
brew install tree
brew install fzf
brew install tmux
brew install neovim/neovim/neovim
brew install zsh
brew install nvm
brew install ranger
brew install pianobar
brew install reattach-to-user-namespace

brew cleanup
