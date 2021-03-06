#
# CopyRight 2018 EveryOne
#
# 使用antigen插件管理器
#curl -L git.io/antigen > antigen.zsh


# 安装oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# [可选] autojump插件安装
# sudo apt-get install autojump
# git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions


source ~/.vim/antigen/antigen.zsh

# antigen插件列表
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle colored-man-pages
antigen bundle web-search
antigen bundle z
antigen bundle cp
antigen bundle extract
antigen bundle history
antigen bundle docker
antigen bundle dash

antigen apply

export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
ZSH_THEME="af-magic"
HIST_STAMPS="mm/dd/yyyy"

# 不保存重复的历史记录项
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt nonomatch

source $ZSH/oh-my-zsh.sh

# 命令别名
alias CL='clang-format-3.8 -i'
alias l='ls -alh'
alias ll='ls -lh'
alias g='git status'
alias gb='git branch -avv'
alias t='tig'
alias c='clang-format-3.8 -i'
alias vi='vim'
alias v='vim'
alias rm='trash-put'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey '^f' vi-forward-word
bindkey '^b' vi-backward-word

export FZF_DEFAULT_COMMAND='ag -g '

source ~/local.zsh

#export http_proxy="http://127.0.0.1:12333"
#export https_proxy="http://127.0.0.1:12333"
