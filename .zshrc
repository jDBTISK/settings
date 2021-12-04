# 日本語を使用
export LANG=ja_JP.UTF-8

# 保管機能有効化
autoload -Uz compinit && compinit -i

# git 設定
fpath=(~/.zsh $fpath)
if [ -f ${HOME}/.zsh/git-completion.bash ]; then
  zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fi

if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
  source ${HOME}/.zsh/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST
PS1='%F{cyan}%n%f %F{yellow}[%/]%f%F{magenta}$(__git_ps1) %f%F{cyan}$%f '

# 色を使用
autoload -Uz colors && colors

# 他のターミナルとヒストリーを共有
setopt share_history

# pyenv
if which pyenv > /dev/null; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init - zsh)"
fi

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init - zsh)"
fi

# pear
export PATH=$HOME/pear/bin:$PATH

# nodenv
if which nodenv > /dev/null; then
  eval "$(nodenv init - --no-rehash)"
fi

# awscli v2
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws
alias ssm='aws ssm start-session --document-name AWS-StartInteractiveCommand --parameters command=/bin/bash --target'

# terraform
export TF_LOG=DEBUG
export TF_LOG_PATH="$HOME/terraform.log"

export PATH="$HOME/.tfenv/bin:$PATH"

# aliases
alias ll='ls -lhAF'
alias history='history -Di'

# よく使うコマンドを簡略化
alias vish='vim ~/.zshrc'
alias sosh='source ~/.zshrc'
alias cdd='cd ~/Downloads/'

# コンテナ一括削除
alias rmdocker='docker rm $(docker ps -aq)'
