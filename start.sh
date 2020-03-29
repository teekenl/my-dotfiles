#!/bin/bash

NODE_VERSION = "v6.14.1"

# install x-code 
xcode-select --install
# xcode-select -r # reset xcode-select

# install brew from renite shell script
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | sh

# install ruby dependency manager on stable version
curl -fsSL https://get.rvm.io | bash -s stable

# install node dependency manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

# install fresh shell script
# curl -fsSL https://get.freshshell.com | bash
bash -c "`curl -sL https://get.freshshell.com`"

# install powrc
curl get.pow.cx | sh

nvm install $NODE_VERSION

# print out the version
brew -v

# install iterm 2 terminal shell
brew cask install iterm2

brew tap ethereum/ethereum

# install the library
brew bundle

# install oh-my-zsh for zsh configuration.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# print out zsh version
zsh  --version

# upgrade to get latest features
# upgrade_oh_my_zsh

# load zsh configuration
ln ./index.txt ~/.zshrc
source ~/.zshrc

