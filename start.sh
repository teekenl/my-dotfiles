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

# install docker
brew cask install docker

# install oh-my-zsh for zsh configuration.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# print out zsh version
zsh  --version

# upgrade to get latest features
# upgrade_oh_my_zsh

# install nerd-font so that we can use NerdFont Awesome Icons.
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# install necessary custom plugins to beautify the iterm shell
# install PowerLevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# install ZSH Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# load zsh configuration
ln .zshrc ~/.zshrc
source ~/.zshrc

# create symbolink to ~/.tmux.confg
ln tmux.conf ~/.tmux.conf

# source tmux.conf
tmux source-file ~/.tmux.conf

# load git configuration 
ln ./.gitconfig ~/.gitconfig

# print out yarn --version
yarn --version

# install http-server
yarn global add http-server

# install vim plugin package manager 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim

# load vim configuration
ln .vimrc ~/.vimrc

# print out python version
python -v

# Install Pip (Python package manager)
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

# print out pip version and remove its installer.
pip3 --version
rm get-pip.py

# Upgrade version
pip3 install --upgrade pip

# Install jupyter notebook
pip3 install jupyter

# Install packages for machine learning
pip3 install scikit-learn scipy pandas matplotlib