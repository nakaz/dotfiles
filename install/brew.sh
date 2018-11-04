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

brew install awscli
brew install fzf
brew install git
brew install go
brew install hub
brew install kubernetes-cli
brew install kubernetesh-helm
brew install neovim/neovim/neovim
brew install nvm
brew install pianobar
brew install ranger
brew install reattach-to-user-namespace
brew install tree
brew install tmux
brew install wget
brew install zsh

brew cleanup
