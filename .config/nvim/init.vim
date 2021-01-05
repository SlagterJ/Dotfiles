" ==========
" Vim Config
" Jordy Slagter
" ==========

" ===== * PLUGINS * =====
call plug#begin(stdpath('data') . '/plugged')

" EASTHETICS
Plug 'dylanaraps/wal.vim' " Pywal integration

" FILE EXPLORING
Plug 'scrooloose/nerdtree' " File explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Highlighting for file explorer
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file finding

" LINTING, FIXING & COMPLETION
Plug 'dense-analysis/ale' " Linting engine
Plug 'neoclide/coc.nvim' " Intellisense
Plug 'OmniSharp/omnisharp-vim' " C# linting

" LANGUAGE SPECIFIC
Plug 'rust-lang/rust.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim' " Emmet for vim

call plug#end()

" ===== * PLUGIN CONFIGURATION * =====
colorscheme wal " Set the colourscheme to pywal

let g:user_emmet_install_global = 1 " Install Emmet globally
let g:user_emmet_leader_key='<C-Z>' " Get a more comfy keybind

let g:ale_fixers = [ 'prettier' ] " Set formatter
let g:ale_fix_on_save = 1 " Let ale fix when a file is written
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'cs': ['OmniSharp']
      \}

" Bind file explorer
nnoremap <C-n> :NERDTreeToggle<CR>

" ===== * GENERAL CONFIGURATION * =====
set nocompatible " Nvim doesn't pretend to be vi

syntax on " Set syntax to on

set number relativenumber " Show numbers relative on the left side

" Set the tab size to 2 spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Auto close the following
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
