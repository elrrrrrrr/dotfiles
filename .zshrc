#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "$HOME/.bash_profile" ]]; then
  source "$HOME/.bash_profile"
fi

# Customize to your needs...
alias v="vim"
alias c="clear"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export NODE_PATH=`npm -g root`
