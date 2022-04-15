" --- Plugin stuff ---
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ap/vim-css-color'
Plugin 'vifm/vifm.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" --- Non-plugin stuff ---

set encoding=utf-8
set nocompatible
filetype plugin on
syntax on

" Line numbers
set nonumber

" Status line
set laststatus=2

" Highlight doesn't work for some reason
highlight VertSplit guibg=#181818 guifg=#996228
highlight SLBackground guibg=#181818 guifg=#996228
highlight SLFileType guibg=indianred guifg=#663333
highlight SLBufNumber guibg=SeaGreen guifg=#003333
highlight SLLineNumber guibg=#80a0ff guifg=#003366

set statusline=
set statusline=\%#SLBackground#
set statusline+=\ %F
set statusline+=\%= " separator
set statusline+=\ %#SLFileType#
set statusline+=\ FT:\ %Y
set statusline+=\ %#SLBufNumber#
set statusline+=\ BN:\ %n
set statusline+=\ %#SLLineNumber#
set statusline+=\ LN:\ %l

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smartindent

" Explorer
let g:netrw_banner=0
"let g:netrw_brose_split=4
let g:netrw_atv=1
let g:netrw_liststyle=3

let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" also may want to try: koehler, zellner, slate, ron, pablo
colorscheme slate

" Termdebug normal window split
let g:termdebug_wide = 163

" <Leader> key
let mapleader = ","

" Custom functions
function! ToggleLineNumber()
  if v:version > 703
    set norelativenumber
  endif
  set nonumber!
endfunction

map <leader>n :call ToggleLineNumber()<CR>


" --- Programming languages ---

" Python setup
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!clear; python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!clear; python' shellescape(@%, 1)<CR>

" C++ setup
autocmd FileType cpp map <buffer> <F9> :w<CR>:exec '!clear; g++ % && ./a.out'<CR>
autocmd FileType cpp imap <buffer> <F9> :w<CR>:exec '!clear; g++ % && ./a.out'<CR>

" Pascal setup
autocmd FileType pascal map <buffer> <F9> :w<CR>:exec '!clear; fpc %'<CR>
autocmd FileType pascal imap <buffer> <F9> :w<CR>:exec '!clear; fpc %'<CR>

" C# setup
autocmd FileType cs map <buffer> <F9> :w<CR>:exec '!clear; mcs -out:a.out % && ./a.out'<CR>
autocmd FileType cs imap <buffer> <F9> :w<CR>:exec '!clear; mcs -out:a.out %&& ./a.out'<CR>
