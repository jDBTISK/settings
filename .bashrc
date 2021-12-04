# 日本語を使用
export LANG=ja_JP.UTF-8

# git 設定
source $HOME/.bash/.git-completion.bash
source $HOME/.bash/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

PS1='\e[36m\]\u \e[33m\][\w]\e[35m\]$(__git_ps1) \e[36m\]\$ \e[0m\]'

# history
HISTTIMEFORMAT='%F %T '
HISTSIZE=1000
HISTFILESIZE=2000

# 色
case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# pyenv
PYENV_ROOT="${HOME}/.pyenv"
PATH="${PYENV_ROOT}/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
if which nodenv > /dev/null; then
  eval "$(nodenv init - --no-rehash)"
fi

# awscli v2
complete -C '/usr/local/bin/aws_completer' aws

# terraform
export TF_LOG=TRACE
export TF_LOG_PATH='./terraform.log'

# aliases
alias ll='ls -lhAF'

alias vish='vim ~/.bashrc'
alias sosh='source ~/.bashrc'

# コンテナ一括削除
alias rmdocker='docker rm $(docker ps -aq)'
