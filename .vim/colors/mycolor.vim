set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "mycolor"

hi Normal       ctermfg=white       ctermbg=black
hi ErrorMsg     ctermfg=white       ctermbg=darkblue
hi Visual       ctermfg=blue        ctermbg=fg          cterm=reverse
hi VisualNOS    ctermfg=blue        ctermbg=fg          cterm=reverse,underline
hi Todo         ctermfg=red         ctermbg=darkblue
hi Search       ctermfg=white       ctermbg=darkblue    cterm=underline term=underline
hi IncSearch    ctermfg=darkblue    ctermbg=gray

hi SpecialKey   ctermfg=blue        ctermbg=black
hi Directory    ctermfg=cyan
hi Title        ctermfg=magenta     cterm=bold
hi WarningMsg   ctermfg=red
hi WildMenu     ctermfg=white       ctermbg=black   cterm=none  term=none
hi ModeMsg      ctermfg=green
hi MoreMsg      ctermfg=darkgreen   ctermfg=darkgreen
hi Question     ctermfg=green       cterm=none
hi NonText      ctermfg=darkblue

hi StatusLine   ctermfg=white       ctermbg=darkred term=none   cterm=none
hi StatusLineNC ctermfg=black       ctermbg=gray    term=none   cterm=none
hi VertSplit    ctermfg=black       ctermbg=gray    term=none   cterm=none

hi Folded       ctermfg=grey        ctermbg=darkgrey
hi FoldColumn   ctermfg=grey        ctermbg=darkgrey
hi LineNr       ctermfg=grey

"hi DiffAdd     ctermbg=darkblue    term=none   cterm=none
hi DiffChange   ctermbg=brown       cterm=none
"hi DiffDelete  ctermfg=blue        ctermbg=cyan
hi DiffText     ctermbg=darkgrey

hi Cursor       ctermfg=bg          ctermbg=brown
hi lCursor      ctermfg=bg          ctermbg=darkgreen

hi Comment      ctermfg=grey
hi Constant     ctermfg=magenta     cterm=none
hi Special      ctermfg=green       cterm=none
hi Identifier   ctermfg=cyan        cterm=none
hi Statement    ctermfg=white       cterm=none
hi PreProc      ctermfg=red         cterm=none
hi type         ctermfg=green       cterm=none
hi Underlined   cterm=underline     term=underline
hi Ignore       ctermfg=bg


