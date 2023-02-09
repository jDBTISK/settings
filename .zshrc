# 日本語を使用
export LANG=ja_JP.UTF-8

# git 設定
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
  source ${HOME}/.zsh/git-prompt.sh
fi
fpath=(~/.zsh $fpath)
if [ -f ${HOME}/.zsh/git-completion.bash ]; then
  zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fi
# 保管機能有効化
autoload -Uz compinit && compinit -i

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST
PS1="%F{cyan}%n%f %F{yellow}[%/]%f%F{magenta}$(__git_ps1)"$'\n'"%f%F{blue}$%f "

# 色を使用
autoload -Uz colors && colors

# starship
if which starship > /dev/null; then
  eval "$(starship init zsh)"
fi

# pyenv
if which pyenv > /dev/null; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init - zsh)"
fi

# poetry
export PATH="$HOME/.local/bin:$PATH"

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

# psycopg2
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt extended_history

# aliases
alias ls='lsd'
alias ll='ls -lhAF'
alias lt='ll --tree'
alias history='history -Di'

# よく使うコマンドを簡略化
alias vish='vim ~/.zshrc'
alias sosh='source ~/.zshrc'
alias cdd='cd ~/Downloads/'

# 自分の IP 取得
alias myip='curl ifconfig.io -4'

# Finder で開いているディレクトリに移動
function cd_open_finder() {
  cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
}
alias cdf=cd_open_finder
