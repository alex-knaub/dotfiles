execute pathogen#infect()

set nocompatible
set noswapfile

set showcmd
set showmatch
set ff=unix
set ffs=unix
set macmeta

let mapleader=","
"os x clipboard nutzen
set clipboard+=unnamed

"set background=dark
set background=light
"colorscheme jellybeans
set t_Co=256

set grepprg=/opt/local/bin/ack
set grepformat=%f:%l:%m
set incsearch
set hlsearch 
set ignorecase
set infercase
set showfulltag
set noerrorbells 
set scrolloff=5
set sidescrolloff=2
set mouse=a
set completeopt=menuone,longest,preview
syntax on
set joinspaces
set nostartofline   "kursor in einer spalte        
set matchtime=2
set ruler
set hid             "Bufferwechsel ohne zu speichern
set switchbuf=useopen   "geöffnete Buffer im enstsprechenden Window laden

function! CurDir()
	let curdir = substitute(getcwd(), '/Users/ak/', "~/", "g")
	return curdir
endfunction

"---------------Statusbar------------------
set laststatus=2                                "Statuszeile angzeigen
set statusline=
set statusline+=%f\ 							"file name
set statusline+=%h%m%r%w 						"flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, 	"filetype
set statusline+=%{&fileencoding}, 					"encoding
set statusline+=%{&fileformat}] 				"file format
set statusline+=\ %r%{CurDir()}
set statusline+=%= 								"right align
set statusline+=0x%-8B\ 					 	"current char
set statusline+=%-14.(%l,%c%V%)\ %<%P 			"offset

set autowrite         
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

filetype on
filetype indent on
filetype plugin on

"autocmd BufWinLeave * if expand("%") != "" | mkview | endif
"autocmd BufWinEnter * if expand("%") != "" | loadview | endif

set listchars=tab:»\ ,trail:-,eol:↲ 
"set listchars=



autocmd BufRead,BufNewFile *.txt setfiletype text

autocmd FileType make set  noexpandtab shiftwidth=8
autocmd FileType html set  nowrap 
autocmd FileType xml  set  tw=0 encoding=utf-8 fileencoding=utf-8
autocmd FileType php  set  nowrap 
autocmd FileType module  set  nowrap
autocmd FileType py   set   expandtab tw=80 number 
autocmd FileType python set expandtab tw=80 number 
autocmd FileType text  set  tw=80 
autocmd FileType javascript  set  tw=80 
autocmd FileType ruby  set  tw=80 
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"let b:closetag_html_style=1
"au Filetype html,xml,php source ~/.vim/scripts/closetag.vim

"let xml_use_xhtml = 1
let xml_jump_string = "`"

if has("autocmd")
  augroup module
    autocmd BufRead *.module set filetype=php
    autocmd BufRead *.inc set filetype=php
    autocmd BufRead *.install set filetype=php
    autocmd BufRead *.test set filetype=php
  augroup END
endif

set wildmode=list:longest,list:full


set nostartofline   "kursor auf einer linie nach unten skrollen
set showmode
set cursorline

set viminfo='500,<50,s10,:20,h,!

"------------ Tags --------------
set tags=./tags;../../../../



map <BS> bdw
map <UP> gk
map <Down> gj
imap <UP> <C-O>gk
imap <Down> <C-O>gj

"Zeile ohne linebreak am Ende kopieren
map Y y$        
map j gj
map k gk
"map h gh
"map l gl

imap <D-s> <ESC>:w <CR>
map <D-s> <ESC>:w <CR>
noremap <space> <C-d>
noremap <S-space> <C-u>
noremap % v%


noremap Y y$
noremap ^[[D <ESC>
cab W w

nmap <C-j> gqap 

map <Tab> ==

imap <F2> <Esc> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=30

map <F3> :TagbarToggle<RETURN>
imap <F3> <ESC>:TagbarToggle<RETURN>


"map <S-F5> v_ip
map <S-F5> v_ap
" (de)indenting the current paragraph:
"map  <F5> <ip
"vmap <F5> <
"map  <F6> >ip
"vmap <F6> >
"vnoremap <F5> <lt>
"vnoremap <F6> >
"imap <F6> <C-p>

map <F5> <C-W>w
"map <F5> :sp<CR><C-]>
"
imap <F5> <Esc><C-]>
map <F6> <C-T>
imap <F6> <Esc><C-T>

"map <F13> bdelete <CR>
"imap <F13> <Esc> bdelete <CR> 

"Mit Shift markieren
vmap <Left> h
nmap <S-Left> vh
nmap <S-Right> vh

"minibuferxpl
map <D-M-right> <ESC>:MBEbn<RETURN>
map <D-M-left> <ESC>:MBEbp<RETURN>
map <D-w> <ESC>:bd<CR>



map <S-D-right> <ESC>:tabnext<RETURN>
map <S-D-left> <ESC>:tabprev<RETURN>
"map <D-w> <ESC>:tabclose<CR>
"map <D-t> <ESC>:tabnew<CR>
map tn :tabnext<CR>
map tp :tabprev<CR>
map to :tabnew<CR>
map tc :tabclose<CR>
map te :tabedit<CR>
"cab e tabe
map ,bn :bn<CR>
map ,bp :bp<CR>

map <D-right> <END>
map <D-left> <HOME>
imap <D-right> <END>
imap <D-left> <HOME>


map  <D-d> <C-d>
map  <D-u> <C-u>
imap <D-up><ESC> gg
map <D-up> gg
imap <D-down><ESC> G
map <D-down> G
map <M-right> w
map <M-left> b
map <M-up> {
map <M-down> }
map ^[[A {
map ^[[B }
map ö {
map ä }

"zur marke springen
"ü . zur letzten änderung springen
map ü `

map <D-f> /

map ß :call KuschelhackerCommentar()<CR>
vmap ß :call KuschelhackerCommentar()<CR>

map <Leader>w <C-W>w

"-------------- ABBreviaturen --------
"iab (      ()<LEFT>
"iab [      []<LEFT>
"iab "      ""<LEFT>
iab vv      var_dump();<LEFT><LEFT>
iab drin    print "drin\n";
iab LL //----------------------------------------------------------------------------
iab lorem   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

iab defi def initialize <CR>end<C-O>O
iab def def<CR>end<ESC>kA

if has("menu")
  amenu Knaub.vimrc :e ~/.vimrc<CR>
  amenu Knaub.gvimrc :e ~/.gvimrc<CR>
  amenu Knaub.zshrc :e ~/.zshrc<CR>
  amenu Knaub.www :e ~/Sites/www/<CR>
  amenu Knaub.todo :e ~/Documents/todo.txt<CR>
endif

imap <D-s> <ESC>:w <CR>
map <D-s> <ESC>:w <CR>

function! Ack(args)
    let grepprg_bak=&grepprg
    set grepprg=/usr/local/bin/ack\ -H\ --nocolor\ --nogroup
    execute "silent! grep " . a:args
    botright copen
    let &grepprg=grepprg_bak
endfunction

command! -nargs=* -complete=file Ack call Ack(<q-args>)
map <leader>f :Ack<space>

"command! -nargs=* Wrap set wrap linebreak nolist


map <c-l> <c-w>l
map <c-k> <c-w>k
map <c-j> <c-w>j
map <c-h> <c-w>h
imap <c-l> <esc><c-w>li
imap <c-k> <esc><c-w>ki
imap <c-j> <esc><c-w>ji
imap <c-h> <esc><c-w>hi

imap <F3> <C-X>/


"nnoremap d "_d
"vnoremap d "_d
"nnoremap D "_D
"vnoremap D "_D
"nnoremap c "_c
"vnoremap c "_c
"nnoremap C "_C
"vnoremap C "_C


"let g:loaded_matchparen=1

let g:tagbar_ctags_bin='/usr/local/bin/ctags'

let g:ragtag_global_maps = 1



let g:tagbar_type_php =  {
  \'kinds' : [
      \ 'c:classes',
      \ 'd:constant definitions',
      \ 'f:functions',
      \ ]
      \}

" GO
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"


