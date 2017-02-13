" Vim color file
" Maintainer:   kuschelhacker
" Last Change:  
" URL: http://kuschelhacker.de

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="taqua"

hi Normal  gui=NONE guifg=#303030 guibg=#FFFFFF
hi NonText gui=BOLD guifg=#303030 guibg=#FFFFFF

" Search
hi IncSearch gui=BOLD guifg=#008000 guibg=#CCFF00
hi Search    gui=BOLD guifg=#008000 guibg=#CCFF00

" Messages
hi ErrorMsg   gui=BOLD guifg=#FFFFFF guibg=#FF0000
hi WarningMsg gui=BOLD guifg=#008000 guibg=#CCFF00

" Split area
hi StatusLine   gui=BOLD guifg=#FFFFFF guibg=#0E8ED3
hi StatusLineNC gui=BOLD guifg=#FFFFFF guibg=#0A6799

" Diff
hi DiffText     gui=BOLD guifg=#FF0000 guibg=#FFEAE0
hi DiffChange   gui=BOLD guifg=#303030 guibg=#FFFFFF
hi DiffDelete   gui=NONE guifg=#FFFFFF guibg=#FF0000
hi DiffAdd      gui=NONE guifg=#008000 guibg=#00FF00

" Cursor
hi Cursor       gui=BOLD guifg=#FFFFFF guibg=#000000
hi lCursor      gui=BOLD guifg=#f8f8f8 guibg=#162CF7
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#162CF7

" Fold
hi Folded	  gui=BOLD guifg=#0E8ED3 guibg=#DBF2FF
hi FoldColumn gui=NONE guifg=#0E8ED3 guibg=#DBF2FF

" Other
hi LineNr		 gui=BOLD guifg=#00A0FF guibg=#DBF2FF
hi Directory    gui=BOLD guifg=#0A6799 guibg=#FFFFFF
hi NonText      gui=BOLD guifg=#009999 guibg=#FFFFFF
hi SpecialKey   gui=BOLD guifg=#2020FF guibg=#FFFFFF
hi Title        gui=BOLD guifg=#0000A0 guibg=#FFFFFF
hi Visual       gui=NONE guifg=#404060 guibg=#dddde8

" Syntax group
" purple was #8000FF
hi Comment    gui=NONE guifg=#0E8ED3 guibg=#DBF2FF 
hi Constant	  gui=BOLD guifg=#0384F6 guibg=#DBF2FF
hi Error      gui=BOLD guifg=#FF0000 guibg=#FFFFFF
hi Identifier gui=NONE guifg=#1F89E0 guibg=#FFFFFF 
hi Identifier gui=NONE guifg=#000000 guibg=#FFFFFF 
hi Ignore     gui=NONE guifg=#f8f8f8 guibg=#FFFFFF
hi PreProc	  gui=BOLD guifg=#0BBF20 guibg=#FFFFFF
hi Function    gui=BOLD     guifg=#9004e1
"klammern
hi Special    gui=BOLD guifg=#186d9a guibg=#DBF2FF
"hi Special    gui=BOLD guifg=#0E8ED3 guibg=#DBF2FF
"hi Statement  gui=BOLD guifg=#F36CE5 guibg=#FFFFFF
hi Statement  gui=NONE guifg=#F36CE5 guibg=#FFFFFF
hi Todo       gui=NONE guifg=#FF0070 guibg=#FFE0F4
hi Type		  gui=BOLD guifg=#0971F9 guibg=#FFFFFF
hi Underlined gui=UNDERLINE guifg=#0000ff guibg=NONE

" HTML
hi htmlLink                 gui=UNDERLINE guifg=#0000ff guibg=NONE
hi htmlBold                 gui=BOLD
hi htmlBoldItalic           gui=BOLD,ITALIC
hi htmlBoldUnderline        gui=BOLD,UNDERLINE
hi htmlBoldUnderlineItalic  gui=BOLD,UNDERLINE,ITALIC
hi htmlItalic               gui=ITALIC
hi htmlUnderline            gui=UNDERLINE
hi htmlUnderlineItalic      gui=UNDERLINE,ITALIC

" Scrollbar
hi Scrollbar  gui=BOLD guifg=#00C0FF guibg=#FFFFFF
hi VertSplit  gui=BOLD guifg=#FFFFFF guibg=#0E8ED3
hi Visual	  gui=BOLD guifg=#FFFFFF guibg=#1679F9
