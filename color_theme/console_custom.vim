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


" color terminal definitions
hi SpecialKey	ctermfg=green
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

hi PreProc	ctermfg=39


hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1

" user made changes, which considered final
hi Normal   ctermfg=255 ctermbg=235
hi Pmenu    ctermbg=1 ctermfg=255
hi Search	ctermfg=0 ctermbg=228
hi LineNr	ctermfg=245
hi Type		ctermfg=48
hi Statement	ctermfg=48
hi Identifier	ctermfg=39
hi ModeMsg	ctermfg=255

hi Constant	ctermfg=51

hi Comment	ctermfg=lightred
hi Special	ctermfg=lightred


"vim: sw=4


