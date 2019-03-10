#!/bin/bash -e

DIR=$(cd $(dirname $0); pwd)

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install google chrome
brew cask install google-chrome

# install spectacle
brew cask install spectacle

# install flycut
brew cask install flycut

# install iterm2
brew cask install iterm2

# install z
brew install z

# install zsh
brew install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh-config
cp $DIR/zshrc $HOME/.zshrc

# configure git
git config --global core.editor "vim"
git config --global user.name "Nick Webb"
git config --global user.email "nwebb@pivotal.io"

# install sublime-text
brew cask install sublime-text

# install wget
brew install wget

# install watch
brew install watch

# install ag
brew install ag

# install tree
brew install tree

# install ccat
brew install ccat
