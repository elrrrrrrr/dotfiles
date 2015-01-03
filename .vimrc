syntax on
color monokai 
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set showmatch
set cursorline
set number
set tabstop=2
set expandtab
set shiftwidth=2
set autoread
set helplang=cn
set cc=80
set wildmenu
set wildmode=list:longest,full
set fdm=indent
set ai
set si
call vundle#begin()
map <C-b> :NERDTreeToggle<CR>
map <C-[> gt
map <C-]> gT
map <c-f> :call JsBeautify()<cr>
Plugin 'gmarik/Vundle.vim'
Plugin 'einars/js-beautify'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'SirVer/ultisnips'
Plugin 'jordwalke/JSDocSnippets'
call vundle#end()            " required
filetype plugin indent on    " required
