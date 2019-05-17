" https://dougblack.io/words/a-good-vimrc.html
colorscheme badwolf
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Plugins: To setup plugin add lines
" call plug#begin()
"   add Plug lines here.
" call plug#end()
" Run PlugInstall command in editor.
"
" Colour schemes are installed to .vim/colors.
" I use vim plug.

call plug#begin()
Plug 'scrooloose/nerdcommenter'
call plug#end()
