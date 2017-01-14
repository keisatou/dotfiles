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
  call dein#add('scrooloose/syntastic')

  " Required:
  call dein#end()
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

""
"" NeoBundle https://github.com/Shougo/neobundle.vim
""
"
"if has('vim_starting')
"  if &compatible
"    set nocompatible               " Be iMproved
"  endif
"  set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif
"
"call neobundle#begin(expand('~/.vim/bundle/'))
"  NeoBundleFetch 'Shougo/neobundle.vim'
"
"  " Recommended to install
"  " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
"  NeoBundle 'Shougo/vimproc', {
"        \ 'build' : {
"        \     'mac' : 'make -f make_mac.mak',
"        \     'unix' : 'make -f make_unix.mak',
"        \    },
"        \ }
"
"  NeoBundleLazy "c9s/perlomni.vim", {"autoload": {"filetypes": ['perl']}}
"  NeoBundleLazy "vim-perl/vim-perl", {"autoload": {"filetypes": ['perl']}}
"  NeoBundle 'Shougo/unite.vim'
"  NeoBundleLazy 'suan/vim-instant-markdown', {"autoload": {"filetypes": ['markdown']}} " Instant Markdown previews from VIm!
"  NeoBundle 'fatih/vim-go', {"autoload": {"filetypes": ['go']}}
"  NeoBundleLazy "elixir-lang/vim-elixir", {"autoload": {"filetypes": ['elixir', 'eelixir']}}
"  NeoBundleLazy "scrooloose/syntastic", {"autoload": {"filetypes": ['python', 'python3', 'css', 'rst']}}
"  NeoBundleLazy "pangloss/vim-javascript", {"autoload": {"filetypes": ['javascript']}}
"  NeoBundleLazy 'davidhalter/jedi-vim', {"autoload": {"filetypes": ['python']}, 'build':{'mac': 'git submodule update --init'}}
"  NeoBundleLazy 'jmcantrell/vim-virtualenv', {"autoload": {"filetypes": ['python', "python3", "djangohtml"]}}
"  NeoBundleLazy "lambdalisue/vim-django-support", {"autoload": {"filetypes": ["python", "python3", "djangohtml"]}}
"  NeoBundleLazy 'elzr/vim-json', {"autoload": {"filetypes": ['json']}}
"  " http://hagino3000.blogspot.jp/2014/01/vim-python-pep8-indent.html#Message-complete
"  NeoBundleLazy "hynek/vim-python-pep8-indent", {"autoload": {"filetypes": ["python", "python3", "djangohtml"]}}
"
"call neobundle#end()
"
"" required!
"filetype plugin indent on
"
"" Installation check.
"NeoBundleCheck
"
"" vim-perl/vim-perl
"augroup filetypedetect
"    au BufNewFile,BufRead *.psgi    setf perl
"    au BufNewFile,BufRead *.t       setf perl
"    au BufNewFile,BufRead *.tt      setf tt2html
"    au BufNewFile,BufRead *.tt2     setf tt2html
"    au BufNewFile,BufRead cpanfile  setf perl
"augroup END
"
"
"" Perl
"let s:bundle = neobundle#get("vim-perl")
"function! s:bundle.hooks.on_source(bundle)
"    set tabstop=4
"    set shiftwidth=4
"endfunction
"
"" Python
"autocmd BufNewFile,BufRead *.py set ft=python
"let s:bundle = neobundle#get("jedi-vim")
"function! s:bundle.hooks.on_source(bundle)
"  let g:jedi#popup_select_first = 0
"  let g:jedi#show_call_signatures = 0
"  set tabstop=4
"  set shiftwidth=4
"  setlocal completeopt-=preview
"endfunction
"
"" Elixir
"let s:bundle = neobundle#get("vim-elixir")
"function! s:bundle.hooks.on_source(bundle)
"    set tabstop=2
"    set shiftwidth=2
"endfunction
"
"" Reset my auto group
"augroup MyAutoGroup
"  autocmd!
"augroup END
"
"
"" syntastic
"let s:bundle = neobundle#get("syntastic")
"function! s:bundle.hooks.on_source(bundle)
"  set statusline+=%#warningmsg#
"  set statusline+=%{SyntasticStatuslineFlag()}
"  set statusline+=%*
"
"  let g:syntastic_always_populate_loc_list = 1
"  let g:syntastic_auto_loc_list = 1
"  let g:syntastic_check_on_open = 1
"  let g:syntastic_check_on_wq = 0
"  let g:syntastic_html_tidy_ignore_errors=[
"      \'proprietary attribute "ng-',
"      \'proprietary attribute "pdk-'
"      \]
"  let g:syntastic_javascript_checkers = ['eslint']
"  let g:syntastic_rst_checkers = ['sphinx']
"  let g:syntastic_python_checkers = ['flake8']
"endfunction
"
"" Golang
"autocmd BufNewFile,BufRead *.go set ft=go
"let s:bundle = neobundle#get("vim-go")
"function! s:bundle.hooks.on_source(bundle)
"  let g:go_highlight_functions = 1
"  let g:go_highlight_methods = 1
"  let g:go_highlight_fields = 1
"  let g:go_highlight_types = 1
"  let g:go_highlight_operators = 1
"  let g:go_highlight_build_constraints = 1
"endfunction
"
"
""if ! empty(neobundle#get("vim-indent-guides"))
""  let g:indent_guides_enable_on_vim_startup = 1
""  let g:indent_guides_start_level = 1
""  let g:indent_guides_auto_colors = 0
""  let g:indent_guides_guide_size=1
""  " vim colors: http://cl.pocari.org/images/vim-256color.png
""  autocmd MyAutoGroup VimEnter,Colorscheme * hi IndentGuidesOdd term=bold ctermfg=9 ctermbg=233
""  autocmd MyAutoGroup VimEnter,Colorscheme * hi IndentGuidesEven term=bold ctermfg=9 ctermbg=237
""endif

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
