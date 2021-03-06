" Vim color file
" Name:       dub.vim
" Maintainer: Ian Leitch <port001@gentoo.org>
" Based on the inkpot theme by Ciaran McCreesh <ciaranm@gentoo.org>.
" This should work in rxvt-unicode (88 colour mode) and xterm (256
" colour mode). It won't work in 8/16 colour terminals.

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "dub"

" map a urxvt cube number to an xterm-256 cube number
fun! <SID>M(a)
    return strpart("0135", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! <SID>X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + <SID>M(l:x) + (6 * <SID>M(l:y)) + (36 * <SID>M(l:z))
        endif
    endif
endfun

exec "hi Normal         cterm=NONE   ctermfg=" . <SID>X("78") . "   ctermbg=" . <SID>X(80) . ""
exec "hi IncSearch      cterm=BOLD   ctermfg=" . <SID>X("80") . "   ctermbg=" . <SID>X(73) . ""
exec "hi Search         cterm=NONE   ctermfg=" . <SID>X("80") . "   ctermbg=" . <SID>X(73) . ""
exec "hi ErrorMsg       cterm=BOLD   ctermfg=" . <SID>X("79") . "   ctermbg=" . <SID>X(64) . ""
exec "hi WarningMsg     cterm=BOLD   ctermfg=" . <SID>X("79") . "   ctermbg=" . <SID>X(68) . ""
exec "hi ModeMsg        cterm=BOLD   ctermfg=" . <SID>X("39") . ""
exec "hi MoreMsg        cterm=BOLD   ctermfg=" . <SID>X("39") . ""
exec "hi Question       cterm=BOLD   ctermfg=" . <SID>X("72") . ""
exec "hi StatusLine     cterm=BOLD   ctermfg=" . <SID>X("84") . "   ctermbg=" . <SID>X(81) . ""
exec "hi StatusLineNC   cterm=NONE   ctermfg=" . <SID>X("84") . "   ctermbg=" . <SID>X(81) . ""
exec "hi VertSplit      cterm=NONE   ctermfg=" . <SID>X("84") . "   ctermbg=" . <SID>X(82) . ""
exec "hi WildMenu       cterm=BOLD   ctermfg=" . <SID>X("72") . "   ctermbg=" . <SID>X(80) . ""

exec "hi DiffText       cterm=NONE   ctermfg=" . <SID>X("80") . "   ctermbg=" . <SID>X(24) . ""
exec "hi DiffChange     cterm=NONE   ctermfg=" . <SID>X("80") . "   ctermbg=" . <SID>X(23) . ""
exec "hi DiffDelete     cterm=NONE   ctermfg=" . <SID>X("09") . "   ctermbg=NONE"
exec "hi DiffAdd        cterm=NONE   ctermfg=" . <SID>X("24") . "   ctermbg=NONE"

exec "hi Cursor         cterm=NONE   ctermfg=" . <SID>X("8") . "    ctermbg=" . <SID>X(39) . ""
exec "hi lCursor        cterm=NONE   ctermfg=" . <SID>X("8") . "    ctermbg=" . <SID>X(39) . ""
exec "hi CursorIM       cterm=NONE   ctermfg=" . <SID>X("8") . "    ctermbg=" . <SID>X(39) . ""

exec "hi Folded         cterm=NONE   ctermfg=" . <SID>X("78") . "   ctermbg=" . <SID>X(08) . ""
exec "hi FoldColumn     cterm=NONE   ctermfg=" . <SID>X("61") . "   ctermbg=" . <SID>X(80) . ""

exec "hi Directory      cterm=NONE   ctermfg=" . <SID>X("29") . "   ctermbg=NONE"
exec "hi LineNr         cterm=NONE   ctermfg=" . <SID>X("38") . "   ctermbg=" . <SID>X(80) . ""
exec "hi NonText        cterm=BOLD   ctermfg=" . <SID>X("38") . "   ctermbg=NONE"
exec "hi SpecialKey     cterm=BOLD   ctermfg=" . <SID>X("68") . "   ctermbg=NONE"
exec "hi Title          cterm=BOLD   ctermfg=" . <SID>X("43") . "   ctermbg=" . <SID>X(80) . ""
exec "hi Visual         cterm=NONE   ctermfg=" . <SID>X("80") . "   ctermbg=" . <SID>X(73) . ""

exec "hi Comment        cterm=NONE   ctermfg=" . <SID>X("43") . "   ctermbg=NONE"
exec "hi Constant       cterm=NONE   ctermfg=" . <SID>X("73") . "   ctermbg=NONE"
exec "hi String         cterm=NONE   ctermfg=" . <SID>X("73") . "   ctermbg=NONE"
exec "hi Error          cterm=NONE   ctermfg=" . <SID>X("79") . "   ctermbg=" . <SID>X(64) . ""
exec "hi Identifier     cterm=BOLD   ctermfg=" . <SID>X("14") . "   ctermbg=NONE"
exec "hi Ignore         cterm=NONE   ctermfg=" . <SID>X("38") . "   ctermbg=NONE"
exec "hi Number         cterm=NONE   ctermfg=" . <SID>X("22") . "   ctermbg=NONE"
exec "hi PreProc        cterm=NONE   ctermfg=" . <SID>X("43") . "   ctermbg=NONE"
exec "hi Special        cterm=NONE   ctermfg=" . <SID>X("39") . "   ctermbg=NONE"
exec "hi Statement      cterm=NONE   ctermfg=" . <SID>X("11") . "   ctermbg=NONE"
exec "hi Todo           cterm=BOLD   ctermfg=" . <SID>X("40") . "   ctermbg=" . <SID>X(81) . ""
exec "hi Type           cterm=NONE   ctermfg=" . <SID>X("61") . "   ctermbg=NONE"
exec "hi Underlined     cterm=BOLD   ctermfg=" . <SID>X("78") . "   ctermbg=NONE"
exec "hi TaglistTagName cterm=BOLD   ctermfg=" . <SID>X("40") . "   ctermbg=NONE"

