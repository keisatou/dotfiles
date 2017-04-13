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
" syntax on
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


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('fatih/vim-go', {
        \ 'hook_add': "
        \ let g:go_highlight_functions = 1\n
        \ let g:go_highlight_methods = 1\n
        \ let g:go_highlight_fields = 1\n
        \ let g:go_highlight_types = 1\n
        \ let g:go_highlight_extra_types = 1\n
        \ let g:go_highlight_operators = 1\n
        \ let g:go_highlight_build_constraints = 1\n
        \ let g:go_auto_type_info = 1\n
        \ let g:go_fmt_command = \"goimports\"\n
        \ "})
  " call dein#add('scrooloose/syntastic')
  call dein#add('posva/vim-vue')
  call dein#add('w0rp/ale', {
        \ 'hook_add': "
        \ let g:ale_linters = {
        \ 'html': [],
        \ 'css': ['stylelint'],
        \ 'javascript': ['eslint'],
        \ 'vue': ['eslint']
        \ }\n
        \ let g:ale_linter_aliases = {'vue': 'css'}\n
        \ "})
  call dein#add('mattn/emmet-vim', {
        \ 'hook_add': "
        \ let g:user_emmet_settings = {'vue': {'extends': 'html'}}
        \ "})

  " Required:
  call dein#end()

  " appearance (see: https://github.com/Shougo/dein.vim/blob/master/doc/dein.txt#L1017 )
  colorscheme mycolor

  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"
" Golang
"
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

"
" Vue.js
"
augroup FiletypeGroup
  autocmd!
  au BufNewFile,BufRead *.vue set filetype=vue.javascript.css.html
augroup END

"
"  set whitespaces by filetype
"
autocmd Filetype sh setlocal ts=4 sw=4 sts=4 expandtab


"
" Templates
"
" Perl
autocmd BufNewFile *.pl 0r ~/.vim/template/perl.txt

" HTML
autocmd BufNewFile *.html 0r ~/.vim/template/bootstrap.html



if !empty(glob("~/.vimrc_ext"))
  source ~/.vimrc_ext
endif
