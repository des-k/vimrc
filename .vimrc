" Vundle {
    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()

    " This is the Vundle package, which can be found on GitHub.
    " " For GitHub repos, you specify plugins using the
    " " 'user/repository' format Plugin 'gmarik/Vundle.vim'

    Plugin 'gmarik/Vundle.vim'
    
    Plugin 'Valloric/YouCompleteMe' 
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'wincent/command-t'
    Plugin 'scrooloose/syntastic'
    Plugin 'itchyny/lightline.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'vim-perl/vim-perl'
    Plugin 'tpope/vim-rails'
    Plugin 'scrooloose/nerdtree.git'

    "Plugin 'MarcWeber/vim-addon-mw-utils'
    "Plugin 'tomtom/tlib_vim'
    "Plugin 'bling/vim-airline'
    "Plugin 'scrooloose/nerdcommenter'
    "Plugin 'kien/ctrlp.vim'
    "Plugin 'tyru/open-browser.vim' 
    "Plugin 'mhinz/vim-signify'
    "Plugin 'majutsushi/tagbar'
    "Plugin 'sjl/gundo.vim'
    "Plugin 'plasticboy/vim-markdown'
    "Plugin 'justinmk/vim-sneak'
    "Plugin 'elzr/vim-json'
    "Plugin 'edsono/vim-matchit'
    "Plugin 'ludovicchabant/vim-lawrencium'
    "Plugin 'tpope/vim-sleuth'
    "Plugin 'vim-scripts/a.vim'
    "Plugin 'rstacruz/sparkup'
    "Plugin 'tpope/vim-fugitive'
    "Plugin 'L9'

    call vundle#end()
    filetype plugin indent on
"}


"#vim vonfiguration{

    colorscheme 256-grayvim 

    syntax enable
    filetype on
    filetype plugin indent on

    " Basic {
        set nocompatible

        set history=1000
        set autoread
        set so=7
        set wildmenu
        set wildignore=*.o,*~,*.pyc
        set ruler
        set cmdheight=2
        set hidden
        set backspace=eol,start,indent
        set whichwrap+=<,>,h,l
        set lazyredraw
        set magic
        set mat=2
        set shiftwidth=4
        set softtabstop=4
        set tabstop=4
        set expandtab
        set smarttab
        set ai "Auto indent
        set si
        set nowrap
        set nu
        set clipboard=unnamedplus
        set autoread
        set laststatus=2
    "}

    " Format Status line {
        set statusline=%F\ \ \
        set statusline+=%y
        set statusline+=%m
        set statusline+=%=
        set statusline+=%l,%c\ \ \
        set statusline+=%L\ lines\ \ \
        set statusline+=--%p%%--
        set showcmd
    "} 

    " Search {
        set ignorecase
        set smartcase
        set hlsearch
        set incsearch
        set showmatch
        set noerrorbells
        set novisualbell
    "}

    " Mapping {
        inoremap jj <Esc>
        inoremap kk <Esc>
        inoremap jk <Esc>
        inoremap kj <Esc>
    "}

    " Setting Up Directories {
        set nobackup
        set noswapfile
    "}

    "# Key Mappling {
       
        let mapleader = ","
        let maplocalleader = "\\"

        inoremap <c-[> <nop>
        inoremap <esc> <nop>

        nnoremap Y y$
        nnoremap H 0
        nnoremap L $

        nnoremap <c-h> <c-w>h
        nnoremap <c-j> <c-w>j
        nnoremap <c-k> <c-w>k
        nnoremap <c-l> <c-w>l

        nnoremap <leader>w :w<cr>
        nnoremap <leader>q :q<cr>
        nnoremap <leader>Q :q!<cr>
       
        nnoremap <leader>ev :split $MYVIMRC<cr>
        nnoremap <leader>sv :source $MYVIMRC<cr>:nohlsearch<cr>

        nnoremap <leader>U bveU
        
        nnoremap <leader>co :copen<cr>
        nnoremap <leader>cc :cclose<cr>
        nnoremap <leader>cj :cnext<cr>
        nnoremap <leader>ck :cprevious<cr>

        nnoremap <f5> :nohlsearch<cr>:redraw!<cr>
        
        nnoremap <space> za

        inoremap jk <esc>
        inoremap <leader>D <esc>d^xi
        inoremap <leader>U <esc>bveUea
    "}

    let g:CommandTMaxHeight = 10
    let g:UltiSnipsExpandTrigger = g:mapleader . "<tab>"
    let g:UltiSnipsJumpForwardTrigger = g:mapleader . "<tab>"
    let g:UltiSnipsListSnippets = g:mapleader . "`"
    let g:UltiSnipsEditSplit = "horizontal"

    set statusline+=%#Warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntasti_check_on_open = 1
    

    " YouCompleteMe {
        let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
        let g:ycm_confirm_extra_conf = 0 
        let g:ycm_add_preview_to_completeopt = 1 
        let g:ycm_complete_in_comments = 1 
        let g:ycm_collect_identifiers_from_tags_files = 1 
        let g:ycm_seed_identifiers_with_syntax = 1 
        let g:ycm_autoclose_preview_window_after_insertion = 1 
        let g:ycm_always_populate_location_list = 1 
    "}

"}

