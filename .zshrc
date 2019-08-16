#
inclue () {
  [[ -f "$1" ]] && source "$1"
}
# # 加载 prezto
inclue "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#
# # 加载 alias-tip
inclue "$HOME/.zprezto/plugins/alias-tips/alias-tips.plugin.zsh"
# alias-tip 提示语

# source "$HOME/.zplug/init.zsh"
# source "$HOME/.zplugrc"

export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Cloud try : "

export TERM=xterm-256color

# 配置快捷键
# [ -f /usr/local/bin/vim ] && alias vim="/usr/local/bin/vim"
alias vim="v"
alias c="clear"
alias gssh="luit -encoding gbk ssh"
alias h="tldr"
alias n="~/nvim-osx64/bin/nvim"
alias v="~/nvim-osx64/bin/nvim"
alias vp="v package.json"
alias np="n package.json"

# node 配置 nvm 太慢了
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist
which brew > /dev/null
if [ "$?" -eq 0 ]; then
  source $(brew --prefix nvm)/nvm.sh
fi

# 设置默认编辑器
export EDITOR=nvim

eval "$(fasd --init auto)"
stty -ixon

export NVM_DIR="$HOME/.nvm"


[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

inclue "$HOME/.bash_profile"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
