set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'whatyouhide/vim-gotham'
call vundle#end()

syntax on
filetype plugin indent on

set modelines=0
set number
set showcmd
set cursorline
set lazyredraw
set showmatch

set incsearch
set hlsearch
nnoremap <leader><Tab> :nohlsearch<CR>

nnoremap j gj
nnoremap k gk

nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" temporaily block using arrows
nnoremap <up>  <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

map <SPACE> <leader>

set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

map <Tab> <C-W>w
map <Bar> <C-W>v<C-W><Right>
map - <C-W>s<C-W><Down>

set splitright
set splitbelow

colorscheme gotham256
set colorcolumn=80

" trailing white-space highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

" Map jj to escape
:inoremap jj <ESC>

set spell
set spelllang=en
