call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-slash'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_buffers = 1
autocmd VimEnter * AirlineToggleWhitespace

set background=dark
colorscheme default
set termguicolors


set nocompatible
set noswapfile

set showcmd
set showmatch
set ff=unix
set ffs=unix

let mapleader=","
set clipboard+=unnamed

set lazyredraw
set ignorecase
set infercase
set showfulltag
set noerrorbells
set scrolloff=5
set sidescrolloff=2
set mouse=a
"set completeopt=menuone,longest,preview
set completeopt-=preview
syntax on
set joinspaces
set nostartofline   "kursor in einer spalte
set matchtime=2
set ruler
set hid             "Bufferwechsel ohne zu speichern
set switchbuf=useopen   "geöffnete Buffer im enstsprechenden Window laden
set hlsearch
set shortmess=aoOtIWcFs

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

set lcs=tab:▸\ ,trail:·,nbsp:_
set list

autocmd BufRead,BufNewFile *.txt setfiletype text

autocmd FileType make set  noexpandtab shiftwidth=8
autocmd FileType html set  nowrap 
autocmd FileType xml  set  tw=0 encoding=utf-8 fileencoding=utf-8
autocmd FileType php  set  nowrap number omnifunc=phpcomplete#CompletePHP
autocmd FileType module  set  nowrap
autocmd FileType py   set   expandtab tw=80 number 
autocmd FileType python set expandtab tw=80 number 
autocmd FileType text  set  tw=80 
autocmd FileType javascript  set  tw=80 
autocmd FileType ruby  set  tw=80 number


if has("autocmd")
  augroup module
    autocmd BufRead *.module set filetype=php
    autocmd BufRead *.inc set filetype=php
    autocmd BufRead *.install set filetype=php
    autocmd BufRead *.test set filetype=php
  augroup END
endif

set wildmode=list:longest,list:full
set wildchar=<Tab> wildmenu wildmode=full


set nostartofline   "kursor auf einer linie nach unten skrollen
set showmode
set cursorline

set viminfo='500,<50,s10,:20,h,!

map <silent><F4> :CtrlPTag<cr><c-\>w

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


cab W w

nmap <C-j> gqap 

map <Tab> ==

imap <F2> <Esc> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>
map <Leader>r :NERDTreeFind<CR>
"let g:NERDTreeWinSize=30
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let NERDTreeHijackNetrw=1


map <F5> <C-W>w
"map <F5> :sp<CR><C-]>
"
imap <F5> <Esc><C-]>
map <F6> <C-T>
imap <F6> <Esc><C-T>

map <Tab> >gv
vmap <S-Tab> <gv


map ,n :bn<CR>
map ,m :bp<CR>
nnoremap <leader>b :ls<CR>:b<Space>



"zur marke springen
"ü . zur letzten änderung springen
map ü `
map ä ``


map <Leader>w <C-W>w

"-------------- ABBreviaturen --------
iab lorem   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


map <c-l> <c-w>l
map <c-k> <c-w>k
map <c-j> <c-w>j
map <c-h> <c-w>h
imap <c-l> <esc><c-w>li
imap <c-k> <esc><c-w>ki
imap <c-j> <esc><c-w>ji
imap <c-h> <esc><c-w>hi




let g:fzf_height = '40%'
let g:fzf_commits_log_options = '--color --graph --pretty=format:"%C(yellow)%h%Creset -%C(auto)%d%Creset %s %C(bold blue)(%cr) %Cred<%an>%Creset" --abbrev-commit'

nnoremap <c-p> :FZF<cr>
nnoremap <c-i> :Buffers<cr>
nnoremap <c-t> :Lines<cr>
nnoremap <c-g> :Rg!<cr>
nnoremap <silent> <BS> :History:<cr>

command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --pretty --no-heading '.shellescape(<q-args>), 1, <bang>0)

