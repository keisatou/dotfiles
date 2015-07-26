"
" key mappings
"
map <C-l> :bnext<CR>
map <C-k> :bprevious<CR>
nnoremap j gj
nnoremap k gk
" toggle highlight with C-h
nmap <C-H> :se hls!<CR>

" Omni-completion
inoremap <C-b> <C-x><C-o>


"
" general settings
"
set background=dark
syntax on
set tabstop=2
set shiftwidth=2
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
" NeoBundle https://github.com/Shougo/neobundle.vim
"

if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

NeoBundle "c9s/perlomni.vim"
NeoBundle "vim-perl/vim-perl"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'eagletmt/jsonpp-vim' " pretty-print JSON in a buffer
NeoBundle 'suan/vim-instant-markdown' " Instant Markdown previews from VIm!
NeoBundleLazy 'Blackrush/vim-gocode', {"autoload": {"filetypes": ['go']}} " A Go bundle for Vundle or Pathogen
NeoBundle "elixir-lang/vim-elixir"

filetype plugin indent on     " required!

" Installation check.
NeoBundleCheck

" vim-perl/vim-perl
augroup filetypedetect
    au BufNewFile,BufRead *.psgi    setf perl
    au BufNewFile,BufRead *.t       setf perl
    au BufNewFile,BufRead *.tt      setf tt2html
    au BufNewFile,BufRead *.tt2     setf tt2html
    au BufNewFile,BufRead cpanfile  setf perl
augroup END


"
" File type settings
"
" JSON
autocmd BufNewFile,BufRead *.json set ft=javascript

" Perl
let s:bundle = neobundle#get("vim-perl")
function! s:bundle.hooks.on_source(bundle)
    set tabstop=4
    set shiftwidth=4
endfunction


"
" Templates
"
" Perl
autocmd BufNewFile *.pl 0r ~/.vim/template/perl.txt

" HTML
autocmd BufNewFile *.html 0r ~/.vim/template/bootstrap.html
