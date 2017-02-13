" Vim color file
" baycombG v1.1
" http://www.vim.org/scripts/script.php?script_id=1454
" 
" Maintainer:	Shawn Axsom <axs221@gmail.com>
"
"   * Place :colo baycomb in your VimRC/GVimRC file
"
"   - Thanks to Desert and OceanDeep for their color scheme 
"     file layouts
"   - Thanks to Raimon Grau for his feedback

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
		syntax reset
    endif
endif

let g:colors_name="baycomb"

"hi Normal       guifg=#adc0d5 guibg=#121521
"hi Normal       guifg=#bdd5f0 guibg=#151a28 "greyish blue
"hi Normal       guifg=#cdd0f0 guibg=#1a222e "greyish blue2
hi Normal       guifg=#c0caf0 guibg=#0a1623 "greyish blue2
"hi Normal       guifg=#bdd5f0 guibg=#1a222c "light greyish blue
"hi Normal       guifg=#bacaf5 guibg=#06172a
"
"hi NonText      guifg=#382920 guibg=#111a2a
hi NonText      guifg=#382920 guibg=#101525

" syntax highlighting """"""""""""""""""""""""""""""""""""""""

" Variety of comment colors, choose one:
"hi Comment		guifg=#a4a2f7  guibg=#132239    "light purple on darkcyan
"hi Comment		guifg=#441277  guibg=#437789    "magents on cyan
"hi Comment		guifg=#a8a0ff                   "light purple
"hi Comment		guifg=#d8ca4b                   "yellow
hi Comment		guifg=#349d58                   "green
"hi Comment		guifg=darkgrey  guibg=darkblue
"hi Comment		guifg=darkcyan guibg=darkblue

"set comments to grey on non-Windows terminals to make sure
"it is readable
"if &term == "builtin_gui" || &term == "win32"
"	hi Comment		guifg=darkgrey  guibg=darkblue
"else
"	hi Comment		guifg=grey  guibg=darkblue
"endif
""""""""""""""""""""""""""""""""""""""""

hi Title		guifg=#f5f5c0  gui=none
hi Underlined   guifg=#dae5da

hi Statement    guifg=#ff656d  gui=none
hi Type			guifg=#30baf0  gui=none
hi Constant		guifg=#5d6ae5
hi PreProc      guifg=#9570b5
hi Identifier   guifg=#a58065  "or blue 4075aa  
                    """e09a4b
hi Special		guifg=#a58aea
hi Ignore       guifg=grey40
hi Todo			guifg=orangered guibg=yellow2
hi Error        guibg=#b03452
"""""this section borrowed from OceanDeep/Midnight"""""
hi Number guifg=#006bcd
hi Function gui=None guifg=#f0ad80 guibg=bg "or green 50b3b0 
highlight Conditional gui=None guifg=#d52a4a guibg=bg
highlight Repeat gui=None guifg=#e02d5a guibg=bg
"hi Label gui=None guifg=LightGreen guibg=bg
highlight Operator gui=None guifg=#daca65 guibg=bg
highlight Keyword gui=bold guifg=grey guibg=bg
highlight Exception gui=none guifg=#ea5460 guibg=bg
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"end syntax highlighting """""""""""""""""""""""""""""""""""""

" highlight groups
"hi CursorIM
hi Directory	guifg=#bbd0df
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
hi ErrorMsg     guibg=#ff4545

hi Cursor       guibg=#cad5c0 guifg=#05293d

hi FoldColumn	guibg=#131c33 guifg=darkgrey
"hi FoldColumn	guibg=#83a5cd guifg=#70459F
hi LineNr       guibg=#131c33 guifg=#8095d5 
"hi LineNr       guibg=#081c30 guifg=#80a0dA 
hi StatusLine	guibg=#4085bd guifg=#0a150d gui=none
hi StatusLineNC	guibg=#45609a guifg=#302d34 gui=none

hi Search       guibg=#9a9d8d guifg=#3a4520
hi IncSearch	guifg=#caceba guibg=#3a4520 

hi VertSplit	guibg=#525f95 guifg=grey50 gui=none
hi Folded       guibg=#252f5d guifg=#BBDDCC
hi ModeMsg    	guifg=#00AACC
hi MoreMsg      guifg=SeaGreen
hi Question    	guifg=#AABBCC
hi SpecialKey	guifg=#90dcb0
hi Visual       guifg=#008FBF guibg=#33DFEF
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar  guibg=grey30 guifg=tan
"hi Tooltip


" new Vim 7.0 items
hi Pmenu        guibg=#3a6595 guifg=#9aadd5
hi PmenuSel     guibg=#4a85ba guifg=#b0d0f0                    





" color terminal definitions
hi Number ctermfg=blue
highlight Operator ctermfg=yellow
highlight Conditional ctermfg=red
highlight Repeat ctermfg=darkyellow
hi Exception ctermfg=red
hi function ctermfg=darkyellow
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkgrey
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=darkgreen ctermbg=lightgrey
hi Search	cterm=NONE ctermfg=lightgreen ctermbg=darkgrey
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=darkcyan ctermbg=NONE
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse ctermbg=grey
hi StatusLineNC cterm=reverse ctermbg=darkgrey
hi VertSplit	cterm=reverse
hi Title	ctermfg=15
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=black
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1

hi Comment	ctermfg=darkgreen
"hi Comment	ctermfg=blue ctermbg=darkblue
"hi Comment	ctermfg=darkblue ctermbg=darkcyan
"hi Comment	ctermfg=darkblue ctermbg=darkgreen
"hi Comment	ctermfg=yellow

hi Constant	ctermfg=blue
hi Special	ctermfg=magenta
hi Identifier	ctermfg=darkyellow
hi Statement	ctermfg=red
hi PreProc	ctermfg=darkmagenta
hi Type		ctermfg=cyan " ctermbg=darkblue
hi Underlined	cterm=underline ctermfg=7
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1

" new Vim 7.0 items
hi Pmenu        ctermbg=darkblue ctermfg=lightgrey
hi PmenuSel     ctermbg=lightblue ctermfg=white                    

"vim: sw=4


