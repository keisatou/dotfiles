"
" key mappings
"
map <C-l> :bnext<CR>
map <C-k> :bprevious<CR>
nnoremap j gj
nnoremap k gk
" toggle highlight with C-h
nmap <C-H> :se hls!<CR>

"
" general settings
"
set background=dark
syntax on
set tabstop=4
set shiftwidth=4
set incsearch
set hidden
set modeline
set modelines=5
" disable cindent when you want to use smartindent.
set nocindent
set smartindent
set expandtab
set autoindent
set list
set listchars=tab:>-,trail:.,extends:>
set ignorecase
set smartcase
set wrapscan
set showmatch
set wildmenu
set backspace=indent,eol,start
set iminsert=0
set imsearch=0
set wrap
set showcmd
set showmode
set number
set notitle
set ruler
set noequalalways
set nobackup
set shortmess+=I
set history=9999

"
" appearance
"
colorscheme mycolor

"
" status line
"
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

"
" Encodings
"
set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932
set enc=utf-8
" EUC-JP
nmap ,ee :e ++enc=euc-jp<CR>
" SJIS
nmap ,es :e ++enc=cp932<CR>
" JIS
nmap ,ej :e ++enc=iso-2022-jp<CR>
" UTF-8
nmap ,eu :e ++enc=utf-8<CR>

"
" Vundle https://github.com/gmarik/vundle
"
set nocompatible
filetype off                    " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required!
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!
