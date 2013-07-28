" my common settings
:set nocompatible
:set background=dark
:syntax on
:set number
:set tabstop=4
:set shiftwidth=4
:set incsearch
:set hidden
:filetype plugin on

" refer to :help filetype
:filetype on
" disable cindent when you want to use smartindent.
:set nocindent
:set smartindent
:filetype indent on
" refer to :help ftplugins
:filetype plugin on

" insert CTRL-V to avoid #b or #e is expanded.
":abbreviate #b /**********************************************************
":abbreviate #e <space>**********************************************************/


" my key mappings
:map <C-l> :bnext<CR>
:map <C-k> :bprevious<CR>

set expandtab                          " タブ文字の代わりに同じ幅の空白文字を入れる
set tabstop=4                          " タブ文字の表示幅
set shiftwidth=4                       " 「>>」,「<<」操作のシフト幅
set autoindent                         " ENTER 時に自動でインデント
set smartindent                        " 賢い自動インデント

set list                               " タブ文字、改行文字の表示
set listchars=tab:>-,trail:.,extends:> " list 表示の時の文字指定

set incsearch                          " サーチをインクリメンタルサーチにする
set ignorecase                         " 検索で大小文字を区別しない
set smartcase                          " 検索文字に大文字が含まれる場合は大文字小文字を区別する
set wrapscan                           " 検索でファイル終端に来たら先頭に戻る
"set hlsearch                          " 検索結果文字列のハイライト

set showmatch                          " 入力時に対応する括弧を表示
"set wildmode=list                     " 補完動作の設定
set wildmenu                           " 補完候補を表示
set backspace=indent,eol,start         " 行頭(indent), 改行(eol), 挿入モードの開始位置(start)での空白の削除を許す
"set encoding=japan                    " vim が通常使用する文字エンコーディング
set iminsert=0                         " 入力モードでのIMEのデフォルト状態
set imsearch=0                         " 検索モードでのIMEのデフォルト状態
set wrap                               " 行末で折り返す
set shortmess+=I                       " C-g で表示されるファイル情報のフォーマット
set showcmd                            " 入力中のコマンドをステータスに表示
set showmode                           " INSERTなどのステータスを表示する
set number                             " 行番号の表示
set notitle                            " タイトルバーに編集中のファイル名などを表示
set ruler                              " カーソル位置情報を表示
set noequalalways                      " ウィンドウを分割したり閉じたりした時にリサイズしない
set nobackup                           " バックアップファイルを作らない
set shortmess+=I                       " 起動時のメッセージを消す
set history=9999
"set cursorline                         " カーソルライン

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

syntax on

" カラースキーム
colorscheme mycolor

let s:hostName = hostname()
let s:user = system("id -un")

" タグ
"let s:hostName_s = substitute(system("hostname -s"), "\n$", "", "")
set tags=${HOME}/tmp/tags/cscope.out,${HOME}/tmp/tags/ctags.tag
" パス
set path=.\ ~/\ /home/y/share/pear

" 内蔵のtermcapファイルを使う
"if substitute(system("uname","\n$","","") ==? "freebsd"
"       set term=builtin_cons25
"elseif substitute(system("uname"), "\n$", "", "") ==? "linux"
"       set term=builtin_linux
"elseif has("unix")
"       set term=builtin_xterm
"endif

"if (substitute(s:user, "\n$", "", "") == $USER) && (s:hostName =~ '\(\w\+\.\(dev\|miniy\|podcast\.tnz\)\|mix4\.geo\.bbt\)')
"   set term=vt100
"else
"   set term=builtin_cons25
"endif

:set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932
:set enc=utf-8


"-----------------------------------------------------------------------------
" オートコマンド
"
if has("autocmd")
    " プラグイン、ファイルタイプ別インデントを有効
    filetype plugin indent on
    " textファイルのカラムを78に設定
    "autocmd FileType text setlocal textwidth=78
    " カーソル位置を記憶しておく
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    "PHP辞書ﾌｧｲﾙ
    "autocmd FileType php set dictionary+=${HOME}/files/misc/dict/php.dict
    "set complete=.,w,k
endif " has("autocmd")


"-----------------------------------------------------------------------------
" Function定義
"
" GetStatusEx
" ステータス表示用function
"function! GetStatusEx()
"   let str = '['
"   if has('multi_byte') && &fileencoding != ''
"       let str = str . &fileencoding . ':'
"   endif
"   let str = str . &fileformat . ']'
"   return str
"endfunction

" C-h でハイライトをToggle
"nmap <C-H> :call ToggleHighlight()<CR>
"function! ToggleHighlight()
"   if &hlsearch != ''
"       set nohlsearch
"   else
"       set hlsearch
"   endif
"endfunction
nmap <C-H> :se hls!<CR>



"-----------------------------------------------------------------------------
"ステータスラインに表示する項目の指定
"set statusline=%y%{GetStatusEx()}%F%m%r%=<%c:%l>
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position


"-----------------------------------------------------------------------------
" マップ定義
map [[ ?{w99[{ 
map ][ /}b99]} 
map ]] j0[[%/{ 
map [] k$][%?}

" <F2>-<F4>は機能せず
"map <F2> <ESC>:bp<CR>
"map <F3> <ESC>:bn<CR>
"map <F4> <ESC>:bw<CR>
map <F5> <ESC>:bd<CR>
map <F6> :!grep  *<CR>
map <F7> :Tlist<CR>
"map <F9> :set term=builtin_cons25<CR>
"map <F10> <ESC>:set paste<CR>
"map <F11> <ESC>:set nopaste<CR>
"imap <F10> <C-O>:set paste<CR>
"imap <F11> <nop>
set pastetoggle=<F12>

" 表示行単位で行移動するようにする
nnoremap j gj
nnoremap k gk
" [home][end]を有効に
nmap [1~ ^
nmap [4~ $
imap [1~ ^
imap [4~ $
"imap a a
"imap i i
"imap o o

" 挿入モード時のCTRL-B/Fでのページ送りを有効に
imap  
imap  

" 検索した語が中央に来るように
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz 
nmap g# g#zz

"-----------------------------------------------------------------------------
" 略語補完
iabbrev y #ifdef YAHOO_JP
iabbrev l #else
iabbrev e #endif

iabbrev y //YJP  t.yamoto [] -
iabbrev t //t.yamoto [] -
iabbrev s /****************************************
iabbrev e <Space>****************************************/

"-----------------------------------------------------------------------------
" オムニ補完
set completeopt=menu
"<C-g>でomni補完
imap <C-j> <C-x><C-o>

"-----------------------------------------------------------------------------
" 差分表示設定
set diffexpr=IgnoreSpaceDiff()
function IgnoreSpaceDiff()
    let opt = ""
    if &diffopt =~ "icase"
        let opt = opt . "-i "
    endif
    if &diffopt =~ "iwhite"
        let opt = opt . "-b "
    endif
    silent execute "!diff --ignore-all-space -a " . opt .
                \  v:fname_in . " " . v:fname_new .
                \  " > " . v:fname_out
endfunction


"-----------------------------------------------------------------------------
" スクリプト設定

"--- minibufexpl.vim ---
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplMaxHeight = 1
"nmap <Space> :MBEbn<CR>
" GNU screen likeなキーバインド
let mapleader = ""
"nnoremap <Leader><Space> :MBEbn<CR>
"nnoremap <Leader>n       :MBEbn<CR>
"nnoremap <Leader><C-n>   :MBEbn<CR>
"nnoremap <Leader>p       :MBEbp<CR>
"nnoremap <Leader><C-p>   :MBEbp<CR>
"nnoremap [C            :bn<CR>
"nnoremap [D            :bp<CR>
"nnoremap <Leader><Space> :bn<CR>
"nnoremap <Leader><BS>    :bp<CR>
"nnoremap <Leader>n       :bn<CR>
"nnoremap <Leader>p       :bp<CR>
"nnoremap <Leader>c       :new<CR>
"nnoremap <Leader>k       :bd<CR>
"nnoremap <Leader><C-w>   :ls<CR>
"nnoremap <Leader>1   :e #1<CR>
"nnoremap <Leader>2   :e #2<CR>
"nnoremap <Leader>3   :e #3<CR>
"nnoremap <Leader>4   :e #4<CR>
"nnoremap <Leader>5   :e #5<CR>
"nnoremap <Leader>6   :e #6<CR>
"nnoremap <Leader>7   :e #7<CR>
"nnoremap <Leader>8   :e #8<CR>
"nnoremap <Leader>9   :e #9<CR>
"--- minibufexpl.vim ---
"nmap     bb :ls<CR>:buf 

"--- qbuf.vim ---
let g:qb_hotkey = "bb"

"--- mru.vim ---
"MRUのファイルリストに記録しておく最大ファイル数です。
let MRU_Max_Entries=30
"指定の正規表現にマッチするファイル名のファイルをMRUのファイルリストに記録しないようにします。
"デフォルトでは、全てのファイルを記録します。
let MRU_Exclude_Files="^/tmp/.*\|^/var/tmp/.*"
"MRUのファイルリストのウィンドウの高さの設定です。
let MRU_Window_Height=8
"MRUのファイルリストを開く時に、新規のウィンドウに表示するか、カレントのウィンドウに表示するかの設定です。
"デフォルトでは、新規のウィンドウに表示します。
let MRU_Use_Current_Window=0
"MRUのファイルリストからファイルをEnterキーで選択した時に、ファイルリストのウィンドウを閉じるかどうかの設定です。
"デフォルトではファイル選択時にウィンドウを閉じます。
let MRU_Auto_Close=1


"--- yankring.vim ---
let g:yankring_max_history = 50


"--- omnicppcomplete.vim ---
"set nocp
"set completeopt=menu
"let OmniCpp_NamespaceSearch = 2
""<C-g>でomni補完
"imap <C-g> <C-x><C-o>


let php_folding=1
"au Syntax php set fdm=syntax

" 開いているファイルの文字コードを指定して開きなおす
" EUC-JP
nmap ,ee :e ++enc=euc-jp<CR>
" SJIS
nmap ,es :e ++enc=cp932<CR>
" JIS
nmap ,ej :e ++enc=iso-2022-jp<CR>
" UTF-8
nmap ,eu :e ++enc=utf-8<CR>
