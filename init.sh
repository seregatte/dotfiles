#!/usr/bin/env bash

source "$DOTFILES_HOME"/exports.sh
source "$DOTFILES_HOME"/functions/*.sh

find "$DOTFILES_SIMLYNK_HOME" -type d -maxdepth 1 -mindepth 1 -exec ln -sf {} $HOME \;
