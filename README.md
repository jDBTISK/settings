# setting

## Overview

設定ファイル共有用リポジトリ

## Description

新しいマシンを使う時設定の引き継ぎが面倒だったので設定ファイルあるやつはなるべくこれで共有出来るようにした。

とは言ってもどうしてもパスとか環境に依存するものがあるので限度はある。

### .zshrc

- `git` コマンド補完に `git-completion`
- プロンプトに `git` の追加情報を表示可能にするために `git-prompt`
- `docker` コマンド補完に `_docker`
- `docker-compose` コマンド補完に `_docker-compose`

を使っているのでローカルに落としておく必要あり

```bash
mkdir -p ~/.zsh
cd ~/.zsh
curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
curl -o _docker https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker
curl -o _docker-compose https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose
```

その他に

- `pyenv`
- `rbenv`
- `pear`
- `nodenv`
- `awscli v2`
- `tfenv`

の設定があるがインストールしてないと意味ないのでその辺は環境に合わせて消す

`alias` は自作のシェルを実行するものもあるので結構省いてる。

### .vimrc

パッケージ管理に `Vundle` を使うのでこいつを clone しておく必要あり

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### vim コマンドメモ

- タブ移動: `Ctrl + w` → `(h|j|k|l)`
- ツリービュー表示: `Ctrl + n`

### iterm

#### profiles

`${}` で囲まれている箇所は環境に合わせて変える

#### iterm コマンドメモ

- タブ横分割: `cmd + d`
- タブ縦分割: `cmd + D`
- パネル移動: `cmd + ([|])`

### .lima

```bash
brew install lima
vi ~/.lima/docker/lima.yaml
export DOCKER_HOST=ssh://localhost:60006
```
