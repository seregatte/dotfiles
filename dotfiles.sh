#!/usr/bin/env bash

# Only set $DOTFILES_HOME if it's not already set
if [ -z "$DOTFILES_HOME" ];
then
  export DOTFILES_HOME=${HOME}/.dotfiles
fi

if [ -z "$DOTFILES_SIMLYNK_HOME" ];
then
  export DOTFILES_SIMLYNK_HOME="${HOME}/Google Drive/Dotfiles"
fi

source "$DOTFILES_HOME"/init.sh
