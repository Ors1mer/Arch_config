set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set number
set fileencodings+=koi8-u
set relativenumber
set termguicolors
set spell
set spelllang=
set colorcolumn=80
set wildmode=longest,list,full
set mouse=
filetype plugin on
syntax on

" tabs
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smartindent

" statusline
set laststatus=2
set statusline=
set statusline+=%#background#
set statusline+=\ %f
set statusline+=\ [
set statusline+=%{&fileencoding}
set statusline+=\]
set statusline+=\ [
set statusline+=%{&filetype}
set statusline+=\]
set statusline+=\ %m

set statusline+=%=

set statusline+=\ %l/%L
set statusline+=\ %v/80

highlight ExtraWhitespace ctermbg=0 guibg=#3a3a3a
match ExtraWhitespace /\s\+$/

hi background guibg=#16172d
" #0f111b
" remaps
" split moves
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" leader
let mapleader = ","

function! Setnum()
    set number!
    set norelativenumber
endfunction
function! Setrelnum()
    set number
    set relativenumber!
endfunction

map <leader>n :call Setnum()<CR>
map <leader>m :call Setrelnum()<CR> map <leader>x :tabnew<CR>
map <leader>c :tabc<CR>
map <leader>, :make<CR>

colorscheme default
