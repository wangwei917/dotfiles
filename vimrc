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
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/Haml'
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

set cursorline
set expandtab
set modelines=0

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches

set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set ignorecase
set smartcase
set history=1000
set mouse=a
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set cursorline
set cursorcolumn

"statusline setup
set statusline=%f       "tail of the filename

"Git
set statusline+=[%{GitBranch()}]

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

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"key mapping for saving file
nmap <C-s> :w<CR>

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

noremap <LEADER>t <ESC>:NERDTreeToggle<CR>

"TagList
map <F6> <ESC>:TlistToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1

cmap w!! %!sudo tee > /dev/null %

map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost .vimrc source ~/.gvimrc
