" Vundleでプラグインをインストールするための設定
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  " エディタのテーマ
  Plugin 'tomasr/molokai'
  " アイコン
  Plugin 'ryanoasis/vim-devicons'
  " インデント補助
  Plugin 'nathanaelkane/vim-indent-guides'
  " ディレクトリツリー表示
  Plugin 'preservim/nerdtree'
  " git 拡張
  Plugin 'airblade/vim-gitgutter'
  " git 拡張
  Plugin 'tpope/vim-fugitive'
  " gcc でコメントアウト切り替え
  Plugin 'tomtom/tcomment_vim'
call vundle#end()

" 行番号表示
set number

" ファイルを上書きする前にバックアップを作ることを無効化
set nowritebackup
" ファイルを上書きする前にバックアップを作ることを無効化
set nobackup
" スワップファイルを作成しない
set noswapfile

" ステータス行を常に表示
set laststatus=2
" 入力中のコマンドをステータスに表示する
set showcmd
" 補完候補の表示
set wildmenu

" 検索結果をハイライト表示
set hlsearch
" インクリメンタルサーチ
set incsearch
" 全角文字専用の設定
set ambiwidth=double
" 省略されずに表示
set display=lastline

" 対応する括弧を強調表示
set showmatch
" タブ文字を CTRL-I で表示し、行末に $ で表示する
set list
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~

" yでコピーした時にクリップボードに入る
set guioptions+=a
set clipboard+=unnamed

" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" シンタックスハイライト
syntax on
colorscheme molokai
set t_Co=256

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" 入力モードでTabキー押下時に半角スペースを挿入
set expandtab
" インデント幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅を指定
set softtabstop=2
" ファイル内にあるタブ文字の表示幅
set tabstop=4

" ファイルの拡張子によってインデントの設定
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.htm setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.ts setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.coffee setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.java setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.php setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.erb setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.sh setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.yml setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.xml setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.sql setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.tf setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" オートインデント
set autoindent
filetype plugin indent on

" ビープ音を可視化, うざいのでコメントアウト
" set visualbell

" カーソル位置表示
set ruler
" カーソル行強調
set cursorline
" 80文字目, 120文字目にライン
set colorcolumn=80,120
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" インデントガイド
let g:indent_guides_enable_on_vim_startup = 1

" フォント
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
" フォルダアイコンを表示
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" ツリー表示
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Ctrl+n で切り替え
map <C-n> :NERDTreeToggle<CR>
" 隠しファイルを表示する
let NERDTreeShowHidden = 1

" git の変更行検知
let g:gitgutter_highlight_lines = 1
set updatetime=1000
