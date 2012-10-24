set nocompatible        " use Vim defaults

" General Options
" -------------------------------------
set t_Co=256			" enable 256 colors
set mouse=a             " make sure mouse is used in all cases.
set autoread
set backspace=indent,eol,start
set shortmess+=I        " disable the welcome screen
set complete+=k         " enable dictionary completion
set completeopt=longest,menuone
set showcmd
set title
set virtualedit=all
set wildmenu
set wildmode=list:longest,full
set scrolloff=5
set shortmess=atI
set laststatus=2		" always show a status line
set clipboard+=unnamed  " yank and copy to X clipboard
set backspace=2         " full backspacing capabilities
set history=100         " 100 lines of command line history
set ruler               " ruler display in status line
set showmode            " show mode at bottom of screen
set ww=<,>,[,]          " whichwrap -- left/right keys can traverse up/down
set cmdheight=1         " set the command height
set showmatch           " show matching brackets (),{},[]
set number				" show number line
set hidden				" allow unsaved buffers to go in background
set shell=/bin/zsh		" set shell

"  wrap like other editors
" -------------------------------------
 set wrap                " word wrap
 set lbr                 " line break
 set display=lastline    " don't display @ with long paragraphs

" backup settings
" -------------------------------------
set backup              " keep a backup file
set backupdir=/tmp      " backup dir
set directory=~/.vim/swap " swap file directory

" tabs and indenting
" -------------------------------------
set expandtab           " replace tabs with spaces
set tabstop=2           " a n-space tab width
set shiftwidth=2        " allows the use of < and > for VISUAL indenting
"set softtabstop=4       " counts n spaces when DELETE or BCKSPCE is used
set autoindent          " auto indents next new line
set smarttab
set hlsearch            " highlight search results

" searching
" -------------------------------------
set incsearch           " increment search
set ignorecase          " case-insensitive search
set smartcase           " upper-case sensitive search

" syntax highlighting
" -------------------------------------
syntax on               " enable syntax highlighting

" tmux doesn't like neverland :(
if &term !=# "screen-256color"
  colorscheme neverland2
else
  colorscheme inkpot_mod
endif

" Code Folding
"---------------------------------
if has ('folding')
  set foldenable
  set foldmethod=marker
  set foldmarker={{{,}}}
  set foldcolumn=0
endif

" plug-in settings
" -------------------------------------
call pathogen#runtime_append_all_bundles()

filetype on
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

" custom keybindings
" -------------------------------------
let maplocalleader = ","
let mapleader = ","

map Q <Nop>

map <silent><F12> :set hlsearch! hlsearch?<CR>
map <F5> :!make<CR>
map <silent> <LocalLeader>l :TlistToggle<CR>
map + <C-w><
map _ <C-w>> 

noremap k gk
noremap j gj
noremap <silent> V :vsplit<CR> :wincmd l<CR>
noremap <silent> H :split<CR> :wincmd j<CR>

nnoremap Q <C-W>q
nnoremap B :buffers<CR>:buffer<Space>
nnoremap T :TlistAddFiles<Space>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> <C-W>w
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

" not sure what these do
" -------------------------------------
au FileType * setl fo-=cro 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" file type specific settings
" -------------------------------------
autocmd FileType c			  setlocal ts=8 sts=8 sw=8
autocmd FileType make		  setlocal noet
autocmd Filetype python		setlocal sw=4 ts=4
autocmd FileType js			  setlocal ts=4 sw=4 noet

" plugin settings
" -------------------------------------
"let Tlist_Compact_Format = 1
