#!/usr/bin/env bash

source "$DOTFILES_HOME"/exports.sh
source "$DOTFILES_HOME"/aliases.sh
for f in "$DOTFILES_HOME"/functions/*.sh; do source "$f"; done

# Load zz functions (https://funcoeszz.net/) if installed.
if [ -f "$ZZPATH" ];
then
  source "$ZZPATH"
fi

find "$DOTFILES_SIMLYNK_HOME" -type d -maxdepth 1 -mindepth 1 -exec ln -sf {} $HOME \; 2> /dev/null
for f in "$DOTFILES_HOME"/init/*/main.sh; do source "$f"; done

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
test -e "${HOME}/.sdkman/bin/sdkman-init.sh" && source "${HOME}/.sdkman/bin/sdkman-init.sh"
