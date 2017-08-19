inore map jk <ESC>    "change mode changing to jk
let mapleader="\<Space>"    "change leader key to space

filetype plugin indent on   "activate detection of filetype, plugin and indentation
set nowrap    "
set tabstop=4	"tabs are 4 spaces
set shiftwidth=4
set expandtab
set smartindent
set autoindent

colorscheme Tomorrow-Night    "theme
syntax on    "highlight syntaxes
set encoding=utf-8    "use utf-8 encoding

set lines=35    "number of rows for default vi
set columns=150    "number of columns for default vi
set colorcolumn=80   "pep-8 spec to ensure column does not go beyond 80
set number    "line number

map <leader>s :source ~/.vimrc<CR>    "map leader + s to source ~/.vimrc
set hidden    "hide the file when new file is opened
set history=100    "recall commands

set hlsearch    "highlight the words found
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>    "use <ESC> to cancel search
nnoremap <Leader><Leader> :e#<CR>    "reopen an old file
set showmatch	"show matching parenthesis

execute pathogen#infect()   "use pathogen

"NERDTree plugin config
let NERDTreeMapActivateNode='<right>'
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTREE
autocmd VimEnter * wincmd p

"Git gutter
let g:gitgutter_sign_column_always=1


