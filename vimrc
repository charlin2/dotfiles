" =============================
" BASIC SETTINGS
" =============================

" Use spaces for tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Language specific indentation
filetype plugin indent on " $VIMRUNTIME/indent/

" Indent new line, usually overridden by filetype-plugin-indent
set autoindent


set number

set mouse=c

" Highlight row number where cursor is
set cursorline
set cursorlineopt=number

syntax on

set ignorecase
set smartcase
set termguicolors

set packpath+=~/.vim-plugins

" =============================
" THEME
" =============================
colorscheme catppuccin_frappe
set cmdheight=1

" =============================
" TERMINAL
" =============================

" Open terminal on right
if has('terminal')
    function! RightTerminal(...)
        let l:args = join(a:000, ' ')
        execute 'vertical terminal ' . l:args
        wincmd L
        let l:term_width = float2nr((&columns * 2)/ 5)
        execute 'vertical resize ' . l:term_width
        startinsert
    endfunction

    command! -nargs=* Term call RightTerminal(<f-args>)
    cabbrev t Term
    cabbrev ter Term
    cabbrev term Term
    cabbrev terminal Term
endif

