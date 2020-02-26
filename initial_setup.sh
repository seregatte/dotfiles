#!/usr/bin/env bash

source $(pwd)/dotfiles.sh

brew -v || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd $(pwd)/brew
brew bundle -v
cd -


