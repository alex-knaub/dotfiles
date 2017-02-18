"colorscheme moria
"colorscheme vividchalk
"colorscheme bclear

"colorscheme molokai
"set background=dark
"set background=light
"colorscheme herald
"colorscheme mayansmoke
"colorscheme ir_black
"colorscheme railscasts
"colorscheme mynuvola
"colorscheme topfunky-light
"colorscheme jellybeans
"colorscheme summerfruit256


imap <D-s> <ESC>:w <CR>
map <D-s> <ESC>:w <CR>

imap <D-w> <ESC>:bd <CR>
map <D-w> <ESC>:bd <CR>

" Window size
set winwidth=85
let g:halfsize = 86
let g:fullsize = 171
set lines=50
let &columns = g:halfsize
"set macmeta


" Font
"set guifont=Monaco:h11.00
"set guifont=Inconsolata:h14
set guifont=Fira\ Code:h15
"set guifont=Consolas:h15
"set guifont=Droid\ Sans\ Mono:h13
"set guifont=AnonymousPro:h14
"set guifont=Monaco:h11            " Font family and font size.

" No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0


if has("gui_macvim")
  macm File.Save key=<nop>
  macm File.Close key=<nop>
  macmenu File.Close key=<nop>
  map <D-w> <ESC>:bd <CR>
endif

