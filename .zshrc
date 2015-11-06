# 加载 prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# 加载 bash_profile
source "$HOME/.bash_profile"

# 加载 Z
source `brew --prefix`/etc/profile.d/z.sh

# 加载 alias-tip
source "$HOME/.zprezto/plugins/alias-tips/alias-tips.plugin.zsh"
# alias-tip 提示语
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Cloud try : "

# 配置快捷键
alias vim="/usr/local/bin/vim"
alias v="vim"
alias h="vim -S ~/.vim/a\&c"
alias c="clear"

# node 配置 nvm 太慢了
export PATH=$PATH:$HOME/.nvm/versions/node/v4.1.1/bin

# 设置默认编辑器
export EDITOR=vim

