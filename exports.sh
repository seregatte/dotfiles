#!/usr/bin/env bash

export EDITOR=vim

export AWS_PROFILE=itelios_seregatte

export GOPATH="$HOME/Go"

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to the command you use for todo.txt-cli
export TODO="t"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH="$PATH:/opt/ngrok"
export PATH="$PATH:/opt/sculpin"
export PATH="$PATH:/opt/composer"

export ZZOFF=""  # desligue funcoes indesejadas
export ZZPATH="/opt/zz/funcoeszz"  # script
export ZZDIR=""    # pasta zz/

if [ -f "$DOTFILES_SIMLYNK_HOME/.exports.sh" ];
then
  source "$DOTFILES_SIMLYNK_HOME/.exports.sh"
fi