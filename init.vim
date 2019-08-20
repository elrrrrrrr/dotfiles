lang en_US.UTF-8
" gbk文件编码支持
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
set autoread
" 智能缩进
set si
" 全屏打开help
set helpheight=99999
" 鼠标拖动
set mouse=a
if !has('nvim')
  set ttymouse=xterm2
endif
" 快速滑动
set ttyfast
" 高亮特殊字符
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<
set suffixesadd+=.vue,.js,.jsx
set path=src
" 保留页面底部留白
set scrolloff=7

" 自定义快捷键
noremap ; :
nnoremap L ;
nnoremap H ,
" nmap ; :
let mapleader = " "
cmap <C-a> <home>
cmap <C-h> <S-left>
cmap <C-h> <S-left>

imap jj <Esc>
noremap <leader>n :NERDTreeFind<CR>
noremap <leader>t :NERDTreeToggle<CR>
map <leader>c :NERDTreeCWD<CR>
map <leader>d :JsDoc<CR>
noremap <leader>q :q!<CR>
" map <leader>t :TagbarToggle<CR>

nmap <leader>s :CtrlSF
" nmap <leader>af :FZF
" nmap <leader>f :GFiles<CR>
" nmap <leader>al :Lines<CR>
" nmap <leader>l :BLines<CR>
" nmap <leader>gs :GFiles?<CR>
" nmap <leader>m :Marks<CR>
" nmap <leader>w :Windows<CR>
" nmap <leader>b :Buffers<CR>
nmap <leader>at :ALEToggle<CR>

nmap <silent>U :UndotreeToggle<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

imap <C-y>  <Esc>:redo<CR>

call plug#begin('~/.vim/plugged')

" 插件列表
Plug 'junegunn/vim-peekaboo'
" Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
" Plug 'rizzatti/dash.vim'
Plug 'w0rp/ale'

Plug 'segeljakt/vim-silicon'

Plug 'chemzqm/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Plug 'ncm2/ncm2'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-bufword'
"  Plug 'ncm2/ncm2-path'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-cssomni'
" Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
" Plug 'ncm2/ncm2-html-subscope'
" Plug 'ncm2/ncm2-markdown-subscope'
" Plug 'filipekiss/ncm2-look.vim'

Plug 'Xuyuanp/nerdtree-git-plugin', {'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeCWD']}
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'dyng/ctrlsf.vim'
" Plug 'edkolev/tmuxline.vim'
Plug 'heavenshell/vim-jsdoc',
Plug 'hotoo/pangu.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-xmark', {'do': 'make', 'for': 'markdown'}
Plug 'kannokanno/previm'
Plug 'kshenoy/vim-signature'
Plug 'lepture/vim-velocity'
Plug 'majutsushi/tagbar'
Plug 'othree/csscomplete.vim'
Plug 'panozzaj/vim-autocorrect'
Plug 'posva/vim-vue'
Plug 'rking/ag.vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeCWD']}
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
" Plug 'vim-airline/vim-airline-themes'
Plug '~/code/github/qin-sync'
Plug 'pangloss/vim-javascript'
Plug 'mitermayer/vim-prettier', {
    \ 'do': 'tnpm install',
    \ 'for': ['javascript', 'css', 'less', 'scss', 'markdown', 'json', 'vue', 'jsx'] }

call plug#end()

" autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
" let g:ncm2_look_enabled = 1

"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
" let g:ale_fix_on_save = 1
" let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" let g:ale_open_list = 1


let g:prettier#config#semi = 'false'
let g:prettier#config#bracket_spacing = 'true'

" " seoul256 主题配置
" let g:seoul256_background = 233
" colorscheme seoul256
" highlight EndOfBuffer ctermfg=233 ctermbg=233
colorscheme nord

" snippets 配置
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"
let g:UltiSnipsEditSplit="vertical"

" JSdoc 配置
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_enable_es6 = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" " AIRLINE 主题
" let g:airline_theme = 'bubblegum'
"
" let g:airline_section_b = '%{airline#util#wrap(airline#extensions#branch#get_head(),0)}'


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

" let g:tmuxline_preset = {
"       \'win'    : ['#I', '#W'],
"       \'cwin'    : ['#I', '#W'],
"       \'x'    : '#(ipconfig getifaddr en0)',
"       \'y'    : ['%D'],
"       \'z'    : '%R',
"       \'options' : {
"       \'status-justify': 'left'}
"       \}

" fasd 快速切换路径
command! -nargs=* Z :call Z(<f-args>)
function! Z(...)
  let cmd = 'fasd -d -e printf'
  for arg in a:000
    let cmd = cmd . ' ' . arg
  endfor
  let path = system(cmd)
  if isdirectory(path)
    echo path
    exec 'cd ' . path
  endif
endfunction

nmap <leader>z :Z

vmap <leader>y "*y
nmap <leader>d "_d
vmap <leader>d "_d
set guitablabel=%N/\ %t\ %M

" previm配置
let g:previm_open_cmd = "open"
let g:previm_custom_css_path = '~/.style/mermaid.css'

" vue 高亮
autocmd FileType vue syntax sync fromstart

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:prettier#exec_cmd_async = 1

let g:cm_refresh_default_min_word_len=2
let g:ctrlsf_ignore_dir = ['node_modules', 'source-map', 'test', 'public', 'offline_package', 'coverage', 'dist']

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
" set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>fq  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>p  :<C-u>CocList files<cr>
nnoremap <silent> <space>m  :<C-u>CocList marks<cr>
nnoremap <silent> <space>g  :<C-u>CocList grep<cr>
nnoremap <silent> <space>c  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <space>b  :<C-u>CocList buffers<cr>
nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>r  :<C-u>CocListResume<CR>

