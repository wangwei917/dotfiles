set nocompatible
filetype off

set rtp+=~/dotfiles/bundle/Vundle.vim
"call vundle#begin()
call vundle#begin('~/dotfiles/bundle/')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Bundles
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rvm'
Plugin 'tpope/vim-haml'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hallison/vim-ruby-sinatra'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mattn/emmet-vim'
"Plugin 'dandorman/vim-colors'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rodjek/vim-puppet'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"Plugin 'Rykka/riv.vim'
"Plugin 'Rykka/InstantRst'

" Optional:
Plugin 'honza/vim-snippets'
  
call vundle#end()

filetype plugin indent on
if has('gui_running')
  colorscheme solarized
  set background=dark
else
  set background=light
endif
  

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

set wrap linebreak nolist
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
au VimEnter *  NERDTree
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
let g:syntastic_eruby_ruby_quiet_messages={'regex': 'possibly useless use of a variable in void context'}

let g:riv_global_leader = '<C-E>'

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" space / shift-space scroll in normal mode
noremap <S-space> <C-b>
noremap <space> <C-f>

source $VIMRUNTIME/mswin.vim

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

noremap <LEADER>t <ESC>:NERDTreeToggle<CR>

let g:ctrlp_working_path_mode=0

cmap w!! %!sudo tee > /dev/null %

set tags=./tags

map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost .vimrc source ~/.gvimrc
