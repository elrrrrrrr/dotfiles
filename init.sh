#!/bin/zsh

install_prezto() {
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    [ ! -e "${ZDOTDIR:-$HOME/.${rcfile:t}}" ] && ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
}

install_nvm() {
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | zsh
}

install_vim_plug() {
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}


entry() {
  install_prezto;
  install_nvm;
  install_vim_plug;
  zsh;
}

entry;
