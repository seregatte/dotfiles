#!/usr/bin/env bash

source "$DOTFILES_HOME"/exports.sh
source "$ZZPATH"
source "$DOTFILES_HOME"/functions/*.sh

find "$DOTFILES_SIMLYNK_HOME" -type d -maxdepth 1 -mindepth 1 -exec ln -sf {} $HOME \;
find "$DOTFILES_HOME/init" -type d -maxdepth 1 -mindepth 1 -exec bash {}\/main.sh \;

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
