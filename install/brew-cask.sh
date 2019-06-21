#!/bin/bash

# to maintain cask...
#   brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

brew tap caskroom/cask

brew cask install 1password
brew cask install alfred
brew cask install aerial
brew cask install bettertouchtool
brew cask install dash
brew cask install docker
brew cask install firefox
brew cask install google-chrome
brew cask install gpgtools
brew cask install istat-menus
brew cask install iterm2
brew cask install karabiner-elements
brew cask install kap
brew cask install keybase
brew cask install licecap
brew cask install postman
brew cask install slack
brew cask install spotify
brew cask install sketch
brew cask install spectacle
brew cask install tower
brew cask install visual-studio-code
brew cask install vlc

# https://github.com/sindresorhus/quick-look-plugins
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link cask apps to alfred
brew cask alfred link
