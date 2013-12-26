set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'plasticboy/vim-markdown'
Bundle 'akitaonrails/snipmate.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'greyblake/vim-preview'
Bundle 'hallison/vim-ruby-sinatra'
Bundle 'vim-ruby/vim-ruby'
Bundle "mattn/emmet-vim"
Bundle "dandorman/vim-colors"


filetype plugin indent on

color ir_black
set background=dark

" Set to auto read when a file is changed from the outside
set autoread

set cursorline
set cursorcolumn
" set modelines=0

"indent settings
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
" Ignore compiled files
set wildignore=*.o,*~,*.pyc

set scrolloff=3

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

set nowrap
set number

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Makes search act like search in modern browsers
set incsearch   

" Highlight search results
set hlsearch

" When searching try to be smart about cases 
set smartcase

set history=1000
set mouse=a
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom


"statusline setup
set statusline=%f       "tail of the filename

"Git
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

set pastetoggle=<F2>

nmap <Down> gj
nmap <Up> gk

"silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>

"map to bufexplorer
nnoremap <leader>b :BufExplorer<cr>

nnoremap Y y$

let g:ragtag_global_maps = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"SyntasticEnable php
"SyntasticEnable javascript
"SyntasticEnable xhtml
"SyntasticEnable python
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
"let g:syntastic_quiet_warnings=1

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" space / shift-space scroll in normal mode
noremap <S-space> <C-b>
noremap <space> <C-f>

"key mapping for saving file
nmap <C-s> :w<CR>

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

noremap <LEADER>t <ESC>:NERDTreeToggle<CR>

cmap w!! %!sudo tee > /dev/null %

map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost .vimrc source ~/.gvimrc
