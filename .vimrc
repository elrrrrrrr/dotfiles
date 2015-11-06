" 语法高亮
syntax enable
" 颜色主题
colorscheme monokai
" gbk文件编码支持
set fileencodings=ucs-bom,utf-8,euc-cn,cp936,default,latin1
" 设置不兼容模式
set nocompatible
" 显示行号
set number
" 显示空格为·
set listchars=tab:▸\ ,trail:·
" 设置list
set list
" 设置vundle插件路径
set rtp+=~/.vim/bundle/Vundle.vim
" 展示search结果
set showmatch
" 高亮当前行
set cursorline
" 高亮搜索结果
set hls
" 不生成swap临时文件
set noswapfile
" 设置tab大小
set tabstop=2
" tab缩进
set expandtab
" 设置shift大小
set shiftwidth=2
" 自动同步文件
set ar
" 命令行补全
set wildmenu
" 命令行补全方式
set wildmode=list:longest,full
" 设置缩进方式
set fdm=indent
set foldlevelstart=99
" 自动缩进
set ai
" 智能缩进
set si
" 全屏打开help
set helpheight=99999
" 鼠标拖动
set mouse=a
set ttymouse=xterm2

call vundle#begin()

" 自定义快捷键
map <C-n> :NERDTreeFind<CR>
map <C-m> :NERDTreeToggle<CR>
map <C-d> :JsDoc<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map <leader>de :TernDef<CR>
map <leader>dep :TernDefPreview<CR>
map <leader>des :TernDefSplit<CR>
map <leader>det :TernDefTab<CR>

map <leader>do :TernDoc<CR>
map <leader>dob :TernDocBrowse<CR>

map <leader>tt :TernType<CR>
map <leader>tr :TernRefs<CR>

" 插件列表
Plugin 'jiangmiao/auto-pairs'
Plugin 'asins/vimcdoc'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'lepture/vim-velocity'
Plugin 'scrooloose/syntastic'
Plugin 'mtth/scratch.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" 代码风格配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files = ['[^\.js]$']
let g:syntastic_javascript_checkers = []
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') !=# '' ? ['eslint'] : []

" JSdoc 配置
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_allow_shorthand = 1

" 自动补全配置
let g:tern_show_argument_hints = 'on_hold'
let g:scratch_top = 0
set completeopt=menu,menuone

" YCM 配置
let g:ycm_autoclose_preview_window_after_completion = 0

" CTRL-P 配置
set wildignore+=*/.git/*,*/.svn/*,node_modules/*,
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_custom_ignore = {
  \'dir':  '\v[\/](node_modules|spm_modules|coverage|app/proxy)'
\}

