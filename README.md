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
- `nodebrew`
- `awscli v2`
- `terraform`

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

### vscode

`settings.json` を持っておこうと思ったけど設定の同期機能の存在に気づいたので拡張機能のメモだけ

#### extensions

| #  | class     | name | description |
| -  | --------- | ---- | ----------- |
|  1 | vscode    | MS-CEINTL.vscode-language-pack-ja | 日本人なら入れる |
|  2 | vscode    | alefragnani.project-manager | プロジェクト管理 |
|  3 | vscode    | vscode-icons-team.vscode-icons | 拡張子に合わせたファイルアイコンにする |
|  4 | vscode    | PKief.material-icon-theme | 上のやつだけじゃ足りてないので |
|  5 | vscode    | alefragnani.Bookmarks | ブックマーク機能 |
|  6 | vscode    | cssho.vscode-svgviewer | SVG ファイルを見れるようにする |
|  7 | vscode    | IBM.output-colorizer | ターミナルの出力の色付け |
|  8 | vscode    | humao.rest-client | HTTPリクエストを VSCode 上でやる。API の確認とかに便利 |
|  9 | vscode    | chrmarti.regex | 正規表現のテスト |
| 10 | vscode    | CoenraadS.bracket-pair-colorizer-2 | カッコの色を階層によって変化 |
| 11 | vscode    | sohamkamani.code-eol | 改行コード可視化 |
| 12 | vscode    | oderwat.indent-rainbow | インデントの階層毎に色分け |
| 13 | vscode    | esbenp.prettier-vscode | フォーマット |
| 14 | vscode    | wayou.vsconde-todo-highlight | TODO とか FIXME の強調 |
| 15 | vscode    | Gruntfuggly.todo-tree | TODO コメントのツリー表示 |
| 16 | vscode    | mosapride.zenkaku | 全角スペースのハイライト |
| 17 | vscode    | ionutvmi.path-autocomplete | パス補完 |
| 18 | vscode    | shardulm94.trailing-spaces | 行末尾の空白強調 |
| 19 | vscode    | vincaslt.highlight-matching-tag | 選択中のタグに対応するタグのハイライト |
| 20 | vscode    | mikestead.dotenv | .env ファイルの色付け |
| 21 | html      | formulahendry.auto-close-tag | 閉じタグの挿入を自動化 |
| 22 | html      | formulahendry.auto-rename-tag | タグの片方を直したら対応するタグも自動修正 |
| 23 | css       | olback.es6-css-minify | js, css の minify |
| 24 | js        | stevencl.addDocComments | jsdoc の入力補助 |
| 25 | js        | dbaeumer.vscode-eslint | ESLint を VSCode で動かす |
| 26 | python    | ms-python.python | python 使うなら入れる |
| 27 | python    | kiteco.kite | python の強い入力補助 |
| 28 | python    | ms-toolsai.jupyter | vscode 上で jupyter 動かせる |
| 29 | python    | kiteco.kite | 強い入力補助 |
| 30 | python    | njpwerner.autodocstring | pydoc の入力補助 |
| 31 | php       | felixfbecker.php-intellisense | php の入力補助 |
| 32 | php       | neilbrayfield.php-docblocker | phpdoc の入力補助 |
| 33 | php       | ifi2k.format-html-in-php | php ファイル中の html のフォーマット |
| 34 | sh        | foxundermoon.shell-format | shell script のフォーマット |
| 35 | sql       | adpyke.vscode-sql-formatter | SQL のフォーマット |
| 36 | csv       | mechatroner.rainbow-csv | CSV の色付け |
| 37 | git       | eamodio.gitlens | git の補助色々 |
| 38 | docker    | ms-azuretools.vscode-docker | docker 使うなら入れる |
| 39 | log       | emilast.LogFileHighlighter | ログファイルに色付けしてくれる |
| 40 | terraform | hashicorp.terraform | Terraform 使うなら入れる |
| 41 | terraform | erd0s.terraform-autocomplete | Terraform の入力補助 |
| 42 | markdown  | yzhang.markdown-all-in-one | markdown のショートカット一式 |
| 43 | markdown  | shd101wyy.markdown-preview-enhanced | マークダウン中に PlantUML とか色々埋め込んでプレビュー出来る |
| 44 | markdown  | DavidAnson.vscode-markdownlint | linter |
| 45 | markdown  | yzane.markdown-pdf | マークダウンを PDF とか HTML とかで出力出来る |
| 46 | uml       | jebbs.plantuml | PlantUML 使うなら入れる |
| 47 | drawio    | hediet.vscode-drawio | VSCode で drawio 書けるようになる |

- linter とか formatter 整えたい。
