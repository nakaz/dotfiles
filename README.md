# Dotfiles
:house_with_garden: dotfiles configuration

![Screenshot](http://i.imgur.com/Fv4Dqdf.png)

## Installation
``` bash
git clone https://github.com/epilande/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source ./install/link.sh
source ./install/brew.sh
source ./install/brew-cask.sh
```

## tmux
- `brew install tmux`
- `brew install reattach-to-user-namespace`

#### Nerd fonts for vim-devicons
``` bash
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
```

### Neovim
```bash
# nvm
:PlugInstall
```

#### Node
```bash
npm -g install instant-markdown-d eslint jsonlint stylelint
```

### Todo
Shoutout to my man [@epilande](https://github.com/epilande) -- and the *real*
[.dotfiles](https://github.com/epilande/dotfiles) -- from for all the support
and patience!

