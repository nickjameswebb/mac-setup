#!/bin/bash -e

DIR=$(cd $(dirname $0); pwd)

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install spectacle
brew cask install spectacle

# install flycut
brew cask install flycut

# install iterm2
brew cask install iterm2

# install z
brew install z

# configure git
git config --global core.editor "vim"
git config --global user.name "Nick Webb"
git config --global user.email "nwebb@vmware.com"
