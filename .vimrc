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

set expandtab                          " ¥¿¥ÖÊ¸»ú¤ÎÂå¤ï¤ê¤ËÆ±¤¸Éý¤Î¶õÇòÊ¸»ú¤òÆþ¤ì¤ë
set tabstop=4                          " ¥¿¥ÖÊ¸»ú¤ÎÉ½¼¨Éý
set shiftwidth=4                       " ¡Ö>>¡×,¡Ö<<¡×Áàºî¤Î¥·¥Õ¥ÈÉý
set autoindent                         " ENTER »þ¤Ë¼«Æ°¤Ç¥¤¥ó¥Ç¥ó¥È
set smartindent                        " ¸­¤¤¼«Æ°¥¤¥ó¥Ç¥ó¥È

set list                               " ¥¿¥ÖÊ¸»ú¡¢²þ¹ÔÊ¸»ú¤ÎÉ½¼¨
set listchars=tab:>-,trail:.,extends:> " list É½¼¨¤Î»þ¤ÎÊ¸»ú»ØÄê

set incsearch                          " ¥µ¡¼¥Á¤ò¥¤¥ó¥¯¥ê¥á¥ó¥¿¥ë¥µ¡¼¥Á¤Ë¤¹¤ë
set ignorecase                         " ¸¡º÷¤ÇÂç¾®Ê¸»ú¤ò¶èÊÌ¤·¤Ê¤¤
set smartcase                          " ¸¡º÷Ê¸»ú¤ËÂçÊ¸»ú¤¬´Þ¤Þ¤ì¤ë¾ì¹ç¤ÏÂçÊ¸»ú¾®Ê¸»ú¤ò¶èÊÌ¤¹¤ë
set wrapscan                           " ¸¡º÷¤Ç¥Õ¥¡¥¤¥ë½ªÃ¼¤ËÍè¤¿¤éÀèÆ¬¤ËÌá¤ë
"set hlsearch                          " ¸¡º÷·ë²ÌÊ¸»úÎó¤Î¥Ï¥¤¥é¥¤¥È

set showmatch                          " ÆþÎÏ»þ¤ËÂÐ±þ¤¹¤ë³ç¸Ì¤òÉ½¼¨
"set wildmode=list                     " Êä´°Æ°ºî¤ÎÀßÄê
set wildmenu                           " Êä´°¸õÊä¤òÉ½¼¨
set backspace=indent,eol,start         " ¹ÔÆ¬(indent), ²þ¹Ô(eol), ÁÞÆþ¥â¡¼¥É¤Î³«»Ï°ÌÃÖ(start)¤Ç¤Î¶õÇò¤Îºï½ü¤òµö¤¹
"set encoding=japan                    " vim ¤¬ÄÌ¾ï»ÈÍÑ¤¹¤ëÊ¸»ú¥¨¥ó¥³¡¼¥Ç¥£¥ó¥°
set iminsert=0                         " ÆþÎÏ¥â¡¼¥É¤Ç¤ÎIME¤Î¥Ç¥Õ¥©¥ë¥È¾õÂÖ
set imsearch=0                         " ¸¡º÷¥â¡¼¥É¤Ç¤ÎIME¤Î¥Ç¥Õ¥©¥ë¥È¾õÂÖ
set wrap                               " ¹ÔËö¤ÇÀÞ¤êÊÖ¤¹
set shortmess+=I                       " C-g ¤ÇÉ½¼¨¤µ¤ì¤ë¥Õ¥¡¥¤¥ë¾ðÊó¤Î¥Õ¥©¡¼¥Þ¥Ã¥È
set showcmd                            " ÆþÎÏÃæ¤Î¥³¥Þ¥ó¥É¤ò¥¹¥Æ¡¼¥¿¥¹¤ËÉ½¼¨
set showmode                           " INSERT¤Ê¤É¤Î¥¹¥Æ¡¼¥¿¥¹¤òÉ½¼¨¤¹¤ë
set number                             " ¹ÔÈÖ¹æ¤ÎÉ½¼¨
set notitle                            " ¥¿¥¤¥È¥ë¥Ð¡¼¤ËÊÔ½¸Ãæ¤Î¥Õ¥¡¥¤¥ëÌ¾¤Ê¤É¤òÉ½¼¨
set ruler                              " ¥«¡¼¥½¥ë°ÌÃÖ¾ðÊó¤òÉ½¼¨
set noequalalways                      " ¥¦¥£¥ó¥É¥¦¤òÊ¬³ä¤·¤¿¤êÊÄ¤¸¤¿¤ê¤·¤¿»þ¤Ë¥ê¥µ¥¤¥º¤·¤Ê¤¤
set nobackup                           " ¥Ð¥Ã¥¯¥¢¥Ã¥×¥Õ¥¡¥¤¥ë¤òºî¤é¤Ê¤¤
set shortmess+=I                       " µ¯Æ°»þ¤Î¥á¥Ã¥»¡¼¥¸¤ò¾Ã¤¹
set history=9999
"set cursorline                         " ¥«¡¼¥½¥ë¥é¥¤¥ó

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

syntax on

" ¥«¥é¡¼¥¹¥­¡¼¥à
colorscheme mycolor

let s:hostName = hostname()
let s:user = system("id -un")

" ¥¿¥°
"let s:hostName_s = substitute(system("hostname -s"), "\n$", "", "")
set tags=${HOME}/tmp/tags/cscope.out,${HOME}/tmp/tags/ctags.tag
" ¥Ñ¥¹
set path=.\ ~/\ /home/y/share/pear

" ÆâÂ¢¤Îtermcap¥Õ¥¡¥¤¥ë¤ò»È¤¦
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
" ¥ª¡¼¥È¥³¥Þ¥ó¥É
"
if has("autocmd")
    " ¥×¥é¥°¥¤¥ó¡¢¥Õ¥¡¥¤¥ë¥¿¥¤¥×ÊÌ¥¤¥ó¥Ç¥ó¥È¤òÍ­¸ú
    filetype plugin indent on
    " text¥Õ¥¡¥¤¥ë¤Î¥«¥é¥à¤ò78¤ËÀßÄê
    "autocmd FileType text setlocal textwidth=78
    " ¥«¡¼¥½¥ë°ÌÃÖ¤òµ­²±¤·¤Æ¤ª¤¯
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    "PHP¼­½ñŽÌŽ§Ž²ŽÙ
    "autocmd FileType php set dictionary+=${HOME}/files/misc/dict/php.dict
    "set complete=.,w,k
endif " has("autocmd")


"-----------------------------------------------------------------------------
" FunctionÄêµÁ
"
" GetStatusEx
" ¥¹¥Æ¡¼¥¿¥¹É½¼¨ÍÑfunction
"function! GetStatusEx()
"   let str = '['
"   if has('multi_byte') && &fileencoding != ''
"       let str = str . &fileencoding . ':'
"   endif
"   let str = str . &fileformat . ']'
"   return str
"endfunction

" C-h ¤Ç¥Ï¥¤¥é¥¤¥È¤òToggle
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
"¥¹¥Æ¡¼¥¿¥¹¥é¥¤¥ó¤ËÉ½¼¨¤¹¤ë¹àÌÜ¤Î»ØÄê
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
" ¥Þ¥Ã¥×ÄêµÁ
map [[ ?{w99[{ 
map ][ /}b99]} 
map ]] j0[[%/{ 
map [] k$][%?}

" <F2>-<F4>¤Ïµ¡Ç½¤»¤º
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

" É½¼¨¹ÔÃ±°Ì¤Ç¹Ô°ÜÆ°¤¹¤ë¤è¤¦¤Ë¤¹¤ë
nnoremap j gj
nnoremap k gk
" [home][end]¤òÍ­¸ú¤Ë
nmap [1~ ^
nmap [4~ $
imap [1~ ^
imap [4~ $
"imap a a
"imap i i
"imap o o

" ÁÞÆþ¥â¡¼¥É»þ¤ÎCTRL-B/F¤Ç¤Î¥Ú¡¼¥¸Á÷¤ê¤òÍ­¸ú¤Ë
imap  
imap  

" ¸¡º÷¤·¤¿¸ì¤¬Ãæ±û¤ËÍè¤ë¤è¤¦¤Ë
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz 
nmap g# g#zz

"-----------------------------------------------------------------------------
" Î¬¸ìÊä´°
iabbrev y #ifdef YAHOO_JP
iabbrev l #else
iabbrev e #endif

iabbrev y //YJP  t.yamoto [] -
iabbrev t //t.yamoto [] -
iabbrev s /****************************************
iabbrev e <Space>****************************************/

"-----------------------------------------------------------------------------
" ¥ª¥à¥ËÊä´°
set completeopt=menu
"<C-g>¤ÇomniÊä´°
imap <C-j> <C-x><C-o>

"-----------------------------------------------------------------------------
" º¹Ê¬É½¼¨ÀßÄê
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
" ¥¹¥¯¥ê¥×¥ÈÀßÄê

"--- minibufexpl.vim ---
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplMaxHeight = 1
"nmap <Space> :MBEbn<CR>
" GNU screen like¤Ê¥­¡¼¥Ð¥¤¥ó¥É
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
"MRU¤Î¥Õ¥¡¥¤¥ë¥ê¥¹¥È¤Ëµ­Ï¿¤·¤Æ¤ª¤¯ºÇÂç¥Õ¥¡¥¤¥ë¿ô¤Ç¤¹¡£
let MRU_Max_Entries=30
"»ØÄê¤ÎÀµµ¬É½¸½¤Ë¥Þ¥Ã¥Á¤¹¤ë¥Õ¥¡¥¤¥ëÌ¾¤Î¥Õ¥¡¥¤¥ë¤òMRU¤Î¥Õ¥¡¥¤¥ë¥ê¥¹¥È¤Ëµ­Ï¿¤·¤Ê¤¤¤è¤¦¤Ë¤·¤Þ¤¹¡£
"¥Ç¥Õ¥©¥ë¥È¤Ç¤Ï¡¢Á´¤Æ¤Î¥Õ¥¡¥¤¥ë¤òµ­Ï¿¤·¤Þ¤¹¡£
let MRU_Exclude_Files="^/tmp/.*\|^/var/tmp/.*"
"MRU¤Î¥Õ¥¡¥¤¥ë¥ê¥¹¥È¤Î¥¦¥£¥ó¥É¥¦¤Î¹â¤µ¤ÎÀßÄê¤Ç¤¹¡£
let MRU_Window_Height=8
"MRU¤Î¥Õ¥¡¥¤¥ë¥ê¥¹¥È¤ò³«¤¯»þ¤Ë¡¢¿·µ¬¤Î¥¦¥£¥ó¥É¥¦¤ËÉ½¼¨¤¹¤ë¤«¡¢¥«¥ì¥ó¥È¤Î¥¦¥£¥ó¥É¥¦¤ËÉ½¼¨¤¹¤ë¤«¤ÎÀßÄê¤Ç¤¹¡£
"¥Ç¥Õ¥©¥ë¥È¤Ç¤Ï¡¢¿·µ¬¤Î¥¦¥£¥ó¥É¥¦¤ËÉ½¼¨¤·¤Þ¤¹¡£
let MRU_Use_Current_Window=0
"MRU¤Î¥Õ¥¡¥¤¥ë¥ê¥¹¥È¤«¤é¥Õ¥¡¥¤¥ë¤òEnter¥­¡¼¤ÇÁªÂò¤·¤¿»þ¤Ë¡¢¥Õ¥¡¥¤¥ë¥ê¥¹¥È¤Î¥¦¥£¥ó¥É¥¦¤òÊÄ¤¸¤ë¤«¤É¤¦¤«¤ÎÀßÄê¤Ç¤¹¡£
"¥Ç¥Õ¥©¥ë¥È¤Ç¤Ï¥Õ¥¡¥¤¥ëÁªÂò»þ¤Ë¥¦¥£¥ó¥É¥¦¤òÊÄ¤¸¤Þ¤¹¡£
let MRU_Auto_Close=1


"--- yankring.vim ---
let g:yankring_max_history = 50


"--- omnicppcomplete.vim ---
"set nocp
"set completeopt=menu
"let OmniCpp_NamespaceSearch = 2
""<C-g>¤ÇomniÊä´°
"imap <C-g> <C-x><C-o>


let php_folding=1
"au Syntax php set fdm=syntax

" ³«¤¤¤Æ¤¤¤ë¥Õ¥¡¥¤¥ë¤ÎÊ¸»ú¥³¡¼¥É¤ò»ØÄê¤·¤Æ³«¤­¤Ê¤ª¤¹
" EUC-JP
nmap ,ee :e ++enc=euc-jp<CR>
" SJIS
nmap ,es :e ++enc=cp932<CR>
" JIS
nmap ,ej :e ++enc=iso-2022-jp<CR>
" UTF-8
nmap ,eu :e ++enc=utf-8<CR>
