#!/usr/bin/env bash

export EDITOR=vim
export MAVEN_HOME="/opt/apache-maven-3.6.3"

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
export PATH="$PATH:$MAVEN_HOME/bin"
export PATH="$HOME/.serverless/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin"

export ZZOFF=""  # desligue funcoes indesejadas
export ZZPATH="/opt/zz/funcoeszz"  # script
export ZZDIR=""    # pasta zz/


if [ -f "$DOTFILES_SIMLYNK_HOME/.exports.sh" ];
then
  source "$DOTFILES_SIMLYNK_HOME/.exports.sh"
fi
