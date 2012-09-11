
filetype plugin indent on
" nocompatible gets rid of junk about supporting vi
set nocompatible

" set all tabs to 4 spaces.
set tabstop=4 shiftwidth=4 expandtab softtabstop=4

" show relative line numbering
set relativenumber

" retireves undo changes even after closing file.
set undofile

" solves backspace issues with vim
set backspace=2

"for filename completion
set wildmode=longest:full
set wildmenu

" syntax highlighting on.
:syntax on

"for variable name completion  cntrl-p for completion
set complete=i,d,t

set ai  "auto-indent
set si  "smart-indent

" set leader to ",". By default "\"
let mapleader=","

" insert \v before search to use normal regex
nnoremap/ /\v
vnoremap/ /\v

"search preference

" ignore case until any letter is uppercase.
set ignorecase
set smartcase
set gdefault    " make search global by default

set showmatch
set hlsearch
set incsearch

" clear highlight by ,<space>
nnoremap<leader><space> :noh<cr>

" tab to match brackets in visual mode or normal mode.
nnoremap<tab> %
vnoremap<tab> %

set wrap

nnoremap<up> gk
nnoremap<down> gj
nnoremap j gj
nnoremap k gk

inoremap<F1> ESC
vnoremap<F1> ESC
nnoremap<F1> ESC

" save on focus loss
au FocusLost * :wa

" fold html tags
nnoremap <leader>ft Vatzf

" key mapped to ESC
inoremap jj ESC

" sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" vsp using leader
nnoremap<leader>v :vsp<CR>

" ack, search text in file from vim, substitute for grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap<leader>a :Ack

"

" For using Ctl+C for copying to system buffer in visual mode
" http://vim.wikia.com/wiki/Cut/copy_and_paste_using_visual_selection
map <C-c> "+y<CR>

" For using Ctl+V for pasting to system buffer in visual mode
map <C-v> "+gP<CR>

:colorscheme desert

"Delete trailing white space, useful for Python ;)
autocmd BufWritePre <buffer> :%s/\s\+$//e

" Pathogen for plugin management http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#infect()

" set tabs
nmap<C-t> :tabnew<CR>
nmap<C-left> :tabprev<CR>
nmap<C-right> :tabnext<CR>
nnoremap<leader><up> <C-w>k
nnoremap<leader><down> <C-w>j
nnoremap<leader><right> <C-w>l
nnoremap<leader><left> <C-w>h
nnoremap \ <C-w>w
