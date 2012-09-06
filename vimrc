
filetype plugin indent on
" nocompatible gets rid of junk about supporting vi
set nocompatible

" set all tabs to 4 spaces.
set tabstop=4 shiftwidth=4 expandtab softtabstop=4

" show relative line numbering
set relativenumber

" retireves undo changes even after closing file.
set undofile

" solves  backspace issues with vim
set backspace=indent,eol,start

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
set colorcolumn=85

nnoremap<up> <nop>
nnoremap<down> <nop>
nnoremap<left> <nop>
nnoremap<right> <nop>
inoremap<up> <nop>
inoremap<down> <nop>
inoremap<left> <nop>
inoremap<right> <nop>
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

" ack, search text in file from vim, substitute for grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"
set paste
set background=dark
set nolist
" set textwidth=0 " comment this line out to set textwidth to the default 80
set pastetoggle=<F11>


" For using Ctl+C for copying to system buffer in visual mode
" http://vim.wikia.com/wiki/Cut/copy_and_paste_using_visual_selection
map <C-c> "+y<CR>

" For using Ctl+V for pasting to system buffer in visual mode
map <C-v> "+gP<CR>

:colorscheme desert

" diff related coloring
hi DiffAdd   ctermbg=6
hi DiffChange   ctermbg=yellow
hi DiffDelete   ctermbg=1
hi DiffText ctermfg=5 ctermbg=lightgrey
if &diff
    syntax off
endif

"Delete trailing white space, useful for Python ;)
autocmd BufWritePre <buffer> :%s/\s\+$//e

" Pathogen for plugin management http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#infect()

" set tabs
nmap<C-t> :tabnew<CR>
nmap<C-left> :tabprev<CR>
nmap<C-right> :tabnext<CR>
