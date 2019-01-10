#!/bin/bash

NODE_VERSION = "v6.14.1"

# install brew from renite shell script
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | sh

# install ruby dependency manager on stable version
curl -fsSL https://get.rvm.io | bash -s stable

# install node dependency manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

# install powrc
curl get.pow.cx | sh

nvm install $NODE_VERSION

# print out the version
brew -v

brew tap ethereum/ethereum

# install the library
brew bundle
