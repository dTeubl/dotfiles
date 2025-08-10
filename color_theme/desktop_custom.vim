" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file based on teh murphy theme

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "desktop_custom"

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)

hi! link Terminal Normal
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CurSearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link PopupSelected PmenuSel
hi! link Added Constant
hi Normal ctermfg=120 ctermbg=235 cterm=NONE
hi EndOfBuffer ctermfg=21 ctermbg=235 cterm=NONE
hi StatusLine ctermfg=231 ctermbg=16 cterm=NONE
hi StatusLineNC ctermfg=231 ctermbg=237 cterm=NONE
hi VertSplit ctermfg=231 ctermbg=237 cterm=NONE
hi Pmenu ctermfg=231 ctermbg=238 cterm=NONE
hi PmenuSel ctermfg=16 ctermbg=226 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=236 cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=250 cterm=NONE
hi PmenuMatch ctermfg=226 ctermbg=238 cterm=NONE
hi PmenuMatchSel ctermfg=226 ctermbg=226 cterm=NONE
hi TabLineFill ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLine ctermfg=120 ctermbg=238 cterm=NONE
hi TabLineSel ctermfg=231 ctermbg=16 cterm=NONE
hi ToolbarLine ctermfg=NONE ctermbg=236 cterm=NONE
hi ToolbarButton ctermfg=231 ctermbg=238 cterm=bold
hi NonText ctermfg=37 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=37 ctermbg=NONE cterm=NONE
hi QuickFixLine ctermfg=236 ctermbg=37 cterm=NONE
hi Folded ctermfg=37 ctermbg=236 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=238 cterm=NONE
hi CursorLineNr ctermfg=226 ctermbg=NONE cterm=bold
hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE
hi Visual ctermfg=231 ctermbg=22 cterm=NONE
hi VisualNOS ctermfg=231 ctermbg=22 cterm=NONE
hi LineNr ctermfg=226 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=37 ctermbg=NONE cterm=NONE
hi SignColumn ctermfg=37 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=37 ctermbg=NONE cterm=underline
hi Error ctermfg=231 ctermbg=196 cterm=NONE
hi ErrorMsg ctermfg=231 ctermbg=196 cterm=NONE
hi ModeMsg ctermfg=120 ctermbg=NONE cterm=bold
hi WarningMsg ctermfg=214 ctermbg=NONE cterm=bold
hi MoreMsg ctermfg=22 ctermbg=NONE cterm=bold
hi Question ctermfg=51 ctermbg=NONE cterm=bold
hi Todo ctermfg=21 ctermbg=226 cterm=NONE
hi MatchParen ctermfg=236 ctermbg=223 cterm=NONE
hi Search ctermfg=231 ctermbg=21 cterm=NONE
hi IncSearch ctermfg=214 ctermbg=NONE cterm=reverse
hi WildMenu ctermfg=16 ctermbg=226 cterm=NONE
hi Cursor ctermfg=16 ctermbg=120 cterm=NONE
hi lCursor ctermfg=16 ctermbg=196 cterm=NONE
hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
hi SpellCap ctermfg=51 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=223 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=226 ctermbg=NONE cterm=underline
hi Comment ctermfg=214 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=51 ctermbg=NONE cterm=NONE
hi Statement ctermfg=226 ctermbg=NONE cterm=NONE
hi Constant ctermfg=231 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=223 ctermbg=NONE cterm=NONE
hi Type ctermfg=250 ctermbg=NONE cterm=NONE
hi Special ctermfg=201 ctermbg=NONE cterm=NONE
hi Directory ctermfg=51 ctermbg=NONE cterm=NONE
hi Conceal ctermfg=250 ctermbg=NONE cterm=NONE
hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
hi Title ctermfg=201 ctermbg=NONE cterm=bold
hi DiffAdd ctermfg=231 ctermbg=65 cterm=NONE
hi DiffChange ctermfg=231 ctermbg=67 cterm=NONE
hi DiffText ctermfg=16 ctermbg=251 cterm=NONE
hi DiffDelete ctermfg=231 ctermbg=133 cterm=NONE


hi Normal		ctermbg=235  ctermfg=white guibg=Black		 guifg=white
hi Comment		term=bold	   ctermfg=LightRed   guifg=Orange
hi Constant		term=underline ctermfg=LightGreen guifg=White	gui=NONE
hi Identifier	term=underline ctermfg=LightCyan  guifg=#00ffff
hi Ignore					   ctermfg=black	  guifg=bg
hi PreProc		term=underline ctermfg=LightBlue  guifg=Wheat
hi Search		term=reverse					  guifg=white	guibg=Blue
hi Special		term=bold	   ctermfg=LightRed   guifg=magenta
hi Statement	term=bold	   ctermfg=Yellow	  guifg=#ffff00 gui=NONE
hi Type						   ctermfg=LightGreen guifg=grey	gui=none
hi Error		term=reverse   ctermbg=Red	  ctermfg=White guibg=Red  guifg=White
hi Todo			term=standout  ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

" From the source:
"hi Cursor										  guifg=Orchid	guibg=fg
"hi Directory	term=bold	   ctermfg=LightCyan  guifg=Cyan
"hi ErrorMsg		term=standout  ctermbg=DarkRed	  ctermfg=White "guibg=Red guifg=White
"hi IncSearch	term=reverse   cterm=reverse	  gui=reverse
"hi LineNr		term=bold      cterm=bold         "ctermfg=gray					guifg=Yellow
hi CursorLineNr		term=bold      cterm=bold         ctermfg=yellow					guifg=Yellow 
hi ModeMsg		term=bold	   cterm=bold		  gui=bold
hi MoreMsg		term=bold	   ctermfg=LightGreen gui=bold		"guifg=SeaGreen
"hi NonText		term=bold	   ctermfg=Blue		  gui=bold		guifg=Blue
"hi Question		term=standout  ctermfg=LightGreen gui=bold		"guifg=Cyan
"hi SpecialKey	term=bold	   ctermfg=LightBlue  guifg=Cyan
"hi StatusLine	term=reverse,bold cterm=reverse   gui=NONE		"guifg=White guibg=darkblue
"hi StatusLineNC term=reverse   cterm=reverse	  gui=NONE		"guifg=white guibg=#333333
"hi Title		term=bold	   ctermfg=LightMagenta gui=bold	guifg=Pink
"hi WarningMsg	term=standout  ctermfg=LightRed   guifg=Red
hi Visual		term=reverse   cterm=reverse	  gui=NONE		"guifg=white guibg=darkgreen

" popup menu
hi Pmenu ctermbg=black guibg=white ctermfg=white guifg=white term=bold gui=bold
hi PmenuSel ctermbg=gray guibg=white ctermfg=black guifg=white term=bold gui=bold



" Background: dark
" Color: foreground  #87FF87        120            green
" Color: background  #000000        16             black
" Color: color00     #303030        236            black
" Color: color08     #444444        238            darkgrey
" Color: color01     #FFA700        214            darkred
" Color: color09     #FF0000        196            red
" Color: color02     #005F00        22             darkgreen
" Color: color10     #00875F        29             green
" Color: color03     #FFD7AF        223            darkyellow
" Color: color11     #FFFF00        226            yellow
" Color: color04     #00008B        18             darkblue
" Color: color12     #0000FF        21             blue
" Color: color05     #FFAFAF        217            darkmagenta
" Color: color13     #FF00FF        201            magenta
" Color: color06     #00AFAF        37             darkcyan
" Color: color14     #00FFFF        51             cyan
" Color: color07     #BCBCBC        250            grey
" Color: color15     #FFFFFF        231            white
" Color: color16     #262626        235            black
" Color: color17     #3A3A3A        237            darkgrey
" Color: color04t    #87AFFF        111            darkblue
" Color: color12t    #005FFF        27             blue
" Term colors: color00 color01 color02 color03 color04t color05 color06 color07
" Term colors: color08 color09 color10 color11 color12t color13 color14 color15
" Color: bgDiffA     #5F875F        65             darkgreen
" Color: bgDiffC     #5F87AF        67             blue
" Color: bgDiffD     #AF5FAF        133            magenta
" Color: bgDiffT     #C6C6C6        251            grey
" Color: fgDiffW     #FFFFFF        231            white
" Color: fgDiffB     #000000        16             black
" Color: bgDiffC8    #5F87AF        67             darkblue
" Color: bgDiffD8    #AF5FAF        133            darkmagenta
" vim: et ts=8 sw=2 sts=2
