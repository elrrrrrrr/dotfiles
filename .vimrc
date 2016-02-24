"j gbk文件编码支持
set fileencodings=ucs-bom,utf-8,euc-cn,cp936,default,latin1
" 设置不兼容模式
set nocompatible
" 显示行号
set number
" 高亮括号匹配
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
" 快速滑动

" 自定义快捷键
let mapleader = " "

imap jj <Esc>
map <leader>n :NERDTreeFind<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>m :JsDoc<CR>
map <leader>q :q!<CR>

nmap <leader>F :CtrlSF
map U  :UndotreeToggle<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

imap <C-y>  <Esc>:redo<CR>

map <leader>de :TernDef<CR>
map <leader>dep :TernDefPreview<CR>
map <leader>des :TernDefSplit<CR>
map <leader>det :TernDefTab<CR>

map <leader>do :TernDoc<CR>
map <leader>dob :TernDocBrowse<CR>

map <leader>tt :TernType<CR>
map <leader>tr :TernRefs<CR>

call plug#begin('~/.vim/plugged')

" 插件列表
Plug 'tpope/vim-sensible'
Plug 'asins/vimcdoc'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'marijnh/tern_for_vim', {'for': ['javascript']}
Plug 'heavenshell/vim-jsdoc', {'for': ['javascript']}
Plug 'othree/yajs.vim', {'for': ['javascript']}
Plug 'scrooloose/syntastic', {'for': 'javascript'}
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'lepture/vim-velocity'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tomtom/tcomment_vim'
Plug 'dyng/ctrlsf.vim'
Plug 'rking/ag.vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/vim-xmark', {'do': 'make', 'for': 'markdown'}
Plug 'junegunn/vim-peekaboo'
Plug 'kshenoy/vim-signature'
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 't9md/vim-smalls'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'dahu/LearnVim'
Plug 'elrrrrrrr/qin-sync'

call plug#end()

" seoul256 主题配置
let g:seoul256_background = 233
colo seoul256

" snippets 配置
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"
let g:UltiSnipsEditSplit="vertical"

" 代码风格配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files = ['[^\.js]$']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'

" JSdoc 配置
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_enable_es6 = 1


" 自动补全配置
let g:tern_show_argument_hints = 'on_hold'
let g:scratch_top = 0
set completeopt=menu,menuone

" YCM 配置
let g:ycm_autoclose_preview_window_after_completion = 0

" CTRL-P 配置
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.svn/*,node_modules/*,
let g:ctrlp_custom_ignore = {
  \'dir':  '\v[\/](coverage|app/proxy)'
\}

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" AIRLINE 状态栏标记
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.whitespace = 'Ξ'

" UNDOTREE 插件配置
let g:undotree_WindowLayout = 3

" SMALL 插件配置
map s <Plug>(smalls)
