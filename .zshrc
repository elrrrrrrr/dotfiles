# 加载 prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# 加载 alias-tip
source "$HOME/.zprezto/plugins/alias-tips/alias-tips.plugin.zsh"
# alias-tip 提示语
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Cloud try : "

# 配置快捷键
alias vim="/usr/local/bin/vim"
alias v="vim"
alias vp="vim package.json"

# node 配置 nvm 太慢了
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist
source $(brew --prefix nvm)/nvm.sh

# 设置默认编辑器
export EDITOR=vim

eval "$(fasd --init auto)"
stty -ixon

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
