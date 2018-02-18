syntax on
set number
set nocompatible              " be iMproved, required
set smartindent
set tabstop=4                 " ts
set expandtab
set ignorecase
set shiftwidth=4
set tags=./tags
set t_Co=256
set linespace=100
set backspace=indent,eol,start
set noswapfile
set hlsearch
filetype off                  " required

" Shorcut
nnoremap <F2> :bp<CR>
nnoremap <F3> :bn<CR>
nnoremap <F4> :set rnu!<CR>
nnoremap <F5> :TagbarToggle<CR>
nnoremap <F6> :GundoToggle<CR>
nnoremap <F12> :e ~/.vimrc<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'ajmwagar/vim-deus'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
Plugin 'jeaye/color_coded'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimEnter * NERDTree
autocmd vimEnter * Tagbar
" autocmd vimEnter * Gundo

let g:ctrlp_dont_split = 'NERD'
let g:clang_library_path='/usr/lib/llvm-5.0/lib/libclang-5.0.so.1'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

" execute pathogen#infect()

" ColorScheme
colorscheme deus

" Color Coded
let g:color_coded_enabled = 1
