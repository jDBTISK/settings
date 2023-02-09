# setting

## Overview

設定ファイル共有用リポジトリ

## Description

新しいマシンを使う時設定の引き継ぎが面倒だったので設定ファイルあるやつはなるべくこれで共有出来るようにした。

とは言ってもどうしてもパスとか環境に依存するものがあるので限度はある。

### .zshrc

- `git` コマンド補完に `git-completion`
- プロンプトに `git` の追加情報を表示可能にするために `git-prompt`

を使っているのでローカルに落としておく必要あり

```bash
mkdir -p ~/.zsh
cd ~/.zsh
curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
```

その他に

- `pyenv`
- `nodenv`
- `awscli v2`
- `tfenv`
- `starship`
- `lsd`

の設定があるがインストールしてないと意味ないのでその辺は環境に合わせて消す

`alias` は自作のシェルを実行するものもあるので結構省いてる。

### starship

```bash
brew install starship
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

### .vimrc

パッケージ管理に `Vundle` を使うのでこいつを clone しておく必要あり

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### vim コマンドメモ

- タブ移動: `Ctrl + w` → `(h|j|k|l)`
- ツリービュー表示: `Ctrl + n`
