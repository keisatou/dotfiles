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

" set <leader>
let mapleader = ","


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
set ambiwidth=double
set clipboard=unnamed,autoselect
set t_Co=256


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
  if &compatible
    set nocompatible               " Be iMproved
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'

  " Recommended to install
  " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
  NeoBundle 'Shougo/vimproc'

  NeoBundleLazy "c9s/perlomni.vim", {"autoload": {"filetypes": ['perl']}}
  NeoBundleLazy "vim-perl/vim-perl", {"autoload": {"filetypes": ['perl']}}
  NeoBundle 'Shougo/unite.vim'
  NeoBundleLazy 'suan/vim-instant-markdown', {"autoload": {"filetypes": ['markdown']}} " Instant Markdown previews from VIm!
  NeoBundleLazy 'Blackrush/vim-gocode', {"autoload": {"filetypes": ['go']}} " A Go bundle for Vundle or Pathogen
  NeoBundleLazy "elixir-lang/vim-elixir", {"autoload": {"filetypes": ['elixir', 'eelixir']}}
  NeoBundleLazy "scrooloose/syntastic", {"autoload": {"filetypes": ['python', 'python3', 'css', 'rst']}}
  NeoBundleLazy "pangloss/vim-javascript", {"autoload": {"filetypes": ['javascript']}}
  NeoBundleLazy 'davidhalter/jedi-vim', {"autoload": {"filetypes": ['python']}, 'build':{'mac': 'git submodule update --init'}}
  NeoBundleLazy 'jmcantrell/vim-virtualenv', {"autoload": {"filetypes": ['python', "python3", "djangohtml"]}}
  NeoBundleLazy "lambdalisue/vim-django-support", {"autoload": {"filetypes": ["python", "python3", "djangohtml"]}}
  NeoBundleLazy 'elzr/vim-json', {"autoload": {"filetypes": ['json']}}

call neobundle#end()

" required!
filetype plugin indent on

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


" Perl
let s:bundle = neobundle#get("vim-perl")
function! s:bundle.hooks.on_source(bundle)
    set tabstop=4
    set shiftwidth=4
endfunction

" Python
autocmd BufNewFile,BufRead *.py set ft=python
let s:bundle = neobundle#get("jedi-vim")
function! s:bundle.hooks.on_source(bundle)
  let g:jedi#popup_select_first = 0
  set tabstop=4
  set shiftwidth=4
  setlocal completeopt-=preview
endfunction

" Elixir
let s:bundle = neobundle#get("vim-elixir")
function! s:bundle.hooks.on_source(bundle)
    set tabstop=2
    set shiftwidth=2
endfunction

" Reset my auto group
augroup MyAutoGroup
  autocmd!
augroup END


" syntastic
let s:bundle = neobundle#get("syntastic")
function! s:bundle.hooks.on_source(bundle)
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_html_tidy_ignore_errors=[
      \'proprietary attribute "ng-',
      \'proprietary attribute "pdk-'
      \]
  let g:syntastic_javascript_checkers = ['eslint']
  let g:syntastic_rst_checkers = ['sphinx']
endfunction


"if ! empty(neobundle#get("vim-indent-guides"))
"  let g:indent_guides_enable_on_vim_startup = 1
"  let g:indent_guides_start_level = 1
"  let g:indent_guides_auto_colors = 0
"  let g:indent_guides_guide_size=1
"  " vim colors: http://cl.pocari.org/images/vim-256color.png
"  autocmd MyAutoGroup VimEnter,Colorscheme * hi IndentGuidesOdd term=bold ctermfg=9 ctermbg=233
"  autocmd MyAutoGroup VimEnter,Colorscheme * hi IndentGuidesEven term=bold ctermfg=9 ctermbg=237
"endif

"
" Templates
"
" Perl
autocmd BufNewFile *.pl 0r ~/.vim/template/perl.txt

" HTML
autocmd BufNewFile *.html 0r ~/.vim/template/bootstrap.html
