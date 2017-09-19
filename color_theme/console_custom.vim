" VIM color file, prepared to used in console mode above fbterm
"
" This theme is based on the original desert theme.
"

highlight clear
set background=dark
" set background=light
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "console_custom"


hi Normal	guifg=White guibg=grey20
" color terminal definitions
hi Normal   ctermfg=15
hi SpecialKey	ctermfg=darkgreen
" hi NonText	cterm=bold ctermfg=darkblue
hi NonText	cterm=bold ctermfg=33
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1


" hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi IncSearch	ctermfg=0 ctermbg=250


hi MoreMsg	ctermfg=darkgreen
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
" wildmenu ok
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1

hi Comment	ctermfg=darkcyan
" hi Constant	ctermfg=brown
" hi Constant	ctermfg=204
hi Constant	ctermfg=15
" 

hi Special	ctermfg=160
hi Identifier	ctermfg=27
hi Statement	ctermfg=3
hi PreProc	ctermfg=5


hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1

" user made changes, which considered final
hi Pmenu    ctermbg=1 ctermfg=15
hi Search	ctermfg=0 ctermbg=228
hi LineNr	ctermfg=245
hi Type		ctermfg=46
hi ModeMsg	ctermfg=255

"vim: sw=4


