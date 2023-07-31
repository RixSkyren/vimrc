filetype plugin indent on
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"==========================================================
call plug#begin('~/.vim/bundle')
"----------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'sainnhe/sonokai'
"----------------------------------------------------------
call plug#end()
"==========================================================
set background=dark
colorscheme sonokai
set laststatus=2

syntax enable

set number
set expandtab
set tabstop=4
set incsearch
set hlsearch
set guioptions=
set showtabline=0
set wrap
set cursorline
set autoindent
set smarttab
set softtabstop=4
set shiftwidth=4
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf8,cp1251
set mouse=a
set ruler
set showmatch
set noswapfile
set scrolloff=3
set ffs=unix,mac,dos
set modelines=0
set visualbell
set showmode
set showcmd
set hidden
set wildmenu

autocmd vimenter * NERDTree
nmap <F6> :NERDTreeToggle<CR>

map <F2> <Esc>:w<CR>
map <F3> <Esc>:q<CR>
map <F4> <Esc>:vsplit<CR>
map <F5> <Esc>:split<CR>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key

    if(t:curwin == winnr())
        if(match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
            exec "wincmd ".a:key
    endif
endfunction

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0

let c_syntax_for_h=""
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

let g:airline_theme = 'sonokai'
let g:lightline = { 'colorscheme': 'sonokai' }
