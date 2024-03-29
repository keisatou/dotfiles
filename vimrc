"
" key mappings
"
map <C-l> :bnext<CR>
map <C-k> :bprevious<CR>
nnoremap j gj
nnoremap k gk
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>

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
autocmd Filetype groovy setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype yaml setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab


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


set ttimeoutlen=0
